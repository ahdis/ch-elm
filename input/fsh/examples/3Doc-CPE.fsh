Instance: 3Doc-CPE
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* type = #document
* timestamp = "2025-01-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/3Doc-CPE-Comp"
* entry[=].resource = 3Doc-CPE-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/3Doc-CPE-Obs"
* entry[=].resource = 3Doc-CPE-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser-2"
* entry[=].resource = Pract-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PraxisDrHauser"
* entry[=].resource = Org-PraxisDrHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser-2"
* entry[=].resource = PR-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/3Doc-CPE-Spec"
* entry[=].resource = 3Doc-CPE-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/3Doc-CPE-SR"
* entry[=].resource = 3Doc-CPE-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/3Doc-CPE-DR"
* entry[=].resource = 3Doc-CPE-DR

Instance: 3Doc-CPE-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2025-01-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.01.2025"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(3Doc-CPE-Obs)

Instance: 3Doc-CPE-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $sct#734351004
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2025-01-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(3Doc-CPE-Spec)

Instance: 3Doc-CPE-Spec
InstanceOf: Specimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2025-01-15T14:20:00+02:00"

Instance: 3Doc-CPE-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $sct#734351004
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser-2)
* specimen = Reference(3Doc-CPE-Spec)

Instance: 3Doc-CPE-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(3Doc-CPE-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* basedOn = Reference(3Doc-CPE-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(3Doc-CPE-Spec)
* result = Reference(3Doc-CPE-Obs)
