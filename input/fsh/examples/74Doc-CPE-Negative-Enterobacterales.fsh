Instance: 74Doc-CPE-Negative-Enterobacterales
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "74Doc - CPE Negative Enterobacterales"
Description: "Example for a CH ELM Document: negative CPE result with the leading code 51281000087103 in a Microbiology studies section"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3c7e2a10-5b8d-4f6e-9a74-000000000074"
* type = #document
* timestamp = "2026-01-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/74Comp-Negative-Enterobacterales"
* entry[=].resource = 74Comp-Negative-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/74DR-Negative-Enterobacterales"
* entry[=].resource = 74DR-Negative-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/74Pat"
* entry[=].resource = 74Pat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/74Obs-Negative-Enterobacterales"
* entry[=].resource = 74Obs-Negative-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/74Spec-Negative-Enterobacterales"
* entry[=].resource = 74Spec-Negative-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/74SR-Negative-Enterobacterales"
* entry[=].resource = 74SR-Negative-Enterobacterales
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 74Pat
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

Instance: 74Comp-Negative-Enterobacterales
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3c7e2a10-5b8d-4f6e-9a74-000000000074"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(74Pat)
* date = "2026-01-17T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 17.1.2026"
* section.title = "Analyseergebnisse CPE"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(74Obs-Negative-Enterobacterales)

Instance: 74DR-Negative-Enterobacterales
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/74Comp-Negative-Enterobacterales)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3c7e2a10-5b8d-4f6e-9a74-000000000074"
* basedOn = Reference(74SR-Negative-Enterobacterales)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(74Pat)
* performer = Reference(1Org-Labor)
* specimen = Reference(74Spec-Negative-Enterobacterales)
* result = Reference(74Obs-Negative-Enterobacterales)

Instance: 74SR-Negative-Enterobacterales
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $sct#51281000087103 "Carbapenemase-producing Enterobacterales"
* subject = Reference(74Pat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(74Spec-Negative-Enterobacterales)

Instance: 74Spec-Negative-Enterobacterales
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#258527002 "Anal swab (specimen)"
* subject = Reference(74Pat)
* collection.collectedDateTime = "2026-01-15T14:20:00+02:00"

Instance: 74Obs-Negative-Enterobacterales
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#51281000087103 "Carbapenemase-producing Enterobacterales"
* subject = Reference(74Pat)
* effectiveDateTime = "2026-01-17T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(74Spec-Negative-Enterobacterales)

* valueCodeableConcept = $sct#260385009 "Negative"
* interpretation = $v3-ObservationInterpretation#NEG "Negative"
