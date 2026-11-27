Instance: 56Doc-Trichinella-spiralis
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b4d9ac50-e72b-4404-adbf-b6006e396e34"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/56Doc-Trichinella-spiralis-Comp"
* entry[=].resource = 56Doc-Trichinella-spiralis-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AD"
* entry[=].resource = Pat-AD
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/56Doc-Trichinella-spiralis-Obs"
* entry[=].resource = 56Doc-Trichinella-spiralis-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/56Doc-Trichinella-spiralis-Spec"
* entry[=].resource = 56Doc-Trichinella-spiralis-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/56Doc-Trichinella-spiralis-SR"
* entry[=].resource = 56Doc-Trichinella-spiralis-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/56Doc-Trichinella-spiralis-DR"
* entry[=].resource = 56Doc-Trichinella-spiralis-DR

Instance: 56Doc-Trichinella-spiralis-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b4d9ac50-e72b-4404-adbf-b6006e396e34"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AD)
* date = "2024-10-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.10.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(56Doc-Trichinella-spiralis-Obs)

Instance: 56Doc-Trichinella-spiralis-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#23499-7
* subject = Reference(Pat-AD)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(56Doc-Trichinella-spiralis-Spec)

Instance: 56Doc-Trichinella-spiralis-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AD)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 56Doc-Trichinella-spiralis-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#23499-7
* subject = Reference(Pat-AD)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(56Doc-Trichinella-spiralis-Spec)

Instance: 56Doc-Trichinella-spiralis-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(56Doc-Trichinella-spiralis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b4d9ac50-e72b-4404-adbf-b6006e396e34"
* basedOn = Reference(56Doc-Trichinella-spiralis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AD)
* performer = Reference(Org-SanLab)
* specimen = Reference(56Doc-Trichinella-spiralis-Spec)
* result = Reference(56Doc-Trichinella-spiralis-Obs)
