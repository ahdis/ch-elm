Instance: 72Doc-CPE-Susceptibility-ObsValue
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "72Doc - CPE Susceptibility with Observation Value"
Description: "Example for a CH ELM Document: CPE Susceptibility with leading code, 1 observation.value code for organism specification, 1 component code"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-cfef3c69d6bd"
* type = #document
* timestamp = "2026-01-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/72Comp-Susceptibility-ObsValue"
* entry[=].resource = 72Comp-Susceptibility-ObsValue
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/72DR-Susceptibility-ObsValue"
* entry[=].resource = 72DR-Susceptibility-ObsValue
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/68Pat"
* entry[=].resource = 68Pat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/72Obs-Susceptibility-ObsValue"
* entry[=].resource = 72Obs-Susceptibility-ObsValue
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/72Spec-Susceptibility-ObsValue"
* entry[=].resource = 72Spec-Susceptibility-ObsValue
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/72SR-Susceptibility-ObsValue"
* entry[=].resource = 72SR-Susceptibility-ObsValue
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 72Comp-Susceptibility-ObsValue
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-cfef3c69d6bd"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(68Pat)
* date = "2026-01-17T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 17.1.2026"
* section.title = "Analyseergebnisse der CPE Resistenzbestimmung"
* section.code = $loinc#18769-0 "Microbial susceptibility tests Set"
* section.entry = Reference(72Obs-Susceptibility-ObsValue)

Instance: 72DR-Susceptibility-ObsValue
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/72Comp-Susceptibility-ObsValue)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-cfef3c69d6bd"
* basedOn = Reference(72SR-Susceptibility-ObsValue)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(68Pat)
* performer = Reference(1Org-Labor)
* specimen = Reference(72Spec-Susceptibility-ObsValue)
* result = Reference(72Obs-Susceptibility-ObsValue)

Instance: 72SR-Susceptibility-ObsValue
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $sct#1085501000112104 "Carbapenemase-producing Acinetobacter (organism)"
* subject = Reference(68Pat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(72Spec-Susceptibility-ObsValue)

Instance: 72Spec-Susceptibility-ObsValue
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#258527002 "Anal swab (specimen)"
* subject = Reference(68Pat)
* collection.collectedDateTime = "2026-01-15T14:20:00+02:00"

Instance: 72Obs-Susceptibility-ObsValue
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#1085501000112104 "Carbapenemase-producing Acinetobacter (organism)"
* subject = Reference(68Pat)
* effectiveDateTime = "2026-01-17T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* valueCodeableConcept = $sct#700398000 "Acinetobacter bereziniae (organism)"
* specimen = Reference(72Spec-Susceptibility-ObsValue)

* component[0].code = $loinc#88462-7 "Carbapenem [Susceptibility]"
* component[=].dataAbsentReason = $data-absent-reason-cs#not-applicable
* component[=].interpretation = $v3-ObservationInterpretation#R "Resistant"
