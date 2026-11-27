Instance: 22Doc-H-influenzae
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3a3ac360-c247-4f41-bde1-81b3c4d1da9c"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* insert Entry(Composition, 22Doc-H-influenzae-Comp)
* insert Entry(Patient, Pat-MonikaDelemat-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 22Doc-H-influenzae-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 22Doc-H-influenzae-Spec)
* insert Entry(ServiceRequest, 22Doc-H-influenzae-SR)
* insert Entry(DiagnosticReport, 22Doc-H-influenzae-DR)

Instance: 22Doc-H-influenzae-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3a3ac360-c247-4f41-bde1-81b3c4d1da9c"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-MonikaDelemat-Initials)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(22Doc-H-influenzae-Obs)

Instance: 22Doc-H-influenzae-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#53607-8
* subject = Reference(Pat-MonikaDelemat-Initials)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(22Doc-H-influenzae-Spec)

Instance: 22Doc-H-influenzae-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-MonikaDelemat-Initials)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 22Doc-H-influenzae-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#53607-8
* subject = Reference(Pat-MonikaDelemat-Initials)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(22Doc-H-influenzae-Spec)

Instance: 22Doc-H-influenzae-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(22Doc-H-influenzae-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3a3ac360-c247-4f41-bde1-81b3c4d1da9c"
* basedOn = Reference(22Doc-H-influenzae-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MonikaDelemat-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(22Doc-H-influenzae-Spec)
* result = Reference(22Doc-H-influenzae-Obs)
