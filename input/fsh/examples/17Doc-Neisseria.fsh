Instance: 17Doc-Neisseria
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* type = #document
* timestamp = "2024-07-14T11:00:00+02:00"
* insert Entry(Composition, 17Doc-Neisseria-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 17Doc-Neisseria-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 17Doc-Neisseria-Spec)
* insert Entry(ServiceRequest, 17Doc-Neisseria-SR)
* insert Entry(DiagnosticReport, 17Doc-Neisseria-DR)

Instance: 17Doc-Neisseria-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-07-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.7.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(17Doc-Neisseria-Obs)

Instance: 17Doc-Neisseria-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#14357-8
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-07T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#17872004
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(17Doc-Neisseria-Spec)

Instance: 17Doc-Neisseria-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-05T09:15:00+02:00"

Instance: 17Doc-Neisseria-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002610"
* status = #completed
* intent = #order
* code = $loinc#14357-8
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(17Doc-Neisseria-Spec)

Instance: 17Doc-Neisseria-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(17Doc-Neisseria-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ac01252d-6012-443f-9690-9291adb23433"
* basedOn = Reference(17Doc-Neisseria-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(17Doc-Neisseria-Spec)
* result = Reference(17Doc-Neisseria-Obs)
