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

The FOPH maintains the terminology on the ABN environment. `tests/updateterminology.sh` downloads its ValueSets, ConceptMaps and CodeSystems into `input/resources`. It needs curl, jq and the ABN client certificate:

```bash
ELM_CERT=~/.certs/infreport-client.cer ELM_KEY=~/.certs/infreport-client.key tests/updateterminology.sh
```

Files where only the version date changed are skipped, `--all` rewrites them anyway. `--date 2027-01-01` downloads the terminology as it will be on that date, for example when a code's validity ends before a release. The script header explains how to extract the certificate and key from a `.p12` file.
