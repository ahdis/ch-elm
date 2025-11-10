#!/bin/sh

CERT="/Users/oegger/Documents/github/k8s-fhir.ch/configurations/bag-elm/ABN2BCE80D8FE38E592E0D8AA038302AFDF.cer"
KEY="/Users/oegger/Documents/github/k8s-fhir.ch/configurations/bag-elm/ABN2BCE80D8FE38E592E0D8AA038302AFDF.key"

VALUESET="ch-elm-results-laboratory-observation"
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

VALUESET="ch-elm-results-tub-org"
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

VALUESET="ch-elm-interpretation-codes-avidity"
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

VALUESET="ch-elm-observation-profile-vs"
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

VALUESET="ch-elm-results-bot-spec"
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

VALUESET="ch-elm-results-diph-spec"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-diph-spec"
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

VALUESET="ch-elm-results-sterile-spec"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-tub-spec"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-bot-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-bru-org"
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

VALUESET="ch-elm-results-chol-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-cjd-org"
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

VALUESET="ch-elm-results-ebol-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-ehec-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-ehec-tox-org"
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

VALUESET="ch-elm-results-hiv-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-inf-org"
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

VALUESET="ch-elm-results-lis-org"
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

VALUESET="ch-elm-results-maldi-tof-org"
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

VALUESET="ch-elm-results-mpx-ctng"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-mpx-sash"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-mpx-sashec"
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

VALUESET="ch-elm-results-sal-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-sal-org-complete"
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

VALUESET="ch-elm-results-shi-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-tub-gen-org"
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

VALUESET="ch-elm-results-virus-cult-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-hanta-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-influenza-hxny-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-component-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-laboratory-observation-complete"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-laboratory-observation-geno"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-laboratory-observation-susc"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-component-gene-tb"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-component-antibiotic-tb"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-mpox-org"
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

VALUESET="ch-elm-interpretation-codes-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-lis-spec"
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

CONCEPTMAP="ch-elm-results-to-observation-profile"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-susc-to-component-code"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-susc-to-component-interpretation-code"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-susc-to-component-observation-profile"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-geno-to-component-code"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-geno-to-component-interpretation-code"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CODESYSTEM="ch-elm-foph-code-reserve"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

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

CODESYSTEM="ch-elm-results-component-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

CODESYSTEM="ch-elm-observation-profile-vs"
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