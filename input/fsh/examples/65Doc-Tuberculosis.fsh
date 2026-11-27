Instance: 65Doc-Tuberculosis
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2e83093f-ff6b-42d3-8188-8ff8fdda3182"
* type = #document
* timestamp = "2025-03-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/65Doc-Tuberculosis-Comp"
* entry[=].resource = 65Doc-Tuberculosis-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-ErnstKarlTanner"
* entry[=].resource = Pat-ErnstKarlTanner
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/65Doc-Tuberculosis-Obs"
* entry[=].resource = 65Doc-Tuberculosis-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/65Doc-Tuberculosis-Spec"
* entry[=].resource = 65Doc-Tuberculosis-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/65Doc-Tuberculosis-SR"
* entry[=].resource = 65Doc-Tuberculosis-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/65Doc-Tuberculosis-DR"
* entry[=].resource = 65Doc-Tuberculosis-DR

Instance: 65Doc-Tuberculosis-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2e83093f-ff6b-42d3-8188-8ff8fdda3182"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-ErnstKarlTanner)
* date = "2025-03-17T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 17.03.2025"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(65Doc-Tuberculosis-Obs)

Instance: 65Doc-Tuberculosis-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#9823-6
* subject = Reference(Pat-ErnstKarlTanner)
* effectiveDateTime = "2025-01-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#51320008
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(65Doc-Tuberculosis-Spec)

Instance: 65Doc-Tuberculosis-Spec
InstanceOf: Specimen
Usage: #inline
* subject = Reference(Pat-ErnstKarlTanner)
* collection.collectedDateTime = "2025-01-17T14:20:00+02:00"

Instance: 65Doc-Tuberculosis-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $loinc#9823-6
* subject = Reference(Pat-ErnstKarlTanner)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(65Doc-Tuberculosis-Spec)

Instance: 65Doc-Tuberculosis-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(65Doc-Tuberculosis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2e83093f-ff6b-42d3-8188-8ff8fdda3182"
* basedOn = Reference(65Doc-Tuberculosis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-ErnstKarlTanner)
* performer = Reference(Org-SanLab)
* specimen = Reference(65Doc-Tuberculosis-Spec)
* result = Reference(65Doc-Tuberculosis-Obs)
