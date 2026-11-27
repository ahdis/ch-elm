Instance: 29Doc-Rubella
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/29Doc-Rubella-Comp"
* entry[=].resource = 29Doc-Rubella-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/29Doc-Rubella-Obs"
* entry[=].resource = 29Doc-Rubella-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser-2"
* entry[=].resource = Pract-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PraxisDrHauser"
* entry[=].resource = Org-PraxisDrHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser-2"
* entry[=].resource = PR-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/29Doc-Rubella-Spec"
* entry[=].resource = 29Doc-Rubella-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/29Doc-Rubella-SR"
* entry[=].resource = 29Doc-Rubella-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/29Doc-Rubella-DR"
* entry[=].resource = 29Doc-Rubella-DR

Instance: 29Doc-Rubella-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
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
* section.entry = Reference(29Doc-Rubella-Obs)

Instance: 29Doc-Rubella-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#20458-6
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $sct#1290194006
* specimen = Reference(29Doc-Rubella-Spec)

Instance: 29Doc-Rubella-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-23T14:20:00+02:00"

Instance: 29Doc-Rubella-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#20458-6
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser-2)
* specimen = Reference(29Doc-Rubella-Spec)

Instance: 29Doc-Rubella-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(29Doc-Rubella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* basedOn = Reference(29Doc-Rubella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(29Doc-Rubella-Spec)
* result = Reference(29Doc-Rubella-Obs)
