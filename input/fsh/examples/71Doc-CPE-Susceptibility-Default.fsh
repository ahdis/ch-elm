Instance: 71Doc-CPE-Susceptibility-Default
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "71Doc - CPE Susceptibility Default"
Description: "Example for a CH ELM Document: CPE Susceptibility with leading code, no observation.value, 1 component code (single antibiotic)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-bfef3c69d6bd"
* type = #document
* timestamp = "2026-01-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/71Comp-Susceptibility-Default"
* entry[=].resource = 71Comp-Susceptibility-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/71DR-Susceptibility-Default"
* entry[=].resource = 71DR-Susceptibility-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/68Pat"
* entry[=].resource = 68Pat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/71Obs-Susceptibility-Default"
* entry[=].resource = 71Obs-Susceptibility-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/71Spec-Susceptibility-Default"
* entry[=].resource = 71Spec-Susceptibility-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/71SR-Susceptibility-Default"
* entry[=].resource = 71SR-Susceptibility-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 71Comp-Susceptibility-Default
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-bfef3c69d6bd"
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
* section.entry = Reference(71Obs-Susceptibility-Default)

Instance: 71DR-Susceptibility-Default
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/71Comp-Susceptibility-Default)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-bfef3c69d6bd"
* basedOn = Reference(71SR-Susceptibility-Default)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(68Pat)
* performer = Reference(1Org-Labor)
* specimen = Reference(71Spec-Susceptibility-Default)
* result = Reference(71Obs-Susceptibility-Default)

Instance: 71SR-Susceptibility-Default
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $sct#1086201000112108 "Carbapenemase-producing Acinetobacter ursingii (organism)"
* subject = Reference(68Pat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(71Spec-Susceptibility-Default)

Instance: 71Spec-Susceptibility-Default
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#258527002 "Anal swab (specimen)"
* subject = Reference(68Pat)
* collection.collectedDateTime = "2026-01-15T14:20:00+02:00"

Instance: 71Obs-Susceptibility-Default
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#1086201000112108 "Carbapenemase-producing Acinetobacter ursingii (organism)"
* subject = Reference(68Pat)
* effectiveDateTime = "2026-01-17T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(71Spec-Susceptibility-Default)

* component[0].code = $loinc#88462-7 "Carbapenem [Susceptibility]"
* component[=].dataAbsentReason = $data-absent-reason-cs#not-applicable
* component[=].interpretation = $v3-ObservationInterpretation#POS "Positive"
