Instance: 62Doc-Cpe-Susceptibility
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "62Doc - Tuberculosis Susceptibility"
Description: "Example for a CH ELM Document: Laboratory Report"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a41baeb1-15b1-4572-b6a6-e06f6b935fb2"
* type = #document
* timestamp = "2024-09-10T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/62Comp-Susceptibility"
* entry[=].resource = 62Comp-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/62DR-Susceptibility"
* entry[=].resource = 62DR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-001"
* entry[=].resource = Pat-001
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/62Obs-Susceptibility"
* entry[=].resource = 62Obs-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/62Spec-Susceptibility"
* entry[=].resource = 62Spec-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/62SR-Susceptibility"
* entry[=].resource = 62SR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 62Comp-Susceptibility
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a41baeb1-15b1-4572-b6a6-e06f6b935fb2"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* date = "2024-09-10T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 10.09.2024"
* section.title = "Resistenztestung"
* section.code = $loinc#18769-0 "Microbial susceptibility tests Set"
* section.entry = Reference(62Obs-Susceptibility)

Instance: 62DR-Susceptibility
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/62Comp-Susceptibility)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a41baeb1-15b1-4572-b6a6-e06f6b935fb2"
* basedOn = Reference(62SR-Susceptibility)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* performer = Reference(1Org-Labor)
* specimen = Reference(62Spec-Susceptibility)
* result = Reference(62Obs-Susceptibility)

Instance: 62SR-Susceptibility
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $sct#734201007 "Carbapenem resistant Enterobacter cloacae complex (organism)"
* subject = Reference(Pat-001)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(62Spec-Susceptibility)

Instance: 62Spec-Susceptibility
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-001)
* collection.collectedDateTime = "2024-09-08"

Instance: 62Obs-Susceptibility
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#734201007 "Carbapenem resistant Enterobacter cloacae complex (organism)"
* subject = Reference(Pat-001)
* effectiveDateTime = "2024-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(62Spec-Susceptibility)

* component[0].code = $loinc#LP15795-5 "Imipenem"
* component[=].interpretation = $v3-ObservationInterpretation#R "Resistant" // #R "Resistant" | #S "Susceptible"
* component[=].dataAbsentReason = $data-absent-reason-cs#not-applicable

* component[+].code = $loinc#LP95252-0 "Doripenem"
* component[=].valueQuantity = 0.1 'mg/L' "milligram per liter"
* component[=].interpretation = $v3-ObservationInterpretation#R "Resistant" // #R "Resistant" | #S "Susceptible"