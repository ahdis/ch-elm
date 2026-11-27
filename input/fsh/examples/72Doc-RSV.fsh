Instance: 72Doc-RSV
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:84edb280-1ee5-408f-bc8c-44fe6fddbb67"
* type = #document
* timestamp = "2023-09-20T07:35:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/72Doc-RSV-Comp"
* entry[=].resource = 72Doc-RSV-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-HF"
* entry[=].resource = Pat-HF
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/72Doc-RSV-Obs"
* entry[=].resource = 72Doc-RSV-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/72Doc-RSV-Spec"
* entry[=].resource = 72Doc-RSV-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/72Doc-RSV-SR"
* entry[=].resource = 72Doc-RSV-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/72Doc-RSV-DR"
* entry[=].resource = 72Doc-RSV-DR

Instance: 72Doc-RSV-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:84edb280-1ee5-408f-bc8c-44fe6fddbb67"
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
* section.entry = Reference(72Doc-RSV-Obs)

Instance: 72Doc-RSV-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#40988-8
* subject = Reference(Pat-HF)
* effectiveDateTime = "2023-09-19T17:50:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(72Doc-RSV-Spec)

Instance: 72Doc-RSV-Spec
InstanceOf: Specimen
Usage: #inline
* type = $sct#447154002
* type.text = "Specimen from nose"
* subject = Reference(Pat-HF)
* collection.collectedDateTime = "2023-09-19"

Instance: 72Doc-RSV-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#40988-8
* subject = Reference(Pat-HF)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(72Doc-RSV-Spec)

Instance: 72Doc-RSV-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(72Doc-RSV-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:84edb280-1ee5-408f-bc8c-44fe6fddbb67"
* basedOn = Reference(72Doc-RSV-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HF)
* performer = Reference(Org-SanLab)
* specimen = Reference(72Doc-RSV-Spec)
* result = Reference(72Doc-RSV-Obs)
