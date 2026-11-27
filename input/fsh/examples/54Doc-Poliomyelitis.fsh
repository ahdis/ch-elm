Instance: 54Doc-Poliomyelitis
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/54Doc-Poliomyelitis-Comp"
* entry[=].resource = 54Doc-Poliomyelitis-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/54Doc-Poliomyelitis-Obs"
* entry[=].resource = 54Doc-Poliomyelitis-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser-2"
* entry[=].resource = Pract-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PraxisDrHauser"
* entry[=].resource = Org-PraxisDrHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser-2"
* entry[=].resource = PR-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/54Doc-Poliomyelitis-Spec"
* entry[=].resource = 54Doc-Poliomyelitis-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/54Doc-Poliomyelitis-SR"
* entry[=].resource = 54Doc-Poliomyelitis-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/54Doc-Poliomyelitis-DR"
* entry[=].resource = 54Doc-Poliomyelitis-DR

Instance: 54Doc-Poliomyelitis-Comp
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
* date = "2024-10-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.10.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(54Doc-Poliomyelitis-Obs)

Instance: 54Doc-Poliomyelitis-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#73907-8
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(54Doc-Poliomyelitis-Spec)

Instance: 54Doc-Poliomyelitis-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 54Doc-Poliomyelitis-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#73907-8
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser-2)
* specimen = Reference(54Doc-Poliomyelitis-Spec)

Instance: 54Doc-Poliomyelitis-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(54Doc-Poliomyelitis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* basedOn = Reference(54Doc-Poliomyelitis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(54Doc-Poliomyelitis-Spec)
* result = Reference(54Doc-Poliomyelitis-Obs)
