Instance: 58Doc-Coxiella
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a55cb56b-12f2-4b59-9316-f6f0ff27d89d"
* type = #document
* timestamp = "2025-01-20T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/58Doc-Coxiella-Comp"
* entry[=].resource = 58Doc-Coxiella-Comp
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-AntoineDupont"
* entry[=].resource = Pat-AntoineDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-SanLab"
* entry[=].resource = Org-SanLab
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/58Doc-Coxiella-Obs"
* entry[=].resource = 58Doc-Coxiella-Obs
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/58Doc-Coxiella-Spec"
* entry[=].resource = 58Doc-Coxiella-Spec
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/58Doc-Coxiella-SR"
* entry[=].resource = 58Doc-Coxiella-SR
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/58Doc-Coxiella-DR"
* entry[=].resource = 58Doc-Coxiella-DR

Instance: 58Doc-Coxiella-Comp
InstanceOf: Composition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a55cb56b-12f2-4b59-9316-f6f0ff27d89d"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* date = "2025-01-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.01.2025"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(58Doc-Coxiella-Obs)

Instance: 58Doc-Coxiella-Obs
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#9709-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2025-01-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueRatio.numerator = 1 '1'
* valueRatio.denominator = 200 '1'
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(58Doc-Coxiella-Spec)

Instance: 58Doc-Coxiella-Spec
InstanceOf: Specimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2025-01-15T14:20:00+02:00"

Instance: 58Doc-Coxiella-SR
InstanceOf: ServiceRequest
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#9709-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(58Doc-Coxiella-Spec)

Instance: 58Doc-Coxiella-DR
InstanceOf: DiagnosticReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(58Doc-Coxiella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a55cb56b-12f2-4b59-9316-f6f0ff27d89d"
* basedOn = Reference(58Doc-Coxiella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(58Doc-Coxiella-Spec)
* result = Reference(58Doc-Coxiella-Obs)
