Instance: 7Doc-SARSCoV2
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "7Doc - SARS-CoV-2"
Description: "Example for a CH ELM Document: Laboratory Report (document in French, patient with full name)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2aa34"
* type = #document
* timestamp = "2023-09-12T08:30:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/7Comp-SARSCoV2"
* entry[=].resource = 7Comp-SARSCoV2
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/7DR-SARSCoV2"
* entry[=].resource = 7DR-SARSCoV2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-003"
* entry[=].resource = Pat-003
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/7Obs-SARSCoV2"
* entry[=].resource = 7Obs-SARSCoV2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/7Spec-Specimen"
* entry[=].resource = 7Spec-Specimen
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/7SR-Order"
* entry[=].resource = 7SR-Order
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-JeanneMoreau"
* entry[=].resource = PR-JeanneMoreau
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-JeanneMoreau"
* entry[=].resource = Pract-JeanneMoreau
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-JeanneMoreau"
* entry[=].resource = Org-JeanneMoreau

Instance: 7Comp-SARSCoV2
InstanceOf: ChElmComposition
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2aa34"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-003)
* date = "2023-09-12T08:30:00+02:00"
* author = Reference(1Org-Labor)
* title = "Rapport de laboratoire du 12.09.2023"
* section.title = "Résultats de l'analyse microbiologique"
* section.code = $loinc#18725-2
* section.entry = Reference(7Obs-SARSCoV2)

Instance: 7DR-SARSCoV2
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/7Comp-SARSCoV2)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2aa34"
* basedOn = Reference(7SR-Order)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-003)
* performer = Reference(1Org-Labor)
* specimen = Reference(7Spec-Specimen)
* result = Reference(7Obs-SARSCoV2)

Instance: 7Obs-SARSCoV2
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#94500-6 "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory system specimen by NAA with probe detection"
* subject = Reference(Pat-003)
* effectiveDateTime = "2023-09-12T07:40:00+02:00"
* performer = Reference(1Org-Labor)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(7Spec-Specimen)

Instance: 7Spec-Specimen
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-003)
* collection.collectedDateTime = "2023-09-11"

Instance: 7SR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "28541215633"
* status = #completed
* intent = #order
* code = $loinc#94500-6 "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection"
* subject = Reference(Pat-003)
* requester = Reference(PR-JeanneMoreau)
* specimen = Reference(7Spec-Specimen)


Instance: PR-JeanneMoreau
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #example
Title: "PR - Jeanne Moreau @ Hôpital régional soleil"
Description: "Example for a CH ELM PractitionerRole: Orderer"
* practitioner = Reference(Pract-JeanneMoreau)
* organization = Reference(Org-JeanneMoreau)

Instance: Pract-JeanneMoreau 
InstanceOf: ChElmPractitionerOrderer
Usage: #example
Title: "Pract - Jeanne Moreau"
Description: "Example for a CH ELM Practitioner: Orderer"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000121219"
* name.family = "Moreau"
* name.given = "Jeanne"
* telecom[0].system = #email
* telecom[=].value = "jm@hr-soleil.ch"
* telecom[+].system = #phone
* telecom[=].value = "+41 79 111 88 99"

Instance: Org-JeanneMoreau 
InstanceOf: ChElmOrganizationOrderer
Usage: #example
Title: "Org - Hôpital régional soleil"
Description: "Example for a CH ELM Organization: Orderer"
* extension[department].valueString = "Médecine interne"
* name = "Hôpital régional soleil"
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A99086638"
* address.line = "Rue des alpes 35"
* address.line.extension[streetName].valueString = "Rue des alpes"
* address.line.extension[houseNumber].valueString = "35"
* address.city = "Genève"
* address.postalCode = "1202"

Instance: Publish-7Doc-SARSCoV2
InstanceOf: PublishDocumentReferenceStrict
Usage: #example
Title: "Publish 7Doc-SARSCoV2"
Description: "Reporting SARSCoV2"
* contained = 7Doc-SARSCoV2
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:d03a9668-a8f9-4e9a-b853-1a84e6a8aae2"
* content.attachment.language = #de-CH
* content.attachment.url = "#7Doc-SARSCoV2" 
