Instance: 4Doc-Campylobacter
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "4Doc - Campylobacter coli"
Description: "Example for a CH ELM Document: Laboratory Report"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2cb3b"
* type = #document
* timestamp = "2023-09-20T07:35:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/4Comp-Campylobacter"
* entry[=].resource = 4Comp-Campylobacter
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/4DR-Campylobacter"
* entry[=].resource = 4DR-Campylobacter
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-002"
* entry[=].resource = Pat-002
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/4Obs-Campylobacter"
* entry[=].resource = 4Obs-Campylobacter
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/4Spec-Specimen"
* entry[=].resource = 4Spec-Specimen
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/4SR-Order"
* entry[=].resource = 4SR-Order
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/1PR-KsAbc"
* entry[=].resource = 1PR-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/1Pract-KsAbc"
* entry[=].resource = 1Pract-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-KsAbc"
* entry[=].resource = 1Org-KsAbc

Instance: 4Comp-Campylobacter
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2cb3b"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-002)
* date = "2023-09-20T07:35:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 20.09.2023"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(4Obs-Campylobacter)

Instance: 4DR-Campylobacter
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/4Comp-Campylobacter)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2cb3b"
* basedOn = Reference(4SR-Order)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-002)
* performer = Reference(1Org-Labor)
* specimen = Reference(4Spec-Specimen)
* result = Reference(4Obs-Campylobacter)


Instance: 4Obs-Campylobacter
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#103168-1 "Campylobacter coli+jejuni DNA [Presence] in Wound by NAA with probe detection"
* subject = Reference(Pat-002)
* effectiveDateTime = "2023-09-19T17:50:00+02:00"
* performer = Reference(1Org-Labor)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(4Spec-Specimen)

Instance: 4Spec-Specimen
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-002)
* collection.collectedDateTime = "2023-09-18"

Instance: 4SR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#103168-1 "Campylobacter coli+jejuni DNA [Presence] in Wound by NAA with probe detection"
* subject = Reference(Pat-002)
* requester = Reference(1PR-KsAbc)
* specimen = Reference(4Spec-Specimen)

Instance: Publish-4Doc-Campylobacter
InstanceOf: PublishDocumentReferenceStrict
Usage: #example
Title: "Publish 4Doc-Campylobacter"
Description: "Reporting Campylobacter coli"
* contained = 4Doc-Campylobacter
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2cb3"
* content.attachment.language = #de-CH
* content.attachment.url = "#4Doc-Campylobacter" 