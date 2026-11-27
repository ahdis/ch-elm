Instance: 18Doc-C-diphtheriae
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:92fa46d6-05fb-4ada-aab3-d75e18cc9f6c"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* insert Entry(Composition, 18Doc-C-diphtheriae-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 18Doc-C-diphtheriae-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 18Doc-C-diphtheriae-Spec)
* insert Entry(ServiceRequest, 18Doc-C-diphtheriae-SR)
* insert Entry(DiagnosticReport, 18Doc-C-diphtheriae-DR)

Instance: 18Doc-C-diphtheriae-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:92fa46d6-05fb-4ada-aab3-d75e18cc9f6c"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(18Doc-C-diphtheriae-Obs)

Instance: 18Doc-C-diphtheriae-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#67561-1
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(18Doc-C-diphtheriae-Spec)

Instance: 18Doc-C-diphtheriae-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type = $sct#608969007
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 18Doc-C-diphtheriae-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#67561-1
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(18Doc-C-diphtheriae-Spec)

Instance: 18Doc-C-diphtheriae-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(18Doc-C-diphtheriae-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:92fa46d6-05fb-4ada-aab3-d75e18cc9f6c"
* basedOn = Reference(18Doc-C-diphtheriae-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(18Doc-C-diphtheriae-Spec)
* result = Reference(18Doc-C-diphtheriae-Obs)
