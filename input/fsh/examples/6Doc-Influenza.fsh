Instance: 6Doc-Influenza
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "6Doc - Influenza"
Description: "Example for a CH ELM Document: Laboratory Report"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb23a5c"
* type = #document
* timestamp = "2023-09-10T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/6Comp-Influenza"
* entry[=].resource = 6Comp-Influenza
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/6DR-Influenza"
* entry[=].resource = 6DR-Influenza
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-001"
* entry[=].resource = Pat-001
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/6Obs-Influenza"
* entry[=].resource = 6Obs-Influenza
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/6Spec-Specimen"
* entry[=].resource = 6Spec-Specimen
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/6SR-Order"
* entry[=].resource = 6SR-Order
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 6Comp-Influenza
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb23a5c"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* date = "2023-09-10T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 10.09.2023"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(6Obs-Influenza)

Instance: 6DR-Influenza
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/6Comp-Influenza)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb23a5c"
* basedOn = Reference(6SR-Order)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* performer = Reference(1Org-Labor)
* specimen = Reference(6Spec-Specimen)
* result = Reference(6Obs-Influenza)

Instance: 6Obs-Influenza
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#76078-5 "Influenza virus A RNA [Presence] in Nasopharynx by NAA with probe detection"
* subject = Reference(Pat-001)
* effectiveDateTime = "2023-09-10T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(6Spec-Specimen)

Instance: 6Spec-Specimen
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-001)
* collection.collectedDateTime = "2023-09-08"

Instance: 6SR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#76078-5 "Influenza virus A RNA [Presence] in Nasopharynx by NAA with probe detection"
* subject = Reference(Pat-001)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(6Spec-Specimen)


Instance: PR-PeterHauser // PractitionerRole: Orderer
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #example
Title: "PR - Peter Hauser @ Praxis Dr. Hauser"
Description: "Example for a CH ELM PractitionerRole: Orderer"
* practitioner = Reference(Pract-PeterHauser)
* organization = Reference(Org-PeterHauser)

Instance: Pract-PeterHauser 
InstanceOf: ChElmPractitionerOrderer
Usage: #example
Title: "Pract - Peter Hauser"
Description: "Example for a CH ELM Practitioner: Orderer"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000000514"
* name.family = "Hauser"
* name.given = "Peter"
* telecom[0].system = #email
* telecom[=].value = "peter.hauser@hauserpraxis.ch"
* telecom[+].system = #phone
* telecom[=].value = "+41 79 222 33 44"

Instance: Org-PeterHauser 
InstanceOf: ChElmOrganizationOrderer
Usage: #example
Title: "Org - Praxis Dr. Hauser"
Description: "Example for a CH ELM Organization: Orderer"
* name = "Praxis Dr. Hauser"
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A74966168"
* address.line = "Hauptstrasse 10"
* address.line.extension[streetName].valueString = "Hauptstrasse"
* address.line.extension[houseNumber].valueString = "10"
* address.city = "Solothurn"
* address.postalCode = "4500"

Instance: Publish-6Doc-Influenza
InstanceOf: PublishDocumentReferenceStrict
Usage: #example
Title: "Publish 6Doc-Influenza"
Description: "Reporting Influenza"
* contained = 6Doc-Influenza
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb23a5c"
* content.attachment.language = #de-CH
* content.attachment.url = "#6Doc-Influenza" 