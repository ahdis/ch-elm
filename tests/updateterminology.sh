#!/usr/bin/env bash
#
# Downloads the ValueSets, ConceptMaps and CodeSystems from the FOPH server into
# input/resources, without narrative. Starts from the resources the server's
# search lists and follows every CH ELM ValueSet, ConceptMap and CodeSystem URL
# they contain, because the search leaves some out. Each resource is read
# individually because the search only returns summaries. Empty ValueSets are
# skipped and concepts referring to them are removed from the other resources.
# New resources are added and local files are never deleted. Existing files are
# only overwritten if more than the version changed, because the server sets the
# version to the date of the download. Pass --all to overwrite them anyway.
#
# Pass --date YYYY-MM-DD to download the terminology as it will be on that date,
# for example to leave out codes whose validity ends before it. ValueSets and
# ConceptMaps are then read through their canonical URL with that date as
# version. Resources the server does not resolve by canonical URL (most
# CodeSystems and a few others) are read as of today, with a warning.
#
# Usage: ELM_CERT=/path/to/client.cer ELM_KEY=/path/to/client.key tests/updateterminology.sh [--all] [--date YYYY-MM-DD]
# Requires curl and jq.
#
# To extract the certificate and key from a .p12 file (OpenSSL 3; omit -legacy
# with macOS's /usr/bin/openssl):
#   openssl pkcs12 -legacy -in client.p12 -clcerts -nokeys -out client.cer
#   openssl pkcs12 -legacy -in client.p12 -nocerts -nodes -out client.key
# The key is written unencrypted, so keep both files outside the repository.

set -euo pipefail

BASE_URL="https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir"
TYPES="ValueSet ConceptMap CodeSystem"

usage() {
  echo "usage: $0 [--all] [--date YYYY-MM-DD]" >&2
  exit 1
}

ALL=false
DATE=""
while [ $# -gt 0 ]; do
  case "$1" in
    --all) ALL=true ;;
    --date)
      [ $# -ge 2 ] || usage
      DATE="$2"
      shift
      ;;
    *) usage ;;
  esac
  shift
done
if [ -n "$DATE" ] && ! [[ "$DATE" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
  usage
fi

: "${ELM_CERT:?must point to the client certificate}"
: "${ELM_KEY:?must point to the client key}"
for file in "$ELM_CERT" "$ELM_KEY"; do
  [ -r "$file" ] || { echo "error: cannot read $file" >&2; exit 1; }
done

RESOURCES="$(cd "$(dirname "$0")/../input/resources" && pwd)"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT
mkdir "$WORK/out"
: > "$WORK/ids"
: > "$WORK/done"
: > "$WORK/empty"

# fetch URL OUTPUT [CURL ARGS...] prints the HTTP status.
fetch() {
  local url="$1" output="$2"
  shift 2
  curl --silent --show-error \
    --cert "$ELM_CERT" --key "$ELM_KEY" \
    --header 'accept: application/fhir+json' \
    --output "$output" --write-out '%{http_code}' "$@" "$url"
}

# Reads $type/$id into $2, as of $DATE if set and supported by the server.
read_resource() {
  local type="${1%%/*}" id="${1#*/}" status
  if [ -n "$DATE" ]; then
    local canonical="http://fhir.ch/ig/ch-elm/$type/$id"
    status="$(fetch "$BASE_URL/$type" "$WORK/dated.json" --get --data-urlencode "url=$canonical|$DATE")"
    if [ "$status" != 200 ]; then
      echo "$status"
      return
    fi
    if jq -e --arg url "$canonical" 'any(.entry[]?; .resource.url == $url)' "$WORK/dated.json" > /dev/null; then
      jq --arg url "$canonical" 'first(.entry[] | select(.resource.url == $url)) | .resource' "$WORK/dated.json" > "$2"
      echo 200
      return
    fi
    echo "warning: $type/$id not available for $DATE, read as of today" >&2
  fi
  fetch "$BASE_URL/$type/$id" "$2"
}

for type in $TYPES; do
  url="$BASE_URL/$type?_count=100"
  page=0
  count=0
  total=""
  while [ -n "$url" ]; do
    page=$((page + 1))
    bundle="$WORK/$type-$page.json"
    status="$(fetch "$url" "$bundle")"
    if [ "$status" != 200 ] || [ "$(jq -r .resourceType "$bundle")" != Bundle ]; then
      echo "error: $url returned HTTP $status, expected a Bundle" >&2
      exit 1
    fi
    [ "$page" -eq 1 ] && total="$(jq -r '.total // empty' "$bundle")"

    while IFS= read -r id; do
      count=$((count + 1))
      echo "$type/$id" >> "$WORK/ids"
    done < <(jq -r --arg type "$type" '
      .entry[]?
      | select((.search.mode // "match") == "match")
      | .resource
      | select(.resourceType == $type)
      | .id' "$bundle")

    url="$(jq -r '.link[]? | select(.relation == "next") | .url' "$bundle")"
  done

  echo "$type: $count listed by search"
  if [ -n "$total" ] && [ "$total" != "$count" ]; then
    echo "warning: server reported $total ${type}s but listed $count" >&2
  fi
done

while true; do
  sort -u -o "$WORK/ids" "$WORK/ids"
  comm -23 "$WORK/ids" "$WORK/done" > "$WORK/todo"
  [ -s "$WORK/todo" ] || break

  while IFS=/ read -r type id; do
    if ! [[ "$id" =~ ^[A-Za-z0-9.-]{1,64}$ ]]; then
      echo "error: invalid $type id '$id'" >&2
      exit 1
    fi
    resource="$WORK/resource.json"
    status="$(read_resource "$type/$id" "$resource")"
    case "$status" in
      200) ;;
      404 | 410)
        echo "not on server: $type/$id"
        continue
        ;;
      *)
        echo "error: $type/$id returned HTTP $status" >&2
        exit 1
        ;;
    esac
    if [ "$(jq -r '.resourceType + "/" + .id' "$resource")" != "$type/$id" ]; then
      echo "error: reading $type/$id returned a different resource" >&2
      exit 1
    fi
    if jq -e '.resourceType == "ValueSet"
        and ([.compose.include[]?] | length) == 0
        and ([.expansion.contains[]?] | length) == 0' "$resource" > /dev/null; then
      echo "empty, skipped: $type/$id"
      jq -r .url "$resource" >> "$WORK/empty"
      continue
    fi

    jq 'del(.text)' "$resource" > "$WORK/out/$type-$id.json"
    jq -r '
      .. | strings
      | capture("^http://fhir\\.ch/ig/ch-elm/(?<type>ValueSet|ConceptMap|CodeSystem)/(?<id>[A-Za-z0-9.-]{1,64})$")
      | .type + "/" + .id' "$resource" >> "$WORK/ids"
  done < "$WORK/todo"

  cat "$WORK/todo" >> "$WORK/done"
  sort -u -o "$WORK/done" "$WORK/done"
done

if [ -z "$(ls "$WORK/out")" ]; then
  echo "error: server returned no resources" >&2
  exit 1
fi

while IFS= read -r url; do
  for file in "$WORK"/out/*.json; do
    jq --arg url "$url" 'del(.. | objects | select(.code == $url))' "$file" > "$WORK/stripped.json"
    if ! cmp -s "$file" "$WORK/stripped.json"; then
      echo "removed $url from $(basename "$file")"
      mv "$WORK/stripped.json" "$file"
    fi
  done
done < "$WORK/empty"

for type in $TYPES; do
  for file in "$RESOURCES/$type"-*.json; do
    [ -e "$file" ] || continue
    name="$(basename "$file")"
    [ -e "$WORK/out/$name" ] || echo "kept, not from server: $name"
  done
done

# Written like the server's responses: CRLF line endings, no final newline.
for file in "$WORK"/out/*.json; do
  name="$(basename "$file")"
  if [ ! -e "$RESOURCES/$name" ]; then
    echo "new: $name"
  elif [ "$ALL" = false ] &&
      [ "$(jq -S 'del(.version)' "$file")" = "$(jq -S 'del(.version)' "$RESOURCES/$name")" ]; then
    continue
  else
    echo "updated: $name"
  fi
  awk 'NR > 1 { printf "\r\n" } { printf "%s", $0 }' "$file" > "$RESOURCES/$name"
done
