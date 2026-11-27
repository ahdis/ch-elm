Instance: 14Doc-Neisseriameningitidis-confirmationtest
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901252d-6012-443f-9690-9291adb234fe"
* type = #document
* timestamp = "2024-08-04T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/14Doc-Neisseriameningitidis-confirmationtest-Comp"
* entry[=].resource = 14Doc-Neisseriameningitidis-confirmationtest-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-NationalesZentrumFurMeningokokken"
* entry[=].resource = Org-NationalesZentrumFurMeningokokken
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/14Doc-Neisseriameningitidis-confirmationtest-Obs"
* entry[=].resource = 14Doc-Neisseriameningitidis-confirmationtest-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-AndreaGasser"
* entry[=].resource = Pract-AndreaGasser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab-2"
* entry[=].resource = Org-SanLab-2
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-AndreaGasser"
* entry[=].resource = PR-AndreaGasser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/14Doc-Neisseriameningitidis-confirmationtest-Spec"
* entry[=].resource = 14Doc-Neisseriameningitidis-confirmationtest-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/14Doc-Neisseriameningitidis-confirmationtest-SR"
* entry[=].resource = 14Doc-Neisseriameningitidis-confirmationtest-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/14Doc-Neisseriameningitidis-confirmationtest-DR"
* entry[=].resource = 14Doc-Neisseriameningitidis-confirmationtest-DR

Instance: 14Doc-Neisseriameningitidis-confirmationtest-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901252d-6012-443f-9690-9291adb234fe"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2024-08-04T11:00:00+02:00"
* author = Reference(Org-NationalesZentrumFurMeningokokken)
* title = "Laborbericht vom 4.8.2024"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(14Doc-Neisseriameningitidis-confirmationtest-Obs)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#86581-6
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-04T09:15:00+02:00"
* performer = Reference(Org-NationalesZentrumFurMeningokokken)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(14Doc-Neisseriameningitidis-confirmationtest-Spec)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-Spec
InstanceOf: Specimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-02T09:15:00+02:00"

Instance: 14Doc-Neisseriameningitidis-confirmationtest-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "98236973414"
* requisition.value = "50002610"
* status = #completed
* intent = #order
* code = $loinc#86581-6
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-AndreaGasser)
* specimen = Reference(14Doc-Neisseriameningitidis-confirmationtest-Spec)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(14Doc-Neisseriameningitidis-confirmationtest-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901252d-6012-443f-9690-9291adb234fe"
* basedOn = Reference(14Doc-Neisseriameningitidis-confirmationtest-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-NationalesZentrumFurMeningokokken)
* specimen = Reference(14Doc-Neisseriameningitidis-confirmationtest-Spec)
* result = Reference(14Doc-Neisseriameningitidis-confirmationtest-Obs)
