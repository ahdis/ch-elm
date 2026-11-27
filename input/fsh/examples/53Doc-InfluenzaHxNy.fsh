Instance: 53Doc-InfluenzaHxNy
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:44c4f804-ee10-47e6-9df8-4bf7d2b28d94"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 53Doc-InfluenzaHxNy-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 53Doc-InfluenzaHxNy-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 53Doc-InfluenzaHxNy-Spec)
* insert Entry(ServiceRequest, 53Doc-InfluenzaHxNy-SR)
* insert Entry(DiagnosticReport, 53Doc-InfluenzaHxNy-DR)

Instance: 53Doc-InfluenzaHxNy-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:44c4f804-ee10-47e6-9df8-4bf7d2b28d94"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(53Doc-InfluenzaHxNy-Obs)

Instance: 53Doc-InfluenzaHxNy-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#59423-4
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-28T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#700349009
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(53Doc-InfluenzaHxNy-Spec)

Instance: 53Doc-InfluenzaHxNy-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-26T14:20:00+02:00"

Instance: 53Doc-InfluenzaHxNy-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#59423-4
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(53Doc-InfluenzaHxNy-Spec)

Instance: 53Doc-InfluenzaHxNy-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(53Doc-InfluenzaHxNy-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:44c4f804-ee10-47e6-9df8-4bf7d2b28d94"
* basedOn = Reference(53Doc-InfluenzaHxNy-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(53Doc-InfluenzaHxNy-Spec)
* result = Reference(53Doc-InfluenzaHxNy-Obs)
