Instance: 51aDoc-Susceptibility
InstanceOf: ChElmDocument // ChElmDocumentStrict
Usage: #example
Title: "51aDoc - Susceptibility: Variant with 'hasMember'"
Description: "Example for a CH ELM Document: Laboratory Report"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7bb4d082-a40f-4771-b062-2851af2f7b7de"
* type = #document
* timestamp = "2023-09-10T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/51aComp-Susceptibility"
* entry[=].resource = 51aComp-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/51aDR-Susceptibility"
* entry[=].resource = 51aDR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-001"
* entry[=].resource = Pat-001
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/51aObs-Susceptibility"
* entry[=].resource = 51aObs-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/51aObs-Susceptibility-Ethambutol"
* entry[=].resource = 51aObs-Susceptibility-Ethambutol
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/51aObs-Susceptibility-Isoniazid"
* entry[=].resource = 51aObs-Susceptibility-Isoniazid
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/51aObs-Susceptibility-Streptomycin"
* entry[=].resource = 51aObs-Susceptibility-Streptomycin
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/51aSpec-Susceptibility"
* entry[=].resource = 51aSpec-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/51aSR-Susceptibility"
* entry[=].resource = 51aSR-Susceptibility
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 51aComp-Susceptibility
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7bb4d082-a40f-4771-b062-2851af2f7b7de"
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
* section.entry = Reference(51aObs-Susceptibility)

Instance: 51aDR-Susceptibility
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/51aComp-Susceptibility)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7bb4d082-a40f-4771-b062-2851af2f7b7de"
* basedOn = Reference(51aSR-Susceptibility)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* performer = Reference(1Org-Labor)
* specimen = Reference(51aSpec-Susceptibility)
* result = Reference(51aObs-Susceptibility)

Instance: 51aSR-Susceptibility
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#29579-0 "Mycobacterial susceptibility panel by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(51aSpec-Susceptibility)

Instance: 51aSpec-Susceptibility
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-001)
* collection.collectedDateTime = "2023-09-08"

Instance: 51aObs-Susceptibility
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#29579-0 "Mycobacterial susceptibility panel by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* effectiveDateTime = "2023-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(51aSpec-Susceptibility)
//* valueCodeableConcept = $sct#10828004 "Positive"
//* interpretation = $v3-ObservationInterpretation#POS "Positive"
* hasMember[0] = Reference(51aObs-Susceptibility-Ethambutol)
* hasMember[+] = Reference(51aObs-Susceptibility-Isoniazid)
* hasMember[+] = Reference(51aObs-Susceptibility-Streptomycin)

Instance: 51aObs-Susceptibility-Ethambutol
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#20381-0 "Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* effectiveDateTime = "2023-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(51aSpec-Susceptibility)
* valueQuantity = 5 'mg/L' "milligram per liter"
* interpretation = $v3-ObservationInterpretation#S "Susceptible" // #R "Resistant" | #S "Susceptible"

Instance: 51aObs-Susceptibility-Isoniazid
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#20383-6 "Isoniazid [Susceptibility] by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* effectiveDateTime = "2023-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(51aSpec-Susceptibility)
* valueQuantity = 0.1 'mg/L' "milligram per liter"
* interpretation = $v3-ObservationInterpretation#R "Resistant" // #R "Resistant" | #S "Susceptible"

Instance: 51aObs-Susceptibility-Streptomycin
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#20462-8 "Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria"
* subject = Reference(Pat-001)
* effectiveDateTime = "2023-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(51aSpec-Susceptibility)
* valueQuantity = 20 'mg/L' "milligram per liter"
* interpretation = $v3-ObservationInterpretation#S "Susceptible" // #R "Resistant" | #S "Susceptible"
