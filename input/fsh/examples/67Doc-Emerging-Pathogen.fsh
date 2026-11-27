Instance: 67Doc-Emerging-Pathogen
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ea0a27a6-7693-49df-83be-3b298143aef6"
* type = #document
* timestamp = "2025-11-11T12:34:56+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/67Doc-Emerging-Pathogen-Comp"
* entry[=].resource = 67Doc-Emerging-Pathogen-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont-3"
* entry[=].resource = Pat-AntoineDupont-3
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/67Doc-Emerging-Pathogen-Obs"
* entry[=].resource = 67Doc-Emerging-Pathogen-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/67Doc-Emerging-Pathogen-Spec"
* entry[=].resource = 67Doc-Emerging-Pathogen-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/67Doc-Emerging-Pathogen-SR"
* entry[=].resource = 67Doc-Emerging-Pathogen-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/67Doc-Emerging-Pathogen-DR"
* entry[=].resource = 67Doc-Emerging-Pathogen-DR

Instance: 67Doc-Emerging-Pathogen-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ea0a27a6-7693-49df-83be-3b298143aef6"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-3)
* date = "2025-11-11T12:34:56+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 11.11.2025"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(67Doc-Emerging-Pathogen-Obs)

Instance: 67Doc-Emerging-Pathogen-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = urn:oid:2.16.756.5.30.1.129.1.5.1#EP-100100-7 "FOPH emerging pathogen placeholder 1"
* subject = Reference(Pat-AntoineDupont-3)
* effectiveDateTime = "2025-11-11T10:34:56+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(67Doc-Emerging-Pathogen-Spec)

Instance: 67Doc-Emerging-Pathogen-Spec
InstanceOf: Specimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont-3)
* collection.collectedDateTime = "2025-11-10T12:34:56+02:00"

Instance: 67Doc-Emerging-Pathogen-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "36500923689"
* status = #completed
* intent = #order
* code = urn:oid:2.16.756.5.30.1.129.1.5.1#EP-100100-7 "FOPH emerging pathogen placeholder"
* subject = Reference(Pat-AntoineDupont-3)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(67Doc-Emerging-Pathogen-Spec)

Instance: 67Doc-Emerging-Pathogen-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(67Doc-Emerging-Pathogen-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ea0a27a6-7693-49df-83be-3b298143aef6"
* basedOn = Reference(67Doc-Emerging-Pathogen-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-3)
* performer = Reference(Org-SanLab)
* specimen = Reference(67Doc-Emerging-Pathogen-Spec)
* result = Reference(67Doc-Emerging-Pathogen-Obs)
