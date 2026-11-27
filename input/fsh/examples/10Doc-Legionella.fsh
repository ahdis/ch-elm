Instance: 10Doc-Legionella
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1991332d-6012-443f-9690-9291d0b2cb3b"
* type = #document
* timestamp = "2023-09-20T07:35:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/10Doc-Legionella-Comp"
* entry[=].resource = 10Doc-Legionella-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-HerberFrimousse"
* entry[=].resource = Pat-HerberFrimousse
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/10Doc-Legionella-Obs"
* entry[=].resource = 10Doc-Legionella-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/10Doc-Legionella-Spec"
* entry[=].resource = 10Doc-Legionella-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/10Doc-Legionella-SR"
* entry[=].resource = 10Doc-Legionella-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/10Doc-Legionella-DR"
* entry[=].resource = 10Doc-Legionella-DR

Instance: 10Doc-Legionella-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1991332d-6012-443f-9690-9291d0b2cb3b"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HerberFrimousse)
* date = "2023-09-20T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.09.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(10Doc-Legionella-Obs)

Instance: 10Doc-Legionella-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#32781-7
* subject = Reference(Pat-HerberFrimousse)
* effectiveDateTime = "2023-09-20T17:50:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#103448007
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(10Doc-Legionella-Spec)

Instance: 10Doc-Legionella-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-HerberFrimousse)
* collection.collectedDateTime = "2023-09-18"

Instance: 10Doc-Legionella-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#32781-7
* subject = Reference(Pat-HerberFrimousse)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(10Doc-Legionella-Spec)

Instance: 10Doc-Legionella-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(10Doc-Legionella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1991332d-6012-443f-9690-9291d0b2cb3b"
* basedOn = Reference(10Doc-Legionella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HerberFrimousse)
* performer = Reference(Org-SanLab)
* specimen = Reference(10Doc-Legionella-Spec)
* result = Reference(10Doc-Legionella-Obs)
