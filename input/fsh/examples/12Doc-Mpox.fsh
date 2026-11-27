Instance: 12Doc-Mpox
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6041-443f-9690-9291adb2cb3b"
* type = #document
* timestamp = "2024-04-28T07:35:00+02:00"
* insert Entry(Composition, 12Doc-Mpox-Comp)
* insert Entry(Patient, Pat-FridaHildetter)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 12Doc-Mpox-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 12Doc-Mpox-Spec)
* insert Entry(ServiceRequest, 12Doc-Mpox-SR)
* insert Entry(DiagnosticReport, 12Doc-Mpox-DR)

Instance: 12Doc-Mpox-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6041-443f-9690-9291adb2cb3b"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-FridaHildetter)
* date = "2024-04-28T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 28.04.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(12Doc-Mpox-Obs)

Instance: 12Doc-Mpox-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#100383-9
* subject = Reference(Pat-FridaHildetter)
* effectiveDateTime = "2024-04-28T07:35:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(12Doc-Mpox-Spec)

Instance: 12Doc-Mpox-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#608969007
* subject = Reference(Pat-FridaHildetter)
* collection.collectedDateTime = "2024-04-26"

Instance: 12Doc-Mpox-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#100383-9
* subject = Reference(Pat-FridaHildetter)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(12Doc-Mpox-Spec)

Instance: 12Doc-Mpox-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(12Doc-Mpox-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6041-443f-9690-9291adb2cb3b"
* basedOn = Reference(12Doc-Mpox-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-FridaHildetter)
* performer = Reference(Org-SanLab)
* specimen = Reference(12Doc-Mpox-Spec)
* result = Reference(12Doc-Mpox-Obs)
