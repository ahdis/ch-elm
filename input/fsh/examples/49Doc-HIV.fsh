Instance: 49Doc-HIV
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6334adb23aac"
* type = #document
* timestamp = "2024-11-06T12:00:00+02:00"
* insert Entry(Composition, 49Doc-HIV-Comp)
* insert Entry(Patient, Pat-HIV-H5)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 49Doc-HIV-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 49Doc-HIV-Spec)
* insert Entry(ServiceRequest, 49Doc-HIV-SR)
* insert Entry(DiagnosticReport, 49Doc-HIV-DR)

Instance: 49Doc-HIV-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6334adb23aac"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-HIV-H5)
* date = "2024-11-06T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 6.11.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(49Doc-HIV-Obs)

Instance: 49Doc-HIV-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#89293008
* subject = Reference(Pat-HIV-H5)
* effectiveDateTime = "2024-11-04T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(49Doc-HIV-Spec)

Instance: 49Doc-HIV-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-HIV-H5)
* collection.collectedDateTime = "2024-11-01T14:20:00+02:00"

Instance: 49Doc-HIV-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $sct#89293008
* subject = Reference(Pat-HIV-H5)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(49Doc-HIV-Spec)

Instance: 49Doc-HIV-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(49Doc-HIV-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6334adb23aac"
* basedOn = Reference(49Doc-HIV-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HIV-H5)
* performer = Reference(Org-SanLab)
* specimen = Reference(49Doc-HIV-Spec)
* result = Reference(49Doc-HIV-Obs)
