Instance: 55Doc-Tollwut
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f7c2ac91-ce6f-47d4-bc1d-6f4f50527135"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/55Doc-Tollwut-Comp"
* entry[=].resource = 55Doc-Tollwut-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/55Doc-Tollwut-Obs"
* entry[=].resource = 55Doc-Tollwut-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/55Doc-Tollwut-Spec"
* entry[=].resource = 55Doc-Tollwut-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/55Doc-Tollwut-SR"
* entry[=].resource = 55Doc-Tollwut-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/55Doc-Tollwut-DR"
* entry[=].resource = 55Doc-Tollwut-DR

Instance: 55Doc-Tollwut-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f7c2ac91-ce6f-47d4-bc1d-6f4f50527135"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-10-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.10.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(55Doc-Tollwut-Obs)

Instance: 55Doc-Tollwut-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#70858-6
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(55Doc-Tollwut-Spec)

Instance: 55Doc-Tollwut-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 55Doc-Tollwut-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#70858-6
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(55Doc-Tollwut-Spec)

Instance: 55Doc-Tollwut-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(55Doc-Tollwut-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f7c2ac91-ce6f-47d4-bc1d-6f4f50527135"
* basedOn = Reference(55Doc-Tollwut-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(55Doc-Tollwut-Spec)
* result = Reference(55Doc-Tollwut-Obs)
