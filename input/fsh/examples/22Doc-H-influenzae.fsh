Instance: 22Doc-H-influenzae
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3a3ac360-c247-4f41-bde1-81b3c4d1da9c"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/22Doc-H-influenzae-Comp"
* entry[=].resource = 22Doc-H-influenzae-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-DM"
* entry[=].resource = Pat-DM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/22Doc-H-influenzae-Obs"
* entry[=].resource = 22Doc-H-influenzae-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/22Doc-H-influenzae-Spec"
* entry[=].resource = 22Doc-H-influenzae-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/22Doc-H-influenzae-SR"
* entry[=].resource = 22Doc-H-influenzae-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/22Doc-H-influenzae-DR"
* entry[=].resource = 22Doc-H-influenzae-DR

Instance: 22Doc-H-influenzae-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3a3ac360-c247-4f41-bde1-81b3c4d1da9c"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DM)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(22Doc-H-influenzae-Obs)

Instance: 22Doc-H-influenzae-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#53607-8
* subject = Reference(Pat-DM)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(22Doc-H-influenzae-Spec)

Instance: 22Doc-H-influenzae-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-DM)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 22Doc-H-influenzae-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#53607-8
* subject = Reference(Pat-DM)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(22Doc-H-influenzae-Spec)

Instance: 22Doc-H-influenzae-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(22Doc-H-influenzae-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3a3ac360-c247-4f41-bde1-81b3c4d1da9c"
* basedOn = Reference(22Doc-H-influenzae-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DM)
* performer = Reference(Org-SanLab)
* specimen = Reference(22Doc-H-influenzae-Spec)
* result = Reference(22Doc-H-influenzae-Obs)
