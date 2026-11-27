Instance: 34Doc-Brucella
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:eecd5db9-077c-458f-8412-53ae7147b12b"
* type = #document
* timestamp = "2024-10-14T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/34Doc-Brucella-Comp"
* entry[=].resource = 34Doc-Brucella-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-DM"
* entry[=].resource = Pat-DM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/34Doc-Brucella-Obs"
* entry[=].resource = 34Doc-Brucella-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/34Doc-Brucella-Spec"
* entry[=].resource = 34Doc-Brucella-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/34Doc-Brucella-SR"
* entry[=].resource = 34Doc-Brucella-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/34Doc-Brucella-DR"
* entry[=].resource = 34Doc-Brucella-DR

Instance: 34Doc-Brucella-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:eecd5db9-077c-458f-8412-53ae7147b12b"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DM)
* date = "2024-10-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.10.92024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(34Doc-Brucella-Obs)

Instance: 34Doc-Brucella-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#101802-7
* subject = Reference(Pat-DM)
* effectiveDateTime = "2024-10-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(34Doc-Brucella-Spec)

Instance: 34Doc-Brucella-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-DM)
* collection.collectedDateTime = "2024-10-10T09:15:00+02:00"

Instance: 34Doc-Brucella-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#101802-7
* subject = Reference(Pat-DM)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(34Doc-Brucella-Spec)

Instance: 34Doc-Brucella-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(34Doc-Brucella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:eecd5db9-077c-458f-8412-53ae7147b12b"
* basedOn = Reference(34Doc-Brucella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DM)
* performer = Reference(Org-SanLab)
* specimen = Reference(34Doc-Brucella-Spec)
* result = Reference(34Doc-Brucella-Obs)
