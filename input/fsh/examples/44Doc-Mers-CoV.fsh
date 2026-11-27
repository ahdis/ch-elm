Instance: 44Doc-Mers-CoV
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:132e9944-25b4-43ff-bba0-c699e0c521b7"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/44Doc-Mers-CoV-Comp"
* entry[=].resource = 44Doc-Mers-CoV-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/44Doc-Mers-CoV-Obs"
* entry[=].resource = 44Doc-Mers-CoV-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/44Doc-Mers-CoV-Spec"
* entry[=].resource = 44Doc-Mers-CoV-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/44Doc-Mers-CoV-SR"
* entry[=].resource = 44Doc-Mers-CoV-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/44Doc-Mers-CoV-DR"
* entry[=].resource = 44Doc-Mers-CoV-DR

Instance: 44Doc-Mers-CoV-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:132e9944-25b4-43ff-bba0-c699e0c521b7"
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
* section.entry = Reference(44Doc-Mers-CoV-Obs)

Instance: 44Doc-Mers-CoV-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#94501-4
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(44Doc-Mers-CoV-Spec)

Instance: 44Doc-Mers-CoV-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 44Doc-Mers-CoV-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#94501-4
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(44Doc-Mers-CoV-Spec)

Instance: 44Doc-Mers-CoV-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(44Doc-Mers-CoV-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:132e9944-25b4-43ff-bba0-c699e0c521b7"
* basedOn = Reference(44Doc-Mers-CoV-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(44Doc-Mers-CoV-Spec)
* result = Reference(44Doc-Mers-CoV-Obs)
