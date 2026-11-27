Instance: 25Doc-Tick-borne-encephalitis
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/25Doc-Tick-borne-encephalitis-Comp"
* entry[=].resource = 25Doc-Tick-borne-encephalitis-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-DM"
* entry[=].resource = Pat-DM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/25Doc-Tick-borne-encephalitis-Obs"
* entry[=].resource = 25Doc-Tick-borne-encephalitis-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-MonikaGiacometti"
* entry[=].resource = Pract-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-KantonsspitalABC"
* entry[=].resource = Org-KantonsspitalABC
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-MonikaGiacometti"
* entry[=].resource = PR-MonikaGiacometti
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/25Doc-Tick-borne-encephalitis-Spec"
* entry[=].resource = 25Doc-Tick-borne-encephalitis-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/25Doc-Tick-borne-encephalitis-SR"
* entry[=].resource = 25Doc-Tick-borne-encephalitis-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/25Doc-Tick-borne-encephalitis-DR"
* entry[=].resource = 25Doc-Tick-borne-encephalitis-DR

Instance: 25Doc-Tick-borne-encephalitis-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DM)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(25Doc-Tick-borne-encephalitis-Obs)

Instance: 25Doc-Tick-borne-encephalitis-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#31828-7
* subject = Reference(Pat-DM)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#91508008
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(25Doc-Tick-borne-encephalitis-Spec)

Instance: 25Doc-Tick-borne-encephalitis-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-DM)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 25Doc-Tick-borne-encephalitis-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#31828-7
* subject = Reference(Pat-DM)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(25Doc-Tick-borne-encephalitis-Spec)

Instance: 25Doc-Tick-borne-encephalitis-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(25Doc-Tick-borne-encephalitis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* basedOn = Reference(25Doc-Tick-borne-encephalitis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DM)
* performer = Reference(Org-SanLab)
* specimen = Reference(25Doc-Tick-borne-encephalitis-Spec)
* result = Reference(25Doc-Tick-borne-encephalitis-Obs)
