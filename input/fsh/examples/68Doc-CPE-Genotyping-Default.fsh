Instance: 68Doc-CPE-Genotyping-Default
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "68Doc - CPE Genotyping Default"
Description: "Example for a CH ELM Document: CPE Genotyping with leading code, no observation.value, 2 component codes"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-8fef3c69d6bd"
* type = #document
* timestamp = "2026-01-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/68Comp-Genotyping-Default"
* entry[=].resource = 68Comp-Genotyping-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/68DR-Genotyping-Default"
* entry[=].resource = 68DR-Genotyping-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/68Pat"
* entry[=].resource = 68Pat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/68Obs-Genotyping-Default"
* entry[=].resource = 68Obs-Genotyping-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/68Spec-Genotyping-Default"
* entry[=].resource = 68Spec-Genotyping-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/68SR-Genotyping-Default"
* entry[=].resource = 68SR-Genotyping-Default
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 68Pat
InstanceOf: ChElmPatient
Usage: #inline
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567897"
* name.family = "Lirena"
* name.given = "Vostarel"
* gender = #female
* birthDate = "1981-02-07"
* telecom.system = #phone
* telecom.value = "077000000"
* address[home].use = #home
* address[home].line = "Staginabet 2"
* address[home].line.extension[streetName].valueString = "Staginabet"
* address[home].line.extension[houseNumber].valueString = "2"
* address[home].postalCode = "1227"
* address[home].city = "Carouge"
* address[home].state = "GE"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH

Instance: 68Comp-Genotyping-Default
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-8fef3c69d6bd"
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
* section.entry = Reference(68Obs-Genotyping-Default)

Instance: 68DR-Genotyping-Default
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/68Comp-Genotyping-Default)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-8fef3c69d6bd"
* basedOn = Reference(68SR-Genotyping-Default)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(68Pat)
* performer = Reference(1Org-Labor)
* specimen = Reference(68Spec-Genotyping-Default)
* result = Reference(68Obs-Genotyping-Default)

Instance: 68SR-Genotyping-Default
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $sct#1086201000112108 "Carbapenemase-producing Acinetobacter ursingii (organism)"
* subject = Reference(68Pat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(68Spec-Genotyping-Default)

Instance: 68Spec-Genotyping-Default
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#258527002 "Anal swab (specimen)"
* subject = Reference(68Pat)
* collection.collectedDateTime = "2026-01-15T14:20:00+02:00"

Instance: 68Obs-Genotyping-Default
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#1086201000112108 "Carbapenemase-producing Acinetobacter ursingii (organism)"
* subject = Reference(68Pat)
* effectiveDateTime = "2026-01-17T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(68Spec-Genotyping-Default)

* component[0].code = $loinc#85498-4 "Carbapenem resistance blaIMP gene [Presence] by Molecular method"
* component[=].dataAbsentReason = $data-absent-reason-cs#not-applicable
* component[=].interpretation = $v3-ObservationInterpretation#POS "Positive"

* component[+].code = $loinc#85827-4 "Carbapenem resistance bla OXA-48-like gene [Presence] by Molecular method"
* component[=].dataAbsentReason = $data-absent-reason-cs#not-applicable
* component[=].interpretation = $v3-ObservationInterpretation#POS "Positive"
