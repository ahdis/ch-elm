Instance: 20Doc-Vibrio-cholerae
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:080492a8-5665-4ccf-93d8-0c5f66bdba3c"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/20Doc-Vibrio-cholerae-Comp"
* entry[=].resource = 20Doc-Vibrio-cholerae-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/20Doc-Vibrio-cholerae-Obs"
* entry[=].resource = 20Doc-Vibrio-cholerae-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/20Doc-Vibrio-cholerae-Spec"
* entry[=].resource = 20Doc-Vibrio-cholerae-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/20Doc-Vibrio-cholerae-SR"
* entry[=].resource = 20Doc-Vibrio-cholerae-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/20Doc-Vibrio-cholerae-DR"
* entry[=].resource = 20Doc-Vibrio-cholerae-DR

Instance: 20Doc-Vibrio-cholerae-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:080492a8-5665-4ccf-93d8-0c5f66bdba3c"
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
* section.entry = Reference(20Doc-Vibrio-cholerae-Obs)

Instance: 20Doc-Vibrio-cholerae-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#53942-9
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(20Doc-Vibrio-cholerae-Spec)

Instance: 20Doc-Vibrio-cholerae-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 20Doc-Vibrio-cholerae-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#53942-9
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(20Doc-Vibrio-cholerae-Spec)

Instance: 20Doc-Vibrio-cholerae-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(20Doc-Vibrio-cholerae-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:080492a8-5665-4ccf-93d8-0c5f66bdba3c"
* basedOn = Reference(20Doc-Vibrio-cholerae-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(20Doc-Vibrio-cholerae-Spec)
* result = Reference(20Doc-Vibrio-cholerae-Obs)
