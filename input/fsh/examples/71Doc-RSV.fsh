Instance: 71Doc-RSV
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e808dd54-171f-4c29-a669-0c19dba7601a"
* type = #document
* timestamp = "2023-09-20T07:35:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/71Doc-RSV-Comp"
* entry[=].resource = 71Doc-RSV-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-HF"
* entry[=].resource = Pat-HF
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/71Doc-RSV-Obs"
* entry[=].resource = 71Doc-RSV-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/71Doc-RSV-Spec"
* entry[=].resource = 71Doc-RSV-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/71Doc-RSV-SR"
* entry[=].resource = 71Doc-RSV-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/71Doc-RSV-DR"
* entry[=].resource = 71Doc-RSV-DR

Instance: 71Doc-RSV-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e808dd54-171f-4c29-a669-0c19dba7601a"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HF)
* date = "2023-09-20T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.09.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(71Doc-RSV-Obs)

Instance: 71Doc-RSV-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#105211-7
* subject = Reference(Pat-HF)
* effectiveDateTime = "2023-09-19T17:50:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(71Doc-RSV-Spec)

Instance: 71Doc-RSV-Spec
InstanceOf: Specimen
Usage: #inline
* subject = Reference(Pat-HF)
* collection.collectedDateTime = "2023-09-19"

Instance: 71Doc-RSV-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#105211-7
* subject = Reference(Pat-HF)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(71Doc-RSV-Spec)

Instance: 71Doc-RSV-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(71Doc-RSV-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e808dd54-171f-4c29-a669-0c19dba7601a"
* basedOn = Reference(71Doc-RSV-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HF)
* performer = Reference(Org-SanLab)
* specimen = Reference(71Doc-RSV-Spec)
* result = Reference(71Doc-RSV-Obs)
