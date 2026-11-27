Instance: 53Doc-InfluenzaHxNy
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:44c4f804-ee10-47e6-9df8-4bf7d2b28d94"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/53Doc-InfluenzaHxNy-Comp"
* entry[=].resource = 53Doc-InfluenzaHxNy-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/53Doc-InfluenzaHxNy-Obs"
* entry[=].resource = 53Doc-InfluenzaHxNy-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/53Doc-InfluenzaHxNy-Spec"
* entry[=].resource = 53Doc-InfluenzaHxNy-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/53Doc-InfluenzaHxNy-SR"
* entry[=].resource = 53Doc-InfluenzaHxNy-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/53Doc-InfluenzaHxNy-DR"
* entry[=].resource = 53Doc-InfluenzaHxNy-DR

Instance: 53Doc-InfluenzaHxNy-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:44c4f804-ee10-47e6-9df8-4bf7d2b28d94"
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
* section.entry = Reference(53Doc-InfluenzaHxNy-Obs)

Instance: 53Doc-InfluenzaHxNy-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#59423-4
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-28T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#700349009
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(53Doc-InfluenzaHxNy-Spec)

Instance: 53Doc-InfluenzaHxNy-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-26T14:20:00+02:00"

Instance: 53Doc-InfluenzaHxNy-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#59423-4
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(53Doc-InfluenzaHxNy-Spec)

Instance: 53Doc-InfluenzaHxNy-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(53Doc-InfluenzaHxNy-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:44c4f804-ee10-47e6-9df8-4bf7d2b28d94"
* basedOn = Reference(53Doc-InfluenzaHxNy-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(53Doc-InfluenzaHxNy-Spec)
* result = Reference(53Doc-InfluenzaHxNy-Obs)
