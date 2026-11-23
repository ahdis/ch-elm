Instance: 73Doc-CPE-Genotyping-Enterobacterales
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "73Doc - CPE Genotyping Enterobacterales"
Description: "Example for a CH ELM Document: CPE Genotyping with the leading code 51281000087103, which can also be reported as negative (see 74Doc)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3c7e2a10-5b8d-4f6e-9a73-000000000073"
* type = #document
* timestamp = "2026-01-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/73Comp-Genotyping-Enterobacterales"
* entry[=].resource = 73Comp-Genotyping-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/73DR-Genotyping-Enterobacterales"
* entry[=].resource = 73DR-Genotyping-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/73Pat"
* entry[=].resource = 73Pat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/73Obs-Genotyping-Enterobacterales"
* entry[=].resource = 73Obs-Genotyping-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/73Spec-Genotyping-Enterobacterales"
* entry[=].resource = 73Spec-Genotyping-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/73SR-Genotyping-Enterobacterales"
* entry[=].resource = 73SR-Genotyping-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 73Pat
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

Instance: 73Comp-Genotyping-Enterobacterales
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3c7e2a10-5b8d-4f6e-9a73-000000000073"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(73Pat)
* date = "2026-01-17T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 17.1.2026"
* section.title = "Analyseergebnisse der CPE Resistenzbestimmung"
* section.code = $sct#726528006 "Genotyping (qualifier value)"
* section.entry = Reference(73Obs-Genotyping-Enterobacterales)

Instance: 73DR-Genotyping-Enterobacterales
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/73Comp-Genotyping-Enterobacterales)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3c7e2a10-5b8d-4f6e-9a73-000000000073"
* basedOn = Reference(73SR-Genotyping-Enterobacterales)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(73Pat)
* performer = Reference(1Org-Labor)
* specimen = Reference(73Spec-Genotyping-Enterobacterales)
* result = Reference(73Obs-Genotyping-Enterobacterales)

Instance: 73SR-Genotyping-Enterobacterales
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $sct#51281000087103 "Carbapenemase-producing Enterobacterales"
* subject = Reference(73Pat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(73Spec-Genotyping-Enterobacterales)

Instance: 73Spec-Genotyping-Enterobacterales
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#258527002 "Anal swab (specimen)"
* subject = Reference(73Pat)
* collection.collectedDateTime = "2026-01-15T14:20:00+02:00"

Instance: 73Obs-Genotyping-Enterobacterales
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#51281000087103 "Carbapenemase-producing Enterobacterales"
* subject = Reference(73Pat)
* effectiveDateTime = "2026-01-17T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(73Spec-Genotyping-Enterobacterales)

* component[0].code = $loinc#85827-4 "Carbapenem resistance bla OXA-48-like gene [Presence] by Molecular method"
* component[=].dataAbsentReason = $data-absent-reason-cs#not-applicable
* component[=].interpretation = $v3-ObservationInterpretation#POS "Positive"