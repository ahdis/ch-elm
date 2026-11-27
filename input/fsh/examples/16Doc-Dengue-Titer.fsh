Instance: 16Doc-Dengue-Titer
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae659833-0162-47b7-a2f9-41a7d90f3f9d"
* type = #document
* timestamp = "2024-07-25T08:30:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/16Doc-Dengue-Titer-Comp"
* entry[=].resource = 16Doc-Dengue-Titer-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/16Doc-Dengue-Titer-Obs"
* entry[=].resource = 16Doc-Dengue-Titer-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-JeanneMoreau"
* entry[=].resource = Pract-JeanneMoreau
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-HopitalRegionalSoleil"
* entry[=].resource = Org-HopitalRegionalSoleil
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-JeanneMoreau-2"
* entry[=].resource = PR-JeanneMoreau-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/16Doc-Dengue-Titer-Spec"
* entry[=].resource = 16Doc-Dengue-Titer-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/16Doc-Dengue-Titer-SR"
* entry[=].resource = 16Doc-Dengue-Titer-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/16Doc-Dengue-Titer-DR"
* entry[=].resource = 16Doc-Dengue-Titer-DR

Instance: 16Doc-Dengue-Titer-Comp
InstanceOf: Composition
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae659833-0162-47b7-a2f9-41a7d90f3f9d"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-07-25T08:30:00+02:00"
* author = Reference(Org-SanLab)
* title = "Rapport de laboratoire du 25.7.2024"
* section.title = "Résultats de l'analyse microbiologique"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(16Doc-Dengue-Titer-Obs)

Instance: 16Doc-Dengue-Titer-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#6811-4
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-24T07:40:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#U
* specimen = Reference(16Doc-Dengue-Titer-Spec)

Instance: 16Doc-Dengue-Titer-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-22T07:40:00+02:00"

Instance: 16Doc-Dengue-Titer-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "28541215633"
* status = #completed
* intent = #order
* code = $loinc#6811-4
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-JeanneMoreau-2)
* specimen = Reference(16Doc-Dengue-Titer-Spec)

Instance: 16Doc-Dengue-Titer-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(16Doc-Dengue-Titer-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae659833-0162-47b7-a2f9-41a7d90f3f9d"
* basedOn = Reference(16Doc-Dengue-Titer-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(16Doc-Dengue-Titer-Spec)
* result = Reference(16Doc-Dengue-Titer-Obs)
