Instance: 56Doc-Trichinella-spiralis
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b4d9ac50-e72b-4404-adbf-b6006e396e34"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* insert Entry(Composition, 56Doc-Trichinella-spiralis-Comp)
* insert Entry(Patient, Pat-AntoineDupont-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 56Doc-Trichinella-spiralis-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 56Doc-Trichinella-spiralis-Spec)
* insert Entry(ServiceRequest, 56Doc-Trichinella-spiralis-SR)
* insert Entry(DiagnosticReport, 56Doc-Trichinella-spiralis-DR)

Instance: 56Doc-Trichinella-spiralis-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b4d9ac50-e72b-4404-adbf-b6006e396e34"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont-Initials)
* date = "2024-10-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.10.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(56Doc-Trichinella-spiralis-Obs)

Instance: 56Doc-Trichinella-spiralis-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#23499-7
* subject = Reference(Pat-AntoineDupont-Initials)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(56Doc-Trichinella-spiralis-Spec)

Instance: 56Doc-Trichinella-spiralis-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont-Initials)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 56Doc-Trichinella-spiralis-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#23499-7
* subject = Reference(Pat-AntoineDupont-Initials)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(56Doc-Trichinella-spiralis-Spec)

Instance: 56Doc-Trichinella-spiralis-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(56Doc-Trichinella-spiralis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b4d9ac50-e72b-4404-adbf-b6006e396e34"
* basedOn = Reference(56Doc-Trichinella-spiralis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(56Doc-Trichinella-spiralis-Spec)
* result = Reference(56Doc-Trichinella-spiralis-Obs)
