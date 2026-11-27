Instance: 57Doc-West-Nile
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e9b582c0-2fc7-4ee3-85da-33b071a6c4c4"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 57Doc-West-Nile-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 57Doc-West-Nile-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 57Doc-West-Nile-Spec)
* insert Entry(ServiceRequest, 57Doc-West-Nile-SR)
* insert Entry(DiagnosticReport, 57Doc-West-Nile-DR)

Instance: 57Doc-West-Nile-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e9b582c0-2fc7-4ee3-85da-33b071a6c4c4"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(57Doc-West-Nile-Obs)

Instance: 57Doc-West-Nile-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#6584-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-28T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#57311007
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(57Doc-West-Nile-Spec)

Instance: 57Doc-West-Nile-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-26T14:20:00+02:00"

Instance: 57Doc-West-Nile-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#6584-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(57Doc-West-Nile-Spec)

Instance: 57Doc-West-Nile-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(57Doc-West-Nile-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e9b582c0-2fc7-4ee3-85da-33b071a6c4c4"
* basedOn = Reference(57Doc-West-Nile-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(57Doc-West-Nile-Spec)
* result = Reference(57Doc-West-Nile-Obs)
