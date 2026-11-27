#!/bin/bash
# Transforms a QuestionnaireResponse with QrToBundle.map on matchbox and prints the resulting Bundle as JSON.
# Usage: maps/transform.sh maps/qr-example.json
set -euo pipefail
curl --fail --silent --show-error --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+json;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --data "@$1"
