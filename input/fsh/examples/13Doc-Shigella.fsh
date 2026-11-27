Instance: 13Doc-Shigella
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-413f-9690-9291adb2cb3b"
* type = #document
* timestamp = "2024-04-20T07:35:00+02:00"
* insert Entry(Composition, 13Doc-Shigella-Comp)
* insert Entry(Patient, Pat-DonnaMeier)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 13Doc-Shigella-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 13Doc-Shigella-Spec)
* insert Entry(ServiceRequest, 13Doc-Shigella-SR)
* insert Entry(DiagnosticReport, 13Doc-Shigella-DR)

Instance: 13Doc-Shigella-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-413f-9690-9291adb2cb3b"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-DonnaMeier)
* date = "2024-04-20T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.04.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(13Doc-Shigella-Obs)

Instance: 13Doc-Shigella-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#46454-5
* subject = Reference(Pat-DonnaMeier)
* effectiveDateTime = "2024-04-20T07:35:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#125020009
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(13Doc-Shigella-Spec)

Instance: 13Doc-Shigella-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-DonnaMeier)
* collection.collectedDateTime = "2024-04-18"

Instance: 13Doc-Shigella-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#46454-5
* subject = Reference(Pat-DonnaMeier)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(13Doc-Shigella-Spec)

Instance: 13Doc-Shigella-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(13Doc-Shigella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-413f-9690-9291adb2cb3b"
* basedOn = Reference(13Doc-Shigella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-DonnaMeier)
* performer = Reference(Org-SanLab)
* specimen = Reference(13Doc-Shigella-Spec)
* result = Reference(13Doc-Shigella-Obs)
