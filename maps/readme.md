# Examples and maps

The example document Bundles of the IG are FSH instances in `input/fsh/examples/`. Patients, organizations, practitioners and practitioner roles used by several Bundles are in `patient.fsh`, `organization.fsh` and `practitioner.fsh` in the same folder.

## New example

1. Copy the FSH file of a similar example, e.g. `input/fsh/examples/3Doc-CPE.fsh`, and adapt it. Resources that only belong to this Bundle get the id `<bundle id>-<type>`, e.g. `3Doc-CPE-Obs`. fullUrls are `http://test.fhir.ch/r4/<type>/<id>`.
2. Add name/description/exampleCanonical of the example to `sushi-config.yaml`.
3. Add the example in `input/pagecontent/document.md` for the xml and json versions.
4. Run the IG Publisher and check that no errors have been created.
5. Add new warnings to `input/ignoreWarnings.txt`. Copy them from `output/qa.txt` instead of `qa.html`.
6. Add/Update Changelog.

## QrToBundle.map

`QrToBundle.map` is a StructureMap that turns a flat list of fields into a CH ELM document Bundle. Its input is a QuestionnaireResponse with one item per field, the linkIds are the paths of the [logical model](../input/fsh/LogicalModel.fsh) (e.g. `LaboratoryReport.Patient.Surname`), see `qr-example.json`. The map runs on matchbox (`test.ahdis.ch`):

1. Upload the map with the first request in `transform.http`.
2. Transform a QuestionnaireResponse with the second request in `transform.http` or with `transform.sh <file>`, which prints the Bundle as JSON.

Most examples were created this way from FOPH example data and stored as XML in `input/resources`, until they were converted to FSH.

## BundleToDocRef.map

`BundleToDocRef.map` creates the `DocumentReference-Publish-*` examples from a Bundle. `docref_fsh.sh <bundle id>` runs it for a Bundle from `fsh-generated/resources` and writes the result to `input/resources`.
