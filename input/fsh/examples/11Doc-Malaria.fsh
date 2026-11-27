Instance: 11Doc-Malaria
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1904332d-6012-443f-9690-9291adb234fe"
* type = #document
* timestamp = "2023-09-15T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/11Doc-Malaria-Comp"
* entry[=].resource = 11Doc-Malaria-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/11Doc-Malaria-Obs"
* entry[=].resource = 11Doc-Malaria-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/11Doc-Malaria-Spec"
* entry[=].resource = 11Doc-Malaria-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/11Doc-Malaria-SR"
* entry[=].resource = 11Doc-Malaria-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/11Doc-Malaria-DR"
* entry[=].resource = 11Doc-Malaria-DR

Instance: 11Doc-Malaria-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1904332d-6012-443f-9690-9291adb234fe"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2023-09-15T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 15.09.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(11Doc-Malaria-Obs)

Instance: 11Doc-Malaria-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#70568-1
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2023-09-15T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(11Doc-Malaria-Spec)

Instance: 11Doc-Malaria-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2023-09-12"

Instance: 11Doc-Malaria-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "23846922417"
* status = #completed
* intent = #order
* code = $loinc#70568-1
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(11Doc-Malaria-Spec)

Instance: 11Doc-Malaria-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(11Doc-Malaria-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1904332d-6012-443f-9690-9291adb234fe"
* basedOn = Reference(11Doc-Malaria-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(11Doc-Malaria-Spec)
* result = Reference(11Doc-Malaria-Obs)
