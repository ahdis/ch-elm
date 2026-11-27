Instance: 8Doc-HepatiteB
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2101332d-6012-443f-9690-9291adb23a5c"
* type = #document
* timestamp = "2024-04-10T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/8Doc-HepatiteB-Comp"
* entry[=].resource = 8Doc-HepatiteB-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-DelematMonika"
* entry[=].resource = Pat-DelematMonika
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/8Doc-HepatiteB-Obs"
* entry[=].resource = 8Doc-HepatiteB-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser-2"
* entry[=].resource = Pract-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PraxisDrHauser"
* entry[=].resource = Org-PraxisDrHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser-2"
* entry[=].resource = PR-PeterHauser-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/8Doc-HepatiteB-Spec"
* entry[=].resource = 8Doc-HepatiteB-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/8Doc-HepatiteB-SR"
* entry[=].resource = 8Doc-HepatiteB-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/8Doc-HepatiteB-DR"
* entry[=].resource = 8Doc-HepatiteB-DR

Instance: 8Doc-HepatiteB-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2101332d-6012-443f-9690-9291adb23a5c"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DelematMonika)
* date = "2024-04-10T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 10.04.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(8Doc-HepatiteB-Obs)

Instance: 8Doc-HepatiteB-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#31204-1
* subject = Reference(Pat-DelematMonika)
* effectiveDateTime = "2024-04-10T12:00:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(8Doc-HepatiteB-Spec)

Instance: 8Doc-HepatiteB-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-DelematMonika)
* collection.collectedDateTime = "2024-04-09"

Instance: 8Doc-HepatiteB-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#31204-1
* subject = Reference(Pat-DelematMonika)
* requester = Reference(PR-PeterHauser-2)
* specimen = Reference(8Doc-HepatiteB-Spec)

Instance: 8Doc-HepatiteB-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(8Doc-HepatiteB-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2101332d-6012-443f-9690-9291adb23a5c"
* basedOn = Reference(8Doc-HepatiteB-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DelematMonika)
* performer = Reference(Org-SanLab)
* specimen = Reference(8Doc-HepatiteB-Spec)
* result = Reference(8Doc-HepatiteB-Obs)
