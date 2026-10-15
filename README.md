# CH ELM (R4)
FHIR® Implementation Guide for the Electronic Laboratory Report of the Swiss Federal Office of Public Health (FOPH).

* [Current Stable Version](https://fhir.ch/ig/ch-elm/index.html)
* [CI Build](https://build.fhir.org/ig/ahdis/ch-elm/branches/master/index.html)

## Building the IG

Requires Java 17 or newer, Jekyll and SUSHI (`npm install -g fsh-sushi`):

```bash
npm run update:publisher
npm run build:ig
```

Using Docker:

```bash
docker run --rm -v "$PWD":/home/publisher/ig -v "$HOME/.fhir":/home/publisher/.fhir hl7fhir/ig-publisher-base bash -c "_updatePublisher.sh -y && _genonce.sh"
```

The pages are written to `output/en/`, the QA report to `output/qa.html`.

## Terminology handling

Terminology is handled by the FOPH directly on the ABN environment.

To update the current ValueSets and CodeSystem in the FHIR Implementation Guide there is a script in tests/updateterminology.sh which will
call the ABN environment API and copy the resources into the input/resources folder. 
