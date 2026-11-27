Instance: 49Doc-HIV
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6334adb23aac"
* type = #document
* timestamp = "2024-11-06T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/49Doc-HIV-Comp"
* entry[=].resource = 49Doc-HIV-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-49Doc-HIV"
* entry[=].resource = Pat-49Doc-HIV
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/49Doc-HIV-Obs"
* entry[=].resource = 49Doc-HIV-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/49Doc-HIV-Spec"
* entry[=].resource = 49Doc-HIV-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/49Doc-HIV-SR"
* entry[=].resource = 49Doc-HIV-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/49Doc-HIV-DR"
* entry[=].resource = 49Doc-HIV-DR

Instance: 49Doc-HIV-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6334adb23aac"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-49Doc-HIV)
* date = "2024-11-06T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 6.11.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(49Doc-HIV-Obs)

Instance: 49Doc-HIV-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $sct#89293008
* subject = Reference(Pat-49Doc-HIV)
* effectiveDateTime = "2024-11-04T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(49Doc-HIV-Spec)

Instance: 49Doc-HIV-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-49Doc-HIV)
* collection.collectedDateTime = "2024-11-01T14:20:00+02:00"

Instance: 49Doc-HIV-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $sct#89293008
* subject = Reference(Pat-49Doc-HIV)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(49Doc-HIV-Spec)

Instance: 49Doc-HIV-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(49Doc-HIV-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6334adb23aac"
* basedOn = Reference(49Doc-HIV-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-49Doc-HIV)
* performer = Reference(Org-SanLab)
* specimen = Reference(49Doc-HIV-Spec)
* result = Reference(49Doc-HIV-Obs)
