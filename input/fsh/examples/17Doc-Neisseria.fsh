Instance: 17Doc-Neisseria
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* type = #document
* timestamp = "2024-07-14T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/17Doc-Neisseria-Comp"
* entry[=].resource = 17Doc-Neisseria-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/17Doc-Neisseria-Obs"
* entry[=].resource = 17Doc-Neisseria-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/17Doc-Neisseria-Spec"
* entry[=].resource = 17Doc-Neisseria-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/17Doc-Neisseria-SR"
* entry[=].resource = 17Doc-Neisseria-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/17Doc-Neisseria-DR"
* entry[=].resource = 17Doc-Neisseria-DR

Instance: 17Doc-Neisseria-Comp
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
* date = "2024-07-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.7.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(17Doc-Neisseria-Obs)

Instance: 17Doc-Neisseria-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14357-8
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-07T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#17872004
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(17Doc-Neisseria-Spec)

Instance: 17Doc-Neisseria-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-05T09:15:00+02:00"

Instance: 17Doc-Neisseria-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "50002610"
* status = #completed
* intent = #order
* code = $loinc#14357-8
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(17Doc-Neisseria-Spec)

Instance: 17Doc-Neisseria-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(17Doc-Neisseria-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* basedOn = Reference(17Doc-Neisseria-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(17Doc-Neisseria-Spec)
* result = Reference(17Doc-Neisseria-Obs)
