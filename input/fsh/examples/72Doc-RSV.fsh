Instance: 72Doc-RSV
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:84edb280-1ee5-408f-bc8c-44fe6fddbb67"
* type = #document
* timestamp = "2023-09-20T07:35:00+02:00"
* insert Entry(Composition, 72Doc-RSV-Comp)
* insert Entry(Patient, Pat-FridaHildetter-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 72Doc-RSV-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 72Doc-RSV-Spec)
* insert Entry(ServiceRequest, 72Doc-RSV-SR)
* insert Entry(DiagnosticReport, 72Doc-RSV-DR)

Instance: 72Doc-RSV-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:84edb280-1ee5-408f-bc8c-44fe6fddbb67"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-FridaHildetter-Initials)
* date = "2023-09-20T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.09.2023"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(72Doc-RSV-Obs)

Instance: 72Doc-RSV-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#40988-8
* subject = Reference(Pat-FridaHildetter-Initials)
* effectiveDateTime = "2023-09-19T17:50:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(72Doc-RSV-Spec)

Instance: 72Doc-RSV-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#447154002
* type.text = "Specimen from nose"
* subject = Reference(Pat-FridaHildetter-Initials)
* collection.collectedDateTime = "2023-09-19"

Instance: 72Doc-RSV-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#40988-8
* subject = Reference(Pat-FridaHildetter-Initials)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(72Doc-RSV-Spec)

Instance: 72Doc-RSV-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(72Doc-RSV-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:84edb280-1ee5-408f-bc8c-44fe6fddbb67"
* basedOn = Reference(72Doc-RSV-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-FridaHildetter-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(72Doc-RSV-Spec)
* result = Reference(72Doc-RSV-Obs)
