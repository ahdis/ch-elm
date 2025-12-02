Instance: 2Doc-ChlamydiaTrachomatis-Vct
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "2Doc - Chlamydia Trachomatis (VCT)"
Description: "Example for a CH ELM Document: Laboratory Report collection material in addition to the leading LOINC code and Patient with Patient VCT code"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* type = #document
* timestamp = "2023-08-05T11:30:00+02:00"
* entry[0].fullUrl = "urn:uuid:7d9126ab-df2c-47ce-93f8-4ca4f4353b39" // Composition VCT
* entry[=].resource = 7d9126ab-df2c-47ce-93f8-4ca4f4353b39
* entry[+].fullUrl = "urn:uuid:9f5bb881-80f5-4962-8885-df6439ebe154" // DiagnosticReport VCT
* entry[=].resource = 9f5bb881-80f5-4962-8885-df6439ebe154
* entry[+].fullUrl = "urn:uuid:d43ab324-dc02-4f8b-abcd-279808dcc315" // Patient VCT
* entry[=].resource = d43ab324-dc02-4f8b-abcd-279808dcc315
* entry[+].fullUrl = "urn:uuid:1ed18b09-bd72-4825-86c4-adfb102a260c" // Observation CCT
* entry[=].resource = 1ed18b09-bd72-4825-86c4-adfb102a260c
* entry[+].fullUrl = "urn:uuid:8e87aff2-708a-4964-a5d1-281e4d4c2786" // Specimen VCT
* entry[=].resource = 8e87aff2-708a-4964-a5d1-281e4d4c2786
* entry[+].fullUrl = "urn:uuid:cfecb79a-7bb8-45a3-8b1e-9d02cad3e829" // ServiceRequest VCT
* entry[=].resource = cfecb79a-7bb8-45a3-8b1e-9d02cad3e829
* entry[+].fullUrl = "urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b" // Organization: Author & Lab
* entry[=].resource = 8b9163cc-4894-462c-8060-b9b01f705a8b
* entry[+].fullUrl = "urn:uuid:c2be8e31-506b-42b2-adfc-7e47dd23cdb4" // PractitionerRole: Orderer
* entry[=].resource = c2be8e31-506b-42b2-adfc-7e47dd23cdb4
* entry[+].fullUrl = "urn:uuid:c3384814-b10a-4aea-b84c-a92e9a9f41e3" // Practitioner: Orderer
* entry[=].resource = c3384814-b10a-4aea-b84c-a92e9a9f41e3

* entry[+].fullUrl = "urn:uuid:f18f5763-d9a4-4bb7-999e-959beaaba714" // Organization: Orderer
* entry[=].resource = f18f5763-d9a4-4bb7-999e-959beaaba714

Instance: 7d9126ab-df2c-47ce-93f8-4ca4f4353b39 // VCT
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:d43ab324-dc02-4f8b-abcd-279808dcc315)
* subject.type = "Patient"
* date = "2023-08-05T11:30:00+02:00"
* author = Reference(urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b) // Organization: Author & Lab
* author.type = "Organization"
* title = "Laborbericht vom 05.08.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(urn:uuid:1ed18b09-bd72-4825-86c4-adfb102a260c)
* section.entry.type = "Observation"

Instance: 9f5bb881-80f5-4962-8885-df6439ebe154 // VCT
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:7d9126ab-df2c-47ce-93f8-4ca4f4353b39 )
* extension[DiagnosticReportCompositionR5].valueReference.type = "Composition"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* basedOn = Reference(urn:uuid:cfecb79a-7bb8-45a3-8b1e-9d02cad3e829)
* basedOn.type = "ServiceRequest"
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(urn:uuid:d43ab324-dc02-4f8b-abcd-279808dcc315)
* subject.type = "Patient"
* performer = Reference(urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b) // Organization: Author & Lab
* performer.type = "Organization"
* specimen = Reference(urn:uuid:8e87aff2-708a-4964-a5d1-281e4d4c2786 )
* specimen.type = "Specimen"
* result = Reference(urn:uuid:1ed18b09-bd72-4825-86c4-adfb102a260c)
* result.type = "Observation"

Instance: d43ab324-dc02-4f8b-abcd-279808dcc315
InstanceOf: ChElmPatientVCT
Usage: #inline
* name.extension[vctcode].valueString = "kste12345"
* gender = #female
* birthDate = "1985-10-17"
* address[home].use = #home
* address[home].city = "Derendingen"
* address[home].state = "SO"
* address[home].postalCode = "4552"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH

Instance: 1ed18b09-bd72-4825-86c4-adfb102a260c // VCT
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#6349-5 "Chlamydia trachomatis [Presence] in Specimen by Organism specific culture"
* subject = Reference(urn:uuid:d43ab324-dc02-4f8b-abcd-279808dcc315)
* subject.type = "Patient"
* effectiveDateTime = "2023-08-04T08:25:00+02:00"
* performer = Reference(urn:uuid:8b9163cc-4894-462c-8060-b9b01f705a8b) // Organization: Author & Lab
* performer.type = "Organization"
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(urn:uuid:8e87aff2-708a-4964-a5d1-281e4d4c2786)
* specimen.type = "Specimen"

Instance: 8e87aff2-708a-4964-a5d1-281e4d4c2786 // VCT
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#119393003 "Specimen from urethra (specimen)"
* subject = Reference(urn:uuid:d43ab324-dc02-4f8b-abcd-279808dcc315)
* subject.type = "Patient"
* collection.collectedDateTime = "2023-07-29"

Instance: cfecb79a-7bb8-45a3-8b1e-9d02cad3e829 // VCT
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "7601002331521"
* status = #completed
* intent = #order
* code = $loinc#6349-5 "Chlamydia trachomatis [Presence] in Specimen by Organism specific culture"
* subject = Reference(urn:uuid:d43ab324-dc02-4f8b-abcd-279808dcc315)
* subject.type = "Patient"
* requester = Reference(urn:uuid:c2be8e31-506b-42b2-adfc-7e47dd23cdb4) // PractitionerRole: Orderer
* requester.type = "PractitionerRole"
* specimen = Reference(urn:uuid:8e87aff2-708a-4964-a5d1-281e4d4c2786 )
* specimen.type = "Specimen"