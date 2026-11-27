Instance: 52Doc-Hantavirus
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8a1d658b-f470-40fe-97f3-82b2a83a9b59"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/52Doc-Hantavirus-Comp"
* entry[=].resource = 52Doc-Hantavirus-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AD"
* entry[=].resource = Pat-AD
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/52Doc-Hantavirus-Obs"
* entry[=].resource = 52Doc-Hantavirus-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/52Doc-Hantavirus-Spec"
* entry[=].resource = 52Doc-Hantavirus-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/52Doc-Hantavirus-SR"
* entry[=].resource = 52Doc-Hantavirus-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/52Doc-Hantavirus-DR"
* entry[=].resource = 52Doc-Hantavirus-DR

Instance: 52Doc-Hantavirus-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8a1d658b-f470-40fe-97f3-82b2a83a9b59"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AD)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(52Doc-Hantavirus-Obs)

Instance: 52Doc-Hantavirus-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#86520-4
* subject = Reference(Pat-AD)
* effectiveDateTime = "2024-08-28T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#40754006
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(52Doc-Hantavirus-Spec)

Instance: 52Doc-Hantavirus-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AD)
* collection.collectedDateTime = "2024-08-26T14:20:00+02:00"

Instance: 52Doc-Hantavirus-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#86520-4
* subject = Reference(Pat-AD)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(52Doc-Hantavirus-Spec)

Instance: 52Doc-Hantavirus-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(52Doc-Hantavirus-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8a1d658b-f470-40fe-97f3-82b2a83a9b59"
* basedOn = Reference(52Doc-Hantavirus-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AD)
* performer = Reference(Org-SanLab)
* specimen = Reference(52Doc-Hantavirus-Spec)
* result = Reference(52Doc-Hantavirus-Obs)
