Instance: 20Doc-Vibrio-cholerae
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:080492a8-5665-4ccf-93d8-0c5f66bdba3c"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* insert Entry(Composition, 20Doc-Vibrio-cholerae-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 20Doc-Vibrio-cholerae-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 20Doc-Vibrio-cholerae-Spec)
* insert Entry(ServiceRequest, 20Doc-Vibrio-cholerae-SR)
* insert Entry(DiagnosticReport, 20Doc-Vibrio-cholerae-DR)

Instance: 20Doc-Vibrio-cholerae-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:080492a8-5665-4ccf-93d8-0c5f66bdba3c"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(20Doc-Vibrio-cholerae-Obs)

Instance: 20Doc-Vibrio-cholerae-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#53942-9
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(20Doc-Vibrio-cholerae-Spec)

Instance: 20Doc-Vibrio-cholerae-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 20Doc-Vibrio-cholerae-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#53942-9
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(20Doc-Vibrio-cholerae-Spec)

Instance: 20Doc-Vibrio-cholerae-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(20Doc-Vibrio-cholerae-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:080492a8-5665-4ccf-93d8-0c5f66bdba3c"
* basedOn = Reference(20Doc-Vibrio-cholerae-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(20Doc-Vibrio-cholerae-Spec)
* result = Reference(20Doc-Vibrio-cholerae-Obs)
