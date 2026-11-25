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

## Releasing

Releases are published on [fhir.ch](https://fhir.ch) with the [Build IG and publish](https://github.com/hl7ch/hl7ch.github.io/actions/workflows/BuildIG_publish.yaml) workflow of [hl7ch/hl7ch.github.io](https://github.com/hl7ch/hl7ch.github.io#publish-an-ig). For CH ELM:

1. In `sushi-config.yaml` set `date` to the release date and `releaseLabel: release`, in `input/pagecontent/changelog.md` replace `xx` in the version heading with the same date, in `publication-request.json` set `version` and `path`.
2. Open a PR, check that the QA report of its branch build (`https://build.fhir.org/ig/ahdis/ch-elm/branches/<branch>/qa.html`) shows no new errors, and merge it to master.
3. Ask someone with write access to hl7ch/hl7ch.github.io to run the workflow with the repository `ahdis/ch-elm`, the IG name `ch-elm`, the branch `master` and the version. It tags the published commit in ahdis/ch-elm with the version, e.g. `1.16.0`.
4. Start the next version: increase `version`, set `releaseLabel: ci-build` and add a changelog heading `### x.y.z 20xx/xx/xx`.
