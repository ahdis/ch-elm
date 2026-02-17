Instance: 70Doc-CPE-Genotyping-Freetext
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "70Doc - CPE Genotyping Freetext"
Description: "Example for a CH ELM Document: CPE Genotyping with leading code, 1 observation.value code, 1 generic component code with freetext valueString"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-afef3c69d6bd"
* type = #document
* timestamp = "2026-01-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/70Comp-Genotyping-Freetext"
* entry[=].resource = 70Comp-Genotyping-Freetext
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/70DR-Genotyping-Freetext"
* entry[=].resource = 70DR-Genotyping-Freetext
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/68Pat"
* entry[=].resource = 68Pat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/70Obs-Genotyping-Freetext"
* entry[=].resource = 70Obs-Genotyping-Freetext
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/70Spec-Genotyping-Freetext"
* entry[=].resource = 70Spec-Genotyping-Freetext
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/70SR-Genotyping-Freetext"
* entry[=].resource = 70SR-Genotyping-Freetext
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 70Comp-Genotyping-Freetext
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-afef3c69d6bd"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(68Pat)
* date = "2026-01-17T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 17.1.2026"
* section.title = "Analyseergebnisse der CPE Resistenzbestimmung"
* section.code = $sct#726528006 "Genotyping (qualifier value)"
* section.entry = Reference(70Obs-Genotyping-Freetext)

Instance: 70DR-Genotyping-Freetext
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/70Comp-Genotyping-Freetext)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-afef3c69d6bd"
* basedOn = Reference(70SR-Genotyping-Freetext)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(68Pat)
* performer = Reference(1Org-Labor)
* specimen = Reference(70Spec-Genotyping-Freetext)
* result = Reference(70Obs-Genotyping-Freetext)

Instance: 70SR-Genotyping-Freetext
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $sct#1085501000112104 "Carbapenemase-producing Acinetobacter (organism)"
* subject = Reference(68Pat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(70Spec-Genotyping-Freetext)

Instance: 70Spec-Genotyping-Freetext
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#258527002 "Anal swab (specimen)"
* subject = Reference(68Pat)
* collection.collectedDateTime = "2026-01-15T14:20:00+02:00"

Instance: 70Obs-Genotyping-Freetext
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#1085501000112104 "Carbapenemase-producing Acinetobacter (organism)"
* subject = Reference(68Pat)
* effectiveDateTime = "2026-01-17T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* valueCodeableConcept = $sct#700398000 "Acinetobacter bereziniae (organism)"
* specimen = Reference(70Spec-Genotyping-Freetext)

* component[0].code = $loinc#LP113695-3 "Carbapenem resistance genes"
* component[=].valueString = "alpha centauri"
* component[=].interpretation = $v3-ObservationInterpretation#POS "Positive"
