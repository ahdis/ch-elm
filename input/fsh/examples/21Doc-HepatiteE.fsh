Instance: 21Doc-HepatiteE
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/21Doc-HepatiteE-Comp"
* entry[=].resource = 21Doc-HepatiteE-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/21Doc-HepatiteE-Obs"
* entry[=].resource = 21Doc-HepatiteE-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/21Doc-HepatiteE-Spec"
* entry[=].resource = 21Doc-HepatiteE-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/21Doc-HepatiteE-SR"
* entry[=].resource = 21Doc-HepatiteE-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/21Doc-HepatiteE-DR"
* entry[=].resource = 21Doc-HepatiteE-DR

Instance: 21Doc-HepatiteE-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(21Doc-HepatiteE-Obs)

Instance: 21Doc-HepatiteE-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#91071-1
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(21Doc-HepatiteE-Spec)

Instance: 21Doc-HepatiteE-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 21Doc-HepatiteE-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#91071-1
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(21Doc-HepatiteE-Spec)

Instance: 21Doc-HepatiteE-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(21Doc-HepatiteE-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* basedOn = Reference(21Doc-HepatiteE-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(21Doc-HepatiteE-Spec)
* result = Reference(21Doc-HepatiteE-Obs)
