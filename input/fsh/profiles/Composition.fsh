Profile: ChElmComposition
Parent: ChLabReportComposition
Id: ch-elm-composition
Title: "CH ELM Composition: Laboratory Report"
Description: "This CH ELM base profile constrains the Composition resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Composition: Laboratory Report"
* identifier ^short = "Persistent, unique identifier for the diagnostic report (UUID)"
* identifier 1..
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value 1..
* identifier.value obeys ch-elm-doc-identifier
* identifier.value ^example.label = "CH ELM"
* identifier.value ^example.valueString = "urn:uuid:d494503a-7bef-4551-853c-f3dced2c518f"
* status = #final
* subject 1..
* subject only Reference(ChElmPatient)
* author ..1
* author only Reference(ChElmOrganizationAuthor)
* section 1..1
  * ^slicing.discriminator[2].type = #value
  * ^slicing.discriminator[2].path = "code"
  * ^slicing.rules = #closed
* section contains lab-mst 0..1 and lab-gt 0..1 and lab-sero 0..1
* section[lab-subsections] 0..0
* section[lab-no-subsections] 0..1
* section[lab-no-subsections].title 1..
* section[lab-no-subsections].code 1..
// "Microbiology studies (set)"
* section[lab-no-subsections].code = $loinc#18725-2
* section[lab-no-subsections].entry 1..1
* section[lab-no-subsections].entry only Reference(ChElmObservationResultsLaboratoryMicrobiology)
* section[lab-no-subsections].section ..0
// * section[lab-no-subsections]
//   * ^slicing.discriminator[0].type = #value
//   * ^slicing.discriminator[0].path = "$this.section.code"
//   * ^slicing.rules = #open
// * section[lab-no-subsections] contains lab-mst 0..1 and lab-gt 0..1
// * section[lab-no-subsections][lab-ms].code = $loinc#18725-2 "Microbiology studies (set)"
// * section[lab-no-subsections][lab-mst].code = $loinc#18769-0 "Microbial susceptibility tests Set"
// * section[lab-no-subsections][lab-gt].code = $sct#726528006 "Genotyping (qualifier value)"
* section[lab-mst] 0..1
* section[lab-mst].title 1..
* section[lab-mst].code 1..
// "Microbial susceptibility tests Set"
* section[lab-mst].code = $loinc#18769-0
* section[lab-mst].entry 1..1
* section[lab-mst].entry only Reference(ChElmObservationResultsLaboratorySusceptibilityStrict)
* section[lab-mst].section ..0
* section[lab-gt] 0..1
* section[lab-gt].title 1..
* section[lab-gt].code 1..
// "Genotyping (qualifier value)"
* section[lab-gt].code = $sct#726528006
* section[lab-gt].entry 1..1
* section[lab-gt].entry only Reference(ChElmObservationResultsLaboratoryGenotypingStrict)
* section[lab-gt].section ..0
// Serology studies (set)
* section[lab-sero].code = $loinc#18727-8
* section[lab-sero].entry 1..1
* section[lab-sero].entry only Reference(ChElmObservationResultsLaboratoryHivRecencyStrict)
* section[lab-sero].section ..0

Profile: ChElmCompositionStrict
Parent: ChElmComposition
Id: ch-elm-composition-strict
Title: "CH ELM Composition: Laboratory Report Strict"
Description: "This CH ELM Composition profile constrains that the section codes have corresponding observation value codes"
* section[lab-no-subsections].entry only Reference(ChElmObservationResultsLaboratoryMicrobiologyStrict)
* section[lab-mst].entry only Reference(ChElmObservationResultsLaboratorySusceptibilityStrict)
* section[lab-gt].entry only Reference(ChElmObservationResultsLaboratoryGenotypingStrict)