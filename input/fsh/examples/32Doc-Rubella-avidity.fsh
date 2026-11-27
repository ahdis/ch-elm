Instance: 32Doc-Rubella-avidity
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6331adb23aab"
* type = #document
* timestamp = "2024-10-06T12:00:00+02:00"
* insert Entry(Composition, 32Doc-Rubella-avidity-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 32Doc-Rubella-avidity-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 32Doc-Rubella-avidity-Spec)
* insert Entry(ServiceRequest, 32Doc-Rubella-avidity-SR)
* insert Entry(DiagnosticReport, 32Doc-Rubella-avidity-DR)

Instance: 32Doc-Rubella-avidity-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6331adb23aab"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-10-06T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 6.10.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(32Doc-Rubella-avidity-Obs)

Instance: 32Doc-Rubella-avidity-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#52986-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-04T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $sct#62482003
* specimen = Reference(32Doc-Rubella-avidity-Spec)

Instance: 32Doc-Rubella-avidity-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-01T14:20:00+02:00"

Instance: 32Doc-Rubella-avidity-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#52986-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(32Doc-Rubella-avidity-Spec)

Instance: 32Doc-Rubella-avidity-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(32Doc-Rubella-avidity-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-6331adb23aab"
* basedOn = Reference(32Doc-Rubella-avidity-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(32Doc-Rubella-avidity-Spec)
* result = Reference(32Doc-Rubella-avidity-Obs)
