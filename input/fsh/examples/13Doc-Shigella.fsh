Instance: 13Doc-Shigella
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-413f-9690-9291adb2cb3b"
* type = #document
* timestamp = "2024-04-20T07:35:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/13Doc-Shigella-Comp"
* entry[=].resource = 13Doc-Shigella-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-MeierDonna"
* entry[=].resource = Pat-MeierDonna
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/13Doc-Shigella-Obs"
* entry[=].resource = 13Doc-Shigella-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/13Doc-Shigella-Spec"
* entry[=].resource = 13Doc-Shigella-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/13Doc-Shigella-SR"
* entry[=].resource = 13Doc-Shigella-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/13Doc-Shigella-DR"
* entry[=].resource = 13Doc-Shigella-DR

Instance: 13Doc-Shigella-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-413f-9690-9291adb2cb3b"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MeierDonna)
* date = "2024-04-20T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.04.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(13Doc-Shigella-Obs)

Instance: 13Doc-Shigella-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#46454-5
* subject = Reference(Pat-MeierDonna)
* effectiveDateTime = "2024-04-20T07:35:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#125020009
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(13Doc-Shigella-Spec)

Instance: 13Doc-Shigella-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-MeierDonna)
* collection.collectedDateTime = "2024-04-18"

Instance: 13Doc-Shigella-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#46454-5
* subject = Reference(Pat-MeierDonna)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(13Doc-Shigella-Spec)

Instance: 13Doc-Shigella-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(13Doc-Shigella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-413f-9690-9291adb2cb3b"
* basedOn = Reference(13Doc-Shigella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MeierDonna)
* performer = Reference(Org-SanLab)
* specimen = Reference(13Doc-Shigella-Spec)
* result = Reference(13Doc-Shigella-Obs)
