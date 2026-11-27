Instance: 10Doc-Legionella
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1991332d-6012-443f-9690-9291d0b2cb3b"
* type = #document
* timestamp = "2023-09-20T07:35:00+02:00"
* insert Entry(Composition, 10Doc-Legionella-Comp)
* insert Entry(Patient, Pat-HerberFrimousse)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 10Doc-Legionella-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 10Doc-Legionella-Spec)
* insert Entry(ServiceRequest, 10Doc-Legionella-SR)
* insert Entry(DiagnosticReport, 10Doc-Legionella-DR)

Instance: 10Doc-Legionella-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1991332d-6012-443f-9690-9291d0b2cb3b"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-HerberFrimousse)
* date = "2023-09-20T07:35:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.09.2023"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(10Doc-Legionella-Obs)

Instance: 10Doc-Legionella-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#32781-7
* subject = Reference(Pat-HerberFrimousse)
* effectiveDateTime = "2023-09-20T17:50:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#103448007
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(10Doc-Legionella-Spec)

Instance: 10Doc-Legionella-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-HerberFrimousse)
* collection.collectedDateTime = "2023-09-18"

Instance: 10Doc-Legionella-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#32781-7
* subject = Reference(Pat-HerberFrimousse)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(10Doc-Legionella-Spec)

Instance: 10Doc-Legionella-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(10Doc-Legionella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1991332d-6012-443f-9690-9291d0b2cb3b"
* basedOn = Reference(10Doc-Legionella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HerberFrimousse)
* performer = Reference(Org-SanLab)
* specimen = Reference(10Doc-Legionella-Spec)
* result = Reference(10Doc-Legionella-Obs)
