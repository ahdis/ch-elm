Instance: 35Doc-CJD
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:34013a2d-6012-443f-9a90-6331adb23aab"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* insert Entry(Composition, 35Doc-CJD-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 35Doc-CJD-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 35Doc-CJD-Spec)
* insert Entry(ServiceRequest, 35Doc-CJD-SR)
* insert Entry(DiagnosticReport, 35Doc-CJD-DR)

Instance: 35Doc-CJD-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:34013a2d-6012-443f-9a90-6331adb23aab"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-10-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.10.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(35Doc-CJD-Obs)

Instance: 35Doc-CJD-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#31989-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(35Doc-CJD-Spec)

Instance: 35Doc-CJD-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 35Doc-CJD-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#31989-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(35Doc-CJD-Spec)

Instance: 35Doc-CJD-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(35Doc-CJD-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:34013a2d-6012-443f-9a90-6331adb23aab"
* basedOn = Reference(35Doc-CJD-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(35Doc-CJD-Spec)
* result = Reference(35Doc-CJD-Obs)
