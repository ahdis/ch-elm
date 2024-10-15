#!/bin/sh

CERT="/Users/oegger/Documents/github/k8s-fhir.ch/configurations/bag-elm/0B357C8314DE78BD49EE37119ACE00FB.cer"
KEY="/Users/oegger/Documents/github/k8s-fhir.ch/configurations/bag-elm/0B357C8314DE78BD49EE37119ACE00FB.key"

VALUESET="ch-elm-results-laboratory-observation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-geni-spec"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-cpe-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-tul-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-lis-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-virus-cult-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-foph-patient-name-representation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-expecting-specimen-specification"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-expecting-organism-specification"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-interpretation-codes-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-interpretation-codes-pos-neg"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-interpretation-codes-pos"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-interpretation-codes-res-sus"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-interpretation-codes-sero"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-interpretation-codes-titer"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-interpretation-codes-avidity"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-camp-diar-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-camp-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-complete-spec"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-leg-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-shi-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-mal-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-mea-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-men-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-diph-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-pneu-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-chol-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-haem-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-sterile-spec"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

CONCEPTMAP="ch-elm-expecting-organism-specification-to-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-expecting-specimen-specification-to-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-to-foph-patient-name-representation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-to-interpretation-code"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CODESYSTEM="ch-elm-foph-business-rules"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

CODESYSTEM="ch-elm-foph-patient-name-representation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

CODESYSTEM="ch-elm-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

CODESYSTEM="ch-elm-interpretation-codes-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

for file in ../input/resources/*.json
do
  pcregrep -Mv '"text":(.|\n)+?\},' "$file" > temp && mv temp "$file"
done