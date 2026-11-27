Instance: 32Doc-Rubella-avidity
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6331adb23aab"
* type = #document
* timestamp = "2024-10-06T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/32Doc-Rubella-avidity-Comp"
* entry[=].resource = 32Doc-Rubella-avidity-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/32Doc-Rubella-avidity-Obs"
* entry[=].resource = 32Doc-Rubella-avidity-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/32Doc-Rubella-avidity-Spec"
* entry[=].resource = 32Doc-Rubella-avidity-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/32Doc-Rubella-avidity-SR"
* entry[=].resource = 32Doc-Rubella-avidity-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/32Doc-Rubella-avidity-DR"
* entry[=].resource = 32Doc-Rubella-avidity-DR

Instance: 32Doc-Rubella-avidity-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6331adb23aab"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-10-06T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 6.10.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(32Doc-Rubella-avidity-Obs)

Instance: 32Doc-Rubella-avidity-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#52986-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-04T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $sct#62482003
* specimen = Reference(32Doc-Rubella-avidity-Spec)

Instance: 32Doc-Rubella-avidity-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-01T14:20:00+02:00"

Instance: 32Doc-Rubella-avidity-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#52986-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(32Doc-Rubella-avidity-Spec)

Instance: 32Doc-Rubella-avidity-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(32Doc-Rubella-avidity-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6331adb23aab"
* basedOn = Reference(32Doc-Rubella-avidity-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(32Doc-Rubella-avidity-Spec)
* result = Reference(32Doc-Rubella-avidity-Obs)
