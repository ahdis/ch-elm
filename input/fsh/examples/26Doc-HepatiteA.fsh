Instance: 26Doc-HepatiteA
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3578dcc-6b7e-431e-a743-b6ce89620f4f"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 26Doc-HepatiteA-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 26Doc-HepatiteA-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 26Doc-HepatiteA-Spec)
* insert Entry(ServiceRequest, 26Doc-HepatiteA-SR)
* insert Entry(DiagnosticReport, 26Doc-HepatiteA-DR)

Instance: 26Doc-HepatiteA-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3578dcc-6b7e-431e-a743-b6ce89620f4f"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(26Doc-HepatiteA-Obs)

Instance: 26Doc-HepatiteA-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#22314-9
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(26Doc-HepatiteA-Spec)

Instance: 26Doc-HepatiteA-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-23T14:20:00+02:00"

Instance: 26Doc-HepatiteA-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#22314-9
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(26Doc-HepatiteA-Spec)

Instance: 26Doc-HepatiteA-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(26Doc-HepatiteA-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3578dcc-6b7e-431e-a743-b6ce89620f4f"
* basedOn = Reference(26Doc-HepatiteA-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(26Doc-HepatiteA-Spec)
* result = Reference(26Doc-HepatiteA-Obs)
