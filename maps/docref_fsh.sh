#!/bin/bash

TARGET="DocumentReference-Publish-$1" 
INPUT="@./../fsh-generated/resources/Bundle-$1.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FBundleToDocRef' \
  --header 'accept: application/fhir+json; charset=utf-8' \
  --header 'content-type: application/fhir+json; charset=utf-8' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$TARGET.json
