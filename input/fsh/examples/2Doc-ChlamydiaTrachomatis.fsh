Instance: 2Doc-ChlamydiaTrachomatis
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "2Doc - Chlamydia Trachomatis"
Description: "Example for a CH ELM Document: Laboratory Report (collection material in addition to the leading LOINC code, with references/fullUrls as UUIDs)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* type = #document
* timestamp = "2023-08-05T11:30:00+02:00"
* entry[0].fullUrl = "urn:uuid:da065461-34df-4e2e-b69f-4181908575d0" // Composition
* entry[=].resource = da065461-34df-4e2e-b69f-4181908575d0
* entry[+].fullUrl = "urn:uuid:2f69f609-e3bf-4863-bc42-3cbf0568cab1" // DiagnosticReport
* entry[=].resource = 2f69f609-e3bf-4863-bc42-3cbf0568cab1
* entry[+].fullUrl = "urn:uuid:50d5deca-64e9-4a30-8cec-40ac1f015655" // Patient
* entry[=].resource = 50d5deca-64e9-4a30-8cec-40ac1f015655
* entry[+].fullUrl = "urn:uuid:632a79ff-42d7-49e0-97ca-69a3a2015760" // Observation
* entry[=].resource = 632a79ff-42d7-49e0-97ca-69a3a2015760
* entry[+].fullUrl = "urn:uuid:b2b24ded-fd9f-40bc-a822-1fb07e14c2ef" // Specimen
* entry[=].resource = b2b24ded-fd9f-40bc-a822-1fb07e14c2ef
* entry[+].fullUrl = "urn:uuid:9d409938-5af8-4fae-88d1-541f35111c1f" // ServiceRequest
* entry[=].resource = 9d409938-5af8-4fae-88d1-541f35111c1f
* entry[+].fullUrl = "urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b" // Organization: Author & Lab
* entry[=].resource = 8b9163cc-4894-462c-8060-b9b01f705a8b
* entry[+].fullUrl = "urn:uuid:c2be8e31-506b-42b2-adfc-7e47dd23cdb4" // PractitionerRole: Orderer
* entry[=].resource = c2be8e31-506b-42b2-adfc-7e47dd23cdb4
* entry[+].fullUrl = "urn:uuid:c3384814-b10a-4aea-b84c-a92e9a9f41e3" // Practitioner: Orderer
* entry[=].resource = c3384814-b10a-4aea-b84c-a92e9a9f41e3

* entry[+].fullUrl = "urn:uuid:f18f5763-d9a4-4bb7-999e-959beaaba714" // Organization: Orderer
* entry[=].resource = f18f5763-d9a4-4bb7-999e-959beaaba714

Instance: da065461-34df-4e2e-b69f-4181908575d0
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:50d5deca-64e9-4a30-8cec-40ac1f015655)
* subject.type = "Patient"
* date = "2023-08-05T11:30:00+02:00"
* author = Reference(urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b) // Organization: Author & Lab
* author.type = "Organization"
* title = "Laborbericht vom 05.08.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(urn:uuid:632a79ff-42d7-49e0-97ca-69a3a2015760)
* section.entry.type = "Observation"

Instance: 2f69f609-e3bf-4863-bc42-3cbf0568cab1
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:da065461-34df-4e2e-b69f-4181908575d0)
* extension[DiagnosticReportCompositionR5].valueReference.type = "Composition"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* basedOn = Reference(urn:uuid:9d409938-5af8-4fae-88d1-541f35111c1f)
* basedOn.type = "ServiceRequest"
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:50d5deca-64e9-4a30-8cec-40ac1f015655)
* subject.type = "Patient"
* performer = Reference(urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b) // Organization: Author & Lab
* performer.type = "Organization"
* specimen = Reference(urn:uuid:b2b24ded-fd9f-40bc-a822-1fb07e14c2ef)
* specimen.type = "Specimen"
* result = Reference(urn:uuid:632a79ff-42d7-49e0-97ca-69a3a2015760)
* result.type = "Observation"

Instance: 50d5deca-64e9-4a30-8cec-40ac1f015655
InstanceOf: ChElmPatient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.family = "F"
* name.given = "H"
* gender = #female
* birthDate = "1985-10-17"
* address[home].use = #home
* address[home].city = "Derendingen"
* address[home].state = "SO"
* address[home].postalCode = "4552"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH

Instance: 632a79ff-42d7-49e0-97ca-69a3a2015760
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#6349-5 "Chlamydia trachomatis [Presence] in Specimen by Organism specific culture"
* subject = Reference(urn:uuid:50d5deca-64e9-4a30-8cec-40ac1f015655)
* subject.type = "Patient"
* effectiveDateTime = "2023-08-04T08:25:00+02:00"
* performer = Reference(urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b) // Organization: Author & Lab
* performer.type = "Organization"
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(urn:uuid:b2b24ded-fd9f-40bc-a822-1fb07e14c2ef)
* specimen.type = "Specimen"

Instance: b2b24ded-fd9f-40bc-a822-1fb07e14c2ef
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#119393003 "Specimen from urethra (specimen)"
* subject = Reference(urn:uuid:50d5deca-64e9-4a30-8cec-40ac1f015655)
* subject.type = "Patient"
* collection.collectedDateTime = "2023-07-29"

Instance: 9d409938-5af8-4fae-88d1-541f35111c1f
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "7601002331521"
* status = #completed
* intent = #order
* code = $loinc#6349-5 "Chlamydia trachomatis [Presence] in Specimen by Organism specific culture"
* subject = Reference(urn:uuid:50d5deca-64e9-4a30-8cec-40ac1f015655)
* subject.type = "Patient"
* requester = Reference(urn:uuid:c2be8e31-506b-42b2-adfc-7e47dd23cdb4) // PractitionerRole: Orderer
* requester.type = "PractitionerRole"
* specimen = Reference(urn:uuid:b2b24ded-fd9f-40bc-a822-1fb07e14c2ef)
* specimen.type = "Specimen"

Instance: 8b9163cc-4894-462c-8060-b9b01f705a8b // Organization: Author & Lab
InstanceOf: ChElmOrganizationLab
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* name = "SanLab"

Instance: c2be8e31-506b-42b2-adfc-7e47dd23cdb4 // PractitionerRole: Orderer
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #inline
* practitioner = Reference(urn:uuid:c3384814-b10a-4aea-b84c-a92e9a9f41e3) // Practitioner: Orderer
* practitioner.type = "Practitioner"
* organization = Reference(urn:uuid:f18f5763-d9a4-4bb7-999e-959beaaba714) // Organization: Orderer
* organization.type = "Organization"

Instance: c3384814-b10a-4aea-b84c-a92e9a9f41e3 // Practitioner: Orderer
InstanceOf: ChElmPractitionerOrderer
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000000514"
* name.family = "Hauser"
* name.given = "Peter"
* telecom[0].system = #email
* telecom[=].value = "peter.hauser@hauserpraxis.ch"
* telecom[+].system = #phone
* telecom[=].value = "+41 79 222 33 44"

Instance: f18f5763-d9a4-4bb7-999e-959beaaba714 // Organization: Orderer
InstanceOf: ChElmOrganizationOrderer
Usage: #inline
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A74966168"
* name = "Praxis Dr. Hauser"
* address.line = "Hauptstrasse 10"
* address.line.extension[streetName].valueString = "Hauptstrasse"
* address.line.extension[houseNumber].valueString = "10"
* address.city = "Solothurn"
* address.postalCode = "4500"