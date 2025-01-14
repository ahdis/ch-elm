Instance: 58Doc-Susceptibility
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "58Doc - Tuberculosis Susceptibility"
Description: "Example for a CH ELM Document: Laboratory Report"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7bb4d082-a40f-4771-b062-2858f2f7b7de"
* type = #document
* timestamp = "2023-09-10T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/58Comp-Susceptibility"
* entry[=].resource = 58Comp-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/58DR-Susceptibility"
* entry[=].resource = 58DR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-001"
* entry[=].resource = Pat-001
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/58Obs-Susceptibility"
* entry[=].resource = 58Obs-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/58Spec-Susceptibility"
* entry[=].resource = 58Spec-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/58SR-Susceptibility"
* entry[=].resource = 58SR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 58Comp-Susceptibility
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7bb4d082-a40f-4771-b062-2858f2f7b7de"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* date = "2023-09-10T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 10.09.2023"
* section.title = "Resistenztestung"
* section.code = $loinc#18769-0 "Microbial susceptibility tests Set"
* section.entry = Reference(58Obs-Susceptibility)

Instance: 58DR-Susceptibility
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/58Comp-Susceptibility)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7bb4d082-a40f-4771-b062-2858f2f7b7de"
* basedOn = Reference(58SR-Susceptibility)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* performer = Reference(1Org-Labor)
* specimen = Reference(58Spec-Susceptibility)
* result = Reference(58Obs-Susceptibility)

Instance: 58SR-Susceptibility
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#29579-0 "Mycobacterial susceptibility panel by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(58Spec-Susceptibility)

Instance: 58Spec-Susceptibility
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-001)
* collection.collectedDateTime = "2023-09-08"

Instance: 58Obs-Susceptibility
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#29579-0 "Mycobacterial susceptibility panel by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* effectiveDateTime = "2023-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(58Spec-Susceptibility)
//* valueCodeableConcept = $sct#10828004 "Positive"
//* interpretation = $v3-ObservationInterpretation#POS "Positive"

* component[0].code = $loinc#LP15831-8 "Isoniazid"
* component[=].valueQuantity = 0.4 'mg/L' "milligram per liter"
* component[=].interpretation = $v3-ObservationInterpretation#S "Susceptible" // #R "Resistant" | #S "Susceptible"

* component[+].code = $loinc#LP16274-0 "rifAMPin"
* component[=].valueQuantity = 0.1 'mg/L' "milligram per liter"
* component[=].interpretation = $v3-ObservationInterpretation#R "susceptible" // #R "Resistant" | #S "Susceptible"