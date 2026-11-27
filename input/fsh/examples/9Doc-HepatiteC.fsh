Instance: 9Doc-HepatiteC
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901862d-6012-443f-9690-9291adb2aa34"
* type = #document
* timestamp = "2024-04-17T08:30:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/9Doc-HepatiteC-Comp"
* entry[=].resource = 9Doc-HepatiteC-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/9Doc-HepatiteC-Obs"
* entry[=].resource = 9Doc-HepatiteC-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-JeanneMoreau-2"
* entry[=].resource = Pract-JeanneMoreau-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-HopitalRegionalSoleil"
* entry[=].resource = Org-HopitalRegionalSoleil
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-JeanneMoreau-2"
* entry[=].resource = PR-JeanneMoreau-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/9Doc-HepatiteC-Spec"
* entry[=].resource = 9Doc-HepatiteC-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/9Doc-HepatiteC-SR"
* entry[=].resource = 9Doc-HepatiteC-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/9Doc-HepatiteC-DR"
* entry[=].resource = 9Doc-HepatiteC-DR

Instance: 9Doc-HepatiteC-Comp
InstanceOf: Composition
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901862d-6012-443f-9690-9291adb2aa34"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-04-17T08:30:00+02:00"
* author = Reference(Org-SanLab)
* title = "Rapport de laboratoire du 17.04.2024"
* section.title = "Résultats de l'analyse microbiologique"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(9Doc-HepatiteC-Obs)

Instance: 9Doc-HepatiteC-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#5199-5
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-04-17T08:30:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(9Doc-HepatiteC-Spec)

Instance: 9Doc-HepatiteC-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-04-15"

Instance: 9Doc-HepatiteC-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "28541215633"
* status = #completed
* intent = #order
* code = $loinc#5199-5
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-JeanneMoreau-2)
* specimen = Reference(9Doc-HepatiteC-Spec)

Instance: 9Doc-HepatiteC-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(9Doc-HepatiteC-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901862d-6012-443f-9690-9291adb2aa34"
* basedOn = Reference(9Doc-HepatiteC-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(9Doc-HepatiteC-Spec)
* result = Reference(9Doc-HepatiteC-Obs)
