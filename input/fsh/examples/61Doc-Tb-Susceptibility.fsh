Instance: 61Doc-Tb-Susceptibility
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "61Doc - Tuberculosis Susceptibility"
Description: "Example document for reporting microbial susceptibility pannels (antibiograms)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2821b775-16f8-4910-bba8-1b7d99627f3e"
* type = #document
* timestamp = "2024-09-10T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/61Comp-Susceptibility"
* entry[=].resource = 61Comp-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/61DR-Susceptibility"
* entry[=].resource = 61DR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-003"
* entry[=].resource = Pat-003
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/61Obs-Susceptibility"
* entry[=].resource = 61Obs-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/61Spec-Susceptibility"
* entry[=].resource = 61Spec-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/61SR-Susceptibility"
* entry[=].resource = 61SR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 61Comp-Susceptibility
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2821b775-16f8-4910-bba8-1b7d99627f3e"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-003)
* date = "2024-09-10T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 10.09.2024"
* section.title = "Resistenztestung"
* section.code = $loinc#18769-0 "Microbial susceptibility tests Set"
* section.entry = Reference(61Obs-Susceptibility)

Instance: 61DR-Susceptibility
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/61Comp-Susceptibility)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2821b775-16f8-4910-bba8-1b7d99627f3e"
* basedOn = Reference(61SR-Susceptibility)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-003)
* performer = Reference(1Org-Labor)
* specimen = Reference(61Spec-Susceptibility)
* result = Reference(61Obs-Susceptibility)

Instance: 61SR-Susceptibility
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#29579-0 "Mycobacterial susceptibility panel by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-003)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(61Spec-Susceptibility)

Instance: 61Spec-Susceptibility
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-003)
* collection.collectedDateTime = "2024-09-08"

Instance: 61Obs-Susceptibility
InstanceOf: ChElmObservationResultsLaboratorySusceptibilityStrict
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#29579-0 "Mycobacterial susceptibility panel by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-003)
* effectiveDateTime = "2024-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(61Spec-Susceptibility)

* component[0].code = $loinc#18934-0 "Isoniazid [Susceptibility]"
* component[=].valueQuantity = 0.4 'mg/L' "mg/L"
* component[=].interpretation = $v3-ObservationInterpretation#S "Susceptible" 

* component[+].code = $loinc#18974-6 "rifAMPin [Susceptibility]"
* component[=].valueQuantity = 0.1 'mg/L' "mg/L"
* component[=].interpretation = $v3-ObservationInterpretation#R "Resistant"
