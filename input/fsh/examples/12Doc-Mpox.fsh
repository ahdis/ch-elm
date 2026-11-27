Instance: 12Doc-Mpox
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6041-443f-9690-9291adb2cb3b"
* type = #document
* timestamp = "2024-04-28T07:35:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/12Doc-Mpox-Comp"
* entry[=].resource = 12Doc-Mpox-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-HildetterFrida"
* entry[=].resource = Pat-HildetterFrida
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/12Doc-Mpox-Obs"
* entry[=].resource = 12Doc-Mpox-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/12Doc-Mpox-Spec"
* entry[=].resource = 12Doc-Mpox-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/12Doc-Mpox-SR"
* entry[=].resource = 12Doc-Mpox-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/12Doc-Mpox-DR"
* entry[=].resource = 12Doc-Mpox-DR

Instance: 12Doc-Mpox-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6041-443f-9690-9291adb2cb3b"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HildetterFrida)
* date = "2024-04-28T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 28.04.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(12Doc-Mpox-Obs)

Instance: 12Doc-Mpox-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#100383-9
* subject = Reference(Pat-HildetterFrida)
* effectiveDateTime = "2024-04-28T07:35:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(12Doc-Mpox-Spec)

Instance: 12Doc-Mpox-Spec
InstanceOf: Specimen
Usage: #inline
* type = $sct#608969007
* subject = Reference(Pat-HildetterFrida)
* collection.collectedDateTime = "2024-04-26"

Instance: 12Doc-Mpox-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#100383-9
* subject = Reference(Pat-HildetterFrida)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(12Doc-Mpox-Spec)

Instance: 12Doc-Mpox-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(12Doc-Mpox-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6041-443f-9690-9291adb2cb3b"
* basedOn = Reference(12Doc-Mpox-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HildetterFrida)
* performer = Reference(Org-SanLab)
* specimen = Reference(12Doc-Mpox-Spec)
* result = Reference(12Doc-Mpox-Obs)
