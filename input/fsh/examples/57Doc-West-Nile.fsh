Instance: 57Doc-West-Nile
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6401332d-6012-443f-9690-9331adb23aab"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/57Doc-West-Nile-Comp"
* entry[=].resource = 57Doc-West-Nile-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/57Doc-West-Nile-Obs"
* entry[=].resource = 57Doc-West-Nile-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser-2"
* entry[=].resource = Pract-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PraxisDrHauser"
* entry[=].resource = Org-PraxisDrHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser-2"
* entry[=].resource = PR-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/57Doc-West-Nile-Spec"
* entry[=].resource = 57Doc-West-Nile-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/57Doc-West-Nile-SR"
* entry[=].resource = 57Doc-West-Nile-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/57Doc-West-Nile-DR"
* entry[=].resource = 57Doc-West-Nile-DR

Instance: 57Doc-West-Nile-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6401332d-6012-443f-9690-9331adb23aab"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(57Doc-West-Nile-Obs)

Instance: 57Doc-West-Nile-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#6584-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-28T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#57311007
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(57Doc-West-Nile-Spec)

Instance: 57Doc-West-Nile-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-26T14:20:00+02:00"

Instance: 57Doc-West-Nile-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#6584-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser-2)
* specimen = Reference(57Doc-West-Nile-Spec)

Instance: 57Doc-West-Nile-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(57Doc-West-Nile-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6401332d-6012-443f-9690-9331adb23aab"
* basedOn = Reference(57Doc-West-Nile-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(57Doc-West-Nile-Spec)
* result = Reference(57Doc-West-Nile-Obs)
