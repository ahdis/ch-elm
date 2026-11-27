Instance: 3Doc-CPE
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* type = #document
* timestamp = "2025-01-20T12:00:00+02:00"
* insert Entry(Composition, 3Doc-CPE-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 3Doc-CPE-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 3Doc-CPE-Spec)
* insert Entry(ServiceRequest, 3Doc-CPE-SR)
* insert Entry(DiagnosticReport, 3Doc-CPE-DR)

Instance: 3Doc-CPE-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2025-01-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.01.2025"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(3Doc-CPE-Obs)

Instance: 3Doc-CPE-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#734351004
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2025-01-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(3Doc-CPE-Spec)

Instance: 3Doc-CPE-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2025-01-15T14:20:00+02:00"

Instance: 3Doc-CPE-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $sct#734351004
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(3Doc-CPE-Spec)

Instance: 3Doc-CPE-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(3Doc-CPE-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54013a2d-6012-443f-9a90-6331adb23aab"
* basedOn = Reference(3Doc-CPE-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(3Doc-CPE-Spec)
* result = Reference(3Doc-CPE-Obs)
