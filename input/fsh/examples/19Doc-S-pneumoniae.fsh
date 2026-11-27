Instance: 19Doc-S-pneumoniae
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b175e5c9-c3a6-484a-af15-4998efcca123"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* insert Entry(Composition, 19Doc-S-pneumoniae-Comp)
* insert Entry(Patient, Pat-MonikaDelemat-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 19Doc-S-pneumoniae-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 19Doc-S-pneumoniae-Spec)
* insert Entry(ServiceRequest, 19Doc-S-pneumoniae-SR)
* insert Entry(DiagnosticReport, 19Doc-S-pneumoniae-DR)

Instance: 19Doc-S-pneumoniae-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b175e5c9-c3a6-484a-af15-4998efcca123"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-MonikaDelemat-Initials)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(19Doc-S-pneumoniae-Obs)

Instance: 19Doc-S-pneumoniae-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#20489-1
* subject = Reference(Pat-MonikaDelemat-Initials)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(19Doc-S-pneumoniae-Spec)

Instance: 19Doc-S-pneumoniae-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-MonikaDelemat-Initials)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 19Doc-S-pneumoniae-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#20489-1
* subject = Reference(Pat-MonikaDelemat-Initials)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(19Doc-S-pneumoniae-Spec)

Instance: 19Doc-S-pneumoniae-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(19Doc-S-pneumoniae-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b175e5c9-c3a6-484a-af15-4998efcca123"
* basedOn = Reference(19Doc-S-pneumoniae-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MonikaDelemat-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(19Doc-S-pneumoniae-Spec)
* result = Reference(19Doc-S-pneumoniae-Obs)
