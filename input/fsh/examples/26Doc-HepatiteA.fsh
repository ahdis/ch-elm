Instance: 26Doc-HepatiteA
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3578dcc-6b7e-431e-a743-b6ce89620f4f"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/26Doc-HepatiteA-Comp"
* entry[=].resource = 26Doc-HepatiteA-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/26Doc-HepatiteA-Obs"
* entry[=].resource = 26Doc-HepatiteA-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/26Doc-HepatiteA-Spec"
* entry[=].resource = 26Doc-HepatiteA-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/26Doc-HepatiteA-SR"
* entry[=].resource = 26Doc-HepatiteA-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/26Doc-HepatiteA-DR"
* entry[=].resource = 26Doc-HepatiteA-DR

Instance: 26Doc-HepatiteA-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3578dcc-6b7e-431e-a743-b6ce89620f4f"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(26Doc-HepatiteA-Obs)

Instance: 26Doc-HepatiteA-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#22314-9
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(26Doc-HepatiteA-Spec)

Instance: 26Doc-HepatiteA-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-23T14:20:00+02:00"

Instance: 26Doc-HepatiteA-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#22314-9
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(26Doc-HepatiteA-Spec)

Instance: 26Doc-HepatiteA-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(26Doc-HepatiteA-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3578dcc-6b7e-431e-a743-b6ce89620f4f"
* basedOn = Reference(26Doc-HepatiteA-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(26Doc-HepatiteA-Spec)
* result = Reference(26Doc-HepatiteA-Obs)
