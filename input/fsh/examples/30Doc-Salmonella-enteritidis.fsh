Instance: 30Doc-Salmonella-enteritidis
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/30Doc-Salmonella-enteritidis-Comp"
* entry[=].resource = 30Doc-Salmonella-enteritidis-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont-2"
* entry[=].resource = Pat-AntoineDupont-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/30Doc-Salmonella-enteritidis-Obs"
* entry[=].resource = 30Doc-Salmonella-enteritidis-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser-2"
* entry[=].resource = Pract-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PraxisDrHauser"
* entry[=].resource = Org-PraxisDrHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser-2"
* entry[=].resource = PR-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/30Doc-Salmonella-enteritidis-Spec"
* entry[=].resource = 30Doc-Salmonella-enteritidis-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/30Doc-Salmonella-enteritidis-SR"
* entry[=].resource = 30Doc-Salmonella-enteritidis-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/30Doc-Salmonella-enteritidis-DR"
* entry[=].resource = 30Doc-Salmonella-enteritidis-DR

Instance: 30Doc-Salmonella-enteritidis-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-2)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(30Doc-Salmonella-enteritidis-Obs)

Instance: 30Doc-Salmonella-enteritidis-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#49612-5
* subject = Reference(Pat-AntoineDupont-2)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#73525009
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(30Doc-Salmonella-enteritidis-Spec)

Instance: 30Doc-Salmonella-enteritidis-Spec
InstanceOf: Specimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont-2)
* collection.collectedDateTime = "2024-07-23T14:20:00+02:00"

Instance: 30Doc-Salmonella-enteritidis-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#49612-5
* subject = Reference(Pat-AntoineDupont-2)
* requester = Reference(PR-PeterHauser-2)
* specimen = Reference(30Doc-Salmonella-enteritidis-Spec)

Instance: 30Doc-Salmonella-enteritidis-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(30Doc-Salmonella-enteritidis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* basedOn = Reference(30Doc-Salmonella-enteritidis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-2)
* performer = Reference(Org-SanLab)
* specimen = Reference(30Doc-Salmonella-enteritidis-Spec)
* result = Reference(30Doc-Salmonella-enteritidis-Obs)
