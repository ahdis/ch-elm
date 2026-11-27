Instance: 58Doc-Coxiella
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a55cb56b-12f2-4b59-9316-f6f0ff27d89d"
* type = #document
* timestamp = "2025-01-20T12:00:00+02:00"
* insert Entry(Composition, 58Doc-Coxiella-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 58Doc-Coxiella-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 58Doc-Coxiella-Spec)
* insert Entry(ServiceRequest, 58Doc-Coxiella-SR)
* insert Entry(DiagnosticReport, 58Doc-Coxiella-DR)

Instance: 58Doc-Coxiella-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a55cb56b-12f2-4b59-9316-f6f0ff27d89d"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2025-01-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.01.2025"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(58Doc-Coxiella-Obs)

Instance: 58Doc-Coxiella-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#9709-7
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2025-01-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueRatio.numerator = 1 '1'
* valueRatio.denominator = 200 '1'
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(58Doc-Coxiella-Spec)

Instance: 58Doc-Coxiella-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2025-01-15T14:20:00+02:00"

Instance: 58Doc-Coxiella-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#9709-7
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(58Doc-Coxiella-Spec)

Instance: 58Doc-Coxiella-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(58Doc-Coxiella-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a55cb56b-12f2-4b59-9316-f6f0ff27d89d"
* basedOn = Reference(58Doc-Coxiella-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(58Doc-Coxiella-Spec)
* result = Reference(58Doc-Coxiella-Obs)
