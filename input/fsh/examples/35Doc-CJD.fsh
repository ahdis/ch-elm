Instance: 35Doc-CJD
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:34013a2d-6012-443f-9a90-6331adb23aab"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/35Doc-CJD-Comp"
* entry[=].resource = 35Doc-CJD-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/35Doc-CJD-Obs"
* entry[=].resource = 35Doc-CJD-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/35Doc-CJD-Spec"
* entry[=].resource = 35Doc-CJD-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/35Doc-CJD-SR"
* entry[=].resource = 35Doc-CJD-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/35Doc-CJD-DR"
* entry[=].resource = 35Doc-CJD-DR

Instance: 35Doc-CJD-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:34013a2d-6012-443f-9a90-6331adb23aab"
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
* section.entry = Reference(35Doc-CJD-Obs)

Instance: 35Doc-CJD-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#31989-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(35Doc-CJD-Spec)

Instance: 35Doc-CJD-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 35Doc-CJD-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#31989-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(35Doc-CJD-Spec)

Instance: 35Doc-CJD-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(35Doc-CJD-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:34013a2d-6012-443f-9a90-6331adb23aab"
* basedOn = Reference(35Doc-CJD-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(35Doc-CJD-Spec)
* result = Reference(35Doc-CJD-Obs)
