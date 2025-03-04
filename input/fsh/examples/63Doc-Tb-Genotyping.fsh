Instance: 63Doc-Tb-Genotyping
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "63Doc - Tuberculosis Genotyping"
Description: "Example for a CH ELM Document: Laboratory Report"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0ed5f82b-06e9-427b-8546-e841a33d49e8"
* type = #document
* timestamp = "2024-09-10T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/63Comp-Genotyping"
* entry[=].resource = 63Comp-Genotyping
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/63DR-Genotyping"
* entry[=].resource = 63DR-Genotyping
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-001"
* entry[=].resource = Pat-001
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/63Obs-Genotyping"
* entry[=].resource = 63Obs-Genotyping
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/63Spec-Genotyping"
* entry[=].resource = 63Spec-Genotyping
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/63SR-Genotyping"
* entry[=].resource = 63SR-Genotyping
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 63Comp-Genotyping
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0ed5f82b-06e9-427b-8546-e841a33d49e8"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* date = "2024-09-10T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 10.09.2024"
* section.title = "Genotyping"
* section.code = $sct#726528006 "Genotyping (qualifier value)"
* section.entry = Reference(63Obs-Genotyping)

Instance: 63DR-Genotyping
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/63Comp-Genotyping)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0ed5f82b-06e9-427b-8546-e841a33d49e8"
* basedOn = Reference(63SR-Genotyping)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* performer = Reference(1Org-Labor)
* specimen = Reference(63Spec-Genotyping)
* result = Reference(63Obs-Genotyping)

Instance: 63SR-Genotyping
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#29579-0 "Mycobacterial Genotyping panel by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(63Spec-Genotyping)

Instance: 63Spec-Genotyping
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-001)
* collection.collectedDateTime = "2024-09-08"

Instance: 63Obs-Genotyping
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#113861009 "Mycobacterium tuberculosis (organism)"
* subject = Reference(Pat-001)
* effectiveDateTime = "2024-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(63Spec-Genotyping)

* component[0].code = $loinc#63072-3 "Mycobacterium tuberculosis inhA gene isoniazid low level resistance mutation [Presence] by Molecular method"
* component[0].dataAbsentReason = $data-absent-reason-cs#not-applicable
* component[=].interpretation =  $v3-ObservationInterpretation#POS "Positive"
