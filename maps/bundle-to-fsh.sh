#!/bin/bash
# Converts document Bundles (XML or JSON) to input/fsh/examples/<bundle-id>.fsh with GoFSH.
# Patients, Organizations, Practitioners and PractitionerRoles go to input/fsh/examples/shared.fsh, an instance
# already there is reused when its rules match exactly. Other resources get the id <bundle-id>-<role>.
# urn:uuid fullUrls and references are replaced accordingly.
# Usage: maps/bundle-to-fsh.sh input/resources/Bundle-3Doc-CPE.xml [...]
set -euo pipefail

if [ $# -eq 0 ]; then
	echo "Usage: $0 <Bundle file>..." >&2
	exit 1
fi

root="$(cd "$(dirname "$0")/.." && pwd)"
shared_file="$root/input/fsh/examples/shared.fsh"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

mkdir "$tmp/in"
cp "$@" "$tmp/in/"
if ! npx -y gofsh@2.6.1 "$tmp/in" -o "$tmp/out" -t json-and-xml -a "$root/input/fsh/ALIAS.fsh" > "$tmp/gofsh.log" 2>&1; then
	cat "$tmp/gofsh.log" >&2
	exit 1
fi
fsh="$tmp/out/input/fsh"

if [ -f "$fsh/aliases.fsh" ]; then
	missing=$(awk 'NR == FNR { known[$2]; next } /^Alias:/ && !($2 in known)' "$root/input/fsh/ALIAS.fsh" "$fsh/aliases.fsh")
	if [ -n "$missing" ]; then
		printf 'GoFSH created aliases missing from input/fsh/ALIAS.fsh, add them first:\n%s\n' "$missing" >&2
		exit 1
	fi
fi

# shared instances as <name>.type and <name>.body, new ones are marked with <name>.new
mkdir "$tmp/shared"
if [ -f "$shared_file" ]; then
	awk -v dir="$tmp/shared" '
		/^Instance: / { if (body) close(body); name = $2; body = dir "/" name ".body"; printf "" > body; next }
		/^InstanceOf: / { print $2 > (dir "/" name ".type"); close(dir "/" name ".type"); next }
		/^(Usage|Title|Description): / || /^\/\// || /^[[:space:]]*$/ { next }
		name != "" { print > body }' "$shared_file"
fi
grep -rh '^Instance:' "$root/input/fsh" | awk '{ print $2 }' > "$tmp/taken"

file_of() { grep -lxF "Instance: $1" "$fsh"/instances/*.fsh; }
header() { sed -n "s/^$2: //p" "$(file_of "$1")"; }
reference() { sed -n "s/^\* $2 = Reference(urn:uuid:\(.*\))$/\1/p" "$(file_of "$1")" | head -1; }
text() { sed -n -E "s/^\* $2(\[0\])? = \"(.*)\"$/\2/p" "$(file_of "$1")" | head -1; }
abbreviation() {
	case "$1" in
		Composition) echo Comp ;;
		Patient) echo Pat ;;
		Observation) echo Obs ;;
		Specimen) echo Spec ;;
		ServiceRequest) echo SR ;;
		DiagnosticReport) echo DR ;;
		PractitionerRole) echo PR ;;
		Practitioner) echo Pract ;;
		Organization) echo Org ;;
		*) echo "$1" ;;
	esac
}
# "Praxis Dr. Hauser" -> PraxisDrHauser
camel() {
	{ iconv -f UTF-8 -t ASCII//TRANSLIT 2>/dev/null || true; } | awk '
		{ for (i = 1; i <= NF; i++) { w = $i; gsub(/[^A-Za-z0-9]/, "", w); s = s toupper(substr(w, 1, 1)) substr(w, 2) } }
		END { print substr(s, 1, 40) }'
}

# reads "<old name> <new name> <type> <uuid>" lines, then renames instances, entries, fullUrls and references in a file.
# The uuid comes from the fullUrl, GoFSH appends a suffix to the instance name when several Bundles reuse the same uuid.
rename='NR == FNR { name[$1] = $2; type[$1] = $3; uuid[$1] = $4; next }
	{
		for (old in name) {
			gsub("fullUrl = \"urn:uuid:" uuid[old] "\"", "fullUrl = \"http://test.fhir.ch/r4/" type[old] "/" name[old] "\"")
			gsub("Reference\\(urn:uuid:" uuid[old] "\\)", "Reference(" name[old] ")")
		}
	}
	/^\* id = "/ { next }
	/^Instance: / && ($2 in name) { $0 = "Instance: " name[$2] }
	/\.resource = / && ($NF in name) { sub(/[^ ]+$/, name[$NF]) }
	{ print }'

body_of() {
	echo "$names" | awk "$rename" - "$(file_of "$1")" | grep -v -E '^(Instance|InstanceOf|Usage): |^[[:space:]]*$' || true
}

# prints the shared instance name for entry $1 of type $2, nothing if it references resources of this Bundle
share() {
	local entry=$1 type=$2 body label name n
	body=$(body_of "$entry")
	case "$body" in *"Reference($bundle-"*) return 0 ;; esac
	for f in "$tmp"/shared/*.type; do
		[ -e "$f" ] || continue
		name=$(basename "$f" .type)
		if [ "$(cat "$f")" = "$type" ] && [ "$(cat "$tmp/shared/$name.body")" = "$body" ]; then
			echo "$name"
			return
		fi
	done
	case "$type" in
		Patient | Practitioner) label=$(echo "$(text "$entry" 'name\.given') $(text "$entry" 'name\.family')" | camel) ;;
		Organization) label=$(text "$entry" name | camel) ;;
		PractitionerRole) label=$(echo "$body" | sed -n 's/^\* practitioner = Reference(Pract-\(.*\))$/\1/p') ;;
	esac
	label="$(abbreviation "$type")-${label:-$bundle}"
	name=$label
	n=2
	while grep -qxF "$name" "$tmp/taken"; do
		name="$label-$n"
		n=$((n + 1))
	done
	echo "$name" >> "$tmp/taken"
	echo "$type" > "$tmp/shared/$name.type"
	echo "$body" > "$tmp/shared/$name.body"
	touch "$tmp/shared/$name.new"
	echo "$name"
}

failed=0
for bundle_file in $(grep -lx 'InstanceOf: Bundle' "$fsh"/instances/*.fsh); do
	bundle=$(sed -n 's/^Instance: //p' "$bundle_file")
	entries=$(sed -n 's/^\* entry\[[^]]*\]\.resource = //p' "$bundle_file")
	uuids=$(awk '/\.fullUrl = "urn:uuid:/ { u = $NF; gsub(/"|urn:uuid:/, "", u) } /\.resource = / { print $NF, u }' "$bundle_file")
	uuid_of() { echo "$uuids" | awk -v entry="$1" '$1 == entry { print $2 }'; }

	author=""
	orderer=""
	for entry in $entries; do
		case "$(header "$entry" InstanceOf)" in
			Composition) author=$(reference "$entry" author) ;;
			PractitionerRole) orderer=$(reference "$entry" organization) ;;
		esac
	done

	# "<old name> <new name> <type> <uuid>" per entry, roles occurring more than once get a number
	names=$(for entry in $entries; do
		type=$(header "$entry" InstanceOf)
		uuid=$(uuid_of "$entry")
		role=$(abbreviation "$type")
		if [ "$type" = Organization ] && [ "$uuid" = "$author" ]; then
			role=AuthorOrg
		elif [ "$type" = Organization ] && [ "$uuid" = "$orderer" ]; then
			role=OrdererOrg
		fi
		echo "$entry $type $role $uuid"
	done | awk -v bundle="$bundle" '
		{ old[NR] = $1; type[NR] = $2; role[NR] = $3; uuid[NR] = $4; count[$3]++ }
		END {
			for (i = 1; i <= NR; i++)
				print old[i], bundle "-" role[i] (count[role[i]] > 1 ? ++seen[role[i]] : ""), type[i], uuid[i]
		}')

	# PractitionerRoles last, so their references already point to shared instances.
	# A resource that occurs twice in the same Bundle keeps its own instance for the second entry.
	used=" "
	for pass in "Patient Organization Practitioner" PractitionerRole; do
		for entry in $entries; do
			type=$(header "$entry" InstanceOf)
			case " $pass " in *" $type "*) ;; *) continue ;; esac
			name=$(share "$entry" "$type")
			[ -n "$name" ] || continue
			case "$used" in *" $name "*) continue ;; esac
			used="$used$name "
			names=$(echo "$names" | awk -v old="$entry" -v new="$name" '$1 == old { $2 = new } { print }')
		done
	done

	too_long=$(echo "$names" | awk 'length($2) > 64 { print $2 }')
	if [ -n "$too_long" ]; then
		printf 'skipped %s, ids longer than 64 characters:\n%s\n' "$bundle" "$too_long" >&2
		failed=1
		continue
	fi

	target="$root/input/fsh/examples/$bundle.fsh"
	{
		echo "$names" | awk "$rename" - "$bundle_file"
		echo "$names" | while read -r old new type _; do
			if [ ! -e "$tmp/shared/$new.type" ]; then
				echo
				echo "$names" | awk "$rename" - "$(file_of "$old")"
			fi
		done
	} > "$target"
	if grep -n -E 'fullUrl = "urn:uuid:|Reference\(urn:uuid:' "$target" >&2; then
		echo "unresolved urn:uuid references in ${target#"$root"/}" >&2
		failed=1
	fi
	echo "wrote ${target#"$root"/}"
done

for f in "$tmp"/shared/*.new; do
	[ -e "$f" ] || continue
	name=$(basename "$f" .new)
	[ -f "$shared_file" ] || echo "// Patients, organizations and practitioners referenced by the example Bundles" > "$shared_file"
	printf '\nInstance: %s\nInstanceOf: %s\nUsage: #inline\n%s\n' "$name" "$(cat "$tmp/shared/$name.type")" "$(cat "$tmp/shared/$name.body")" >> "$shared_file"
	echo "added $name to ${shared_file#"$root"/}"
done
exit $failed
