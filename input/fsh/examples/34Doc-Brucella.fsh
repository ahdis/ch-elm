Instance: 34Doc-Brucella
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:eecd5db9-077c-458f-8412-53ae7147b12b"
* type = #document
* timestamp = "2024-10-14T11:00:00+02:00"
* insert Entry(Composition, 34Doc-Brucella-Comp)
* insert Entry(Patient, Pat-MonikaDelemat-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 34Doc-Brucella-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 34Doc-Brucella-Spec)
* insert Entry(ServiceRequest, 34Doc-Brucella-SR)
* insert Entry(DiagnosticReport, 34Doc-Brucella-DR)

Instance: 34Doc-Brucella-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:eecd5db9-077c-458f-8412-53ae7147b12b"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-MonikaDelemat-Initials)
* date = "2024-10-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.10.92024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(34Doc-Brucella-Obs)

Instance: 34Doc-Brucella-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#101802-7
* subject = Reference(Pat-MonikaDelemat-Initials)
* effectiveDateTime = "2024-10-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(34Doc-Brucella-Spec)

Instance: 34Doc-Brucella-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-MonikaDelemat-Initials)
* collection.collectedDateTime = "2024-10-10T09:15:00+02:00"

Instance: 34Doc-Brucella-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#101802-7
* subject = Reference(Pat-MonikaDelemat-Initials)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(34Doc-Brucella-Spec)

Instance: 34Doc-Brucella-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(34Doc-Brucella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:eecd5db9-077c-458f-8412-53ae7147b12b"
* basedOn = Reference(34Doc-Brucella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MonikaDelemat-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(34Doc-Brucella-Spec)
* result = Reference(34Doc-Brucella-Obs)
