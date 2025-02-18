Profile: ChElmDocument
Parent: ChLabReportDocument
Id: ch-elm-document
Title: "CH ELM Document: Laboratory Report"
Description: "This CH ELM base profile constrains the Bundle resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Document: Laboratory Report"
* obeys ch-elm-leading-code
* identifier ^short = "Persistent, unique identifier for the diagnostic report (UUID)"
* identifier 1..
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value 1..
* identifier.value obeys ch-elm-doc-identifier
* identifier.value ^example.label = "CH ELM"
* identifier.value ^example.valueString = "urn:uuid:d494503a-7bef-4551-853c-f3dced2c518f"

* entry[Composition].resource only ChElmComposition
* entry[DiagnosticReport].resource only ChElmDiagnosticReport
* entry[DiagnosticReport].resource 1..
* entry[Patient].resource only ChElmPatient
* entry[Patient] 1..1
* entry[Observation].resource only ChElmObservationResultsLaboratory
* entry[Observation] 1..1
* entry[Observation].resource 1..
* entry[Specimen].resource only ChElmSpecimen
* entry[Specimen] 1..1
* entry[Specimen].resource 1..
* entry[ServiceRequest].resource only ChElmServiceRequestLaboratoryOrder
* entry[ServiceRequest] 1..1
* entry[ServiceRequest].resource 1..
* entry[PractitionerRole].resource only ChElmPractitionerRoleOrderer
* entry[PractitionerRole] 1..1
* entry[Practitioner].resource only ChElmPractitionerOrderer
* entry[Practitioner] 0..1
* entry[Organization].resource only $ch-core-organization
* entry[Organization] 1..3


Profile: ChElmDocumentStrict
Parent: ChElmDocument
Id: ch-elm-document-strict
Title: "CH ELM Document: Laboratory Report (strict)"
Description: "CH ELM profile for the Bundle resource with a stricter validation mechanism than the base profile via binding strength reinforcement for the leading code element and checking patient name requirements if possible."
* entry[Composition].resource only ChElmCompositionStrict