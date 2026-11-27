#!/bin/bash
# Builds the IG in Docker with -rapido. Extra arguments are passed to the publisher.
cd "$(dirname "$0")/.." || exit 1

# Download the publisher only if the release is newer than the local jar (--time-cond).
# --remote-time sets the jar's time to the release time for the next comparison.
jar=$HOME/.fhir/tools/publisher/publisher.jar
mkdir -p "$(dirname "$jar")"
rm -f "$jar.new"
if curl --fail --silent --show-error --location \
  --time-cond "$jar" --remote-time --output "$jar.new" \
  https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar \
  && [ -f "$jar.new" ]; then
  mv "$jar.new" "$jar"
fi

docker run --rm -v "$PWD":/home/publisher/ig -v "$HOME/.fhir":/home/publisher/.fhir \
  hl7fhir/ig-publisher-base _genonce.sh -rapido "$@"
