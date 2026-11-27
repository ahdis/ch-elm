Instance: 48Doc-Mpox-Clade
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/48Doc-Mpox-Clade-Comp"
* entry[=].resource = 48Doc-Mpox-Clade-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/48Doc-Mpox-Clade-Obs"
* entry[=].resource = 48Doc-Mpox-Clade-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser-2"
* entry[=].resource = Pract-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PraxisDrHauser"
* entry[=].resource = Org-PraxisDrHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser-2"
* entry[=].resource = PR-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/48Doc-Mpox-Clade-Spec"
* entry[=].resource = 48Doc-Mpox-Clade-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/48Doc-Mpox-Clade-SR"
* entry[=].resource = 48Doc-Mpox-Clade-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/48Doc-Mpox-Clade-DR"
* entry[=].resource = 48Doc-Mpox-Clade-DR

Instance: 48Doc-Mpox-Clade-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
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
* section.entry = Reference(48Doc-Mpox-Clade-Obs)

Instance: 48Doc-Mpox-Clade-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#101003-2
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#258368005 "Group 1B (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(48Doc-Mpox-Clade-Spec)

Instance: 48Doc-Mpox-Clade-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 48Doc-Mpox-Clade-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#101003-2
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser-2)
* specimen = Reference(48Doc-Mpox-Clade-Spec)

Instance: 48Doc-Mpox-Clade-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(48Doc-Mpox-Clade-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* basedOn = Reference(48Doc-Mpox-Clade-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(48Doc-Mpox-Clade-Spec)
* result = Reference(48Doc-Mpox-Clade-Obs)
