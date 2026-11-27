Instance: 65Doc-Tuberculosis
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2e83093f-ff6b-42d3-8188-8ff8fdda3182"
* type = #document
* timestamp = "2025-03-17T12:00:00+02:00"
* insert Entry(Composition, 65Doc-Tuberculosis-Comp)
* insert Entry(Patient, Pat-ErnstKarlTanner)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 65Doc-Tuberculosis-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 65Doc-Tuberculosis-Spec)
* insert Entry(ServiceRequest, 65Doc-Tuberculosis-SR)
* insert Entry(DiagnosticReport, 65Doc-Tuberculosis-DR)

Instance: 65Doc-Tuberculosis-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2e83093f-ff6b-42d3-8188-8ff8fdda3182"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-ErnstKarlTanner)
* date = "2025-03-17T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 17.03.2025"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(65Doc-Tuberculosis-Obs)

Instance: 65Doc-Tuberculosis-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#9823-6
* subject = Reference(Pat-ErnstKarlTanner)
* effectiveDateTime = "2025-01-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#51320008
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(65Doc-Tuberculosis-Spec)

Instance: 65Doc-Tuberculosis-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-ErnstKarlTanner)
* collection.collectedDateTime = "2025-01-17T14:20:00+02:00"

Instance: 65Doc-Tuberculosis-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $loinc#9823-6
* subject = Reference(Pat-ErnstKarlTanner)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(65Doc-Tuberculosis-Spec)

Instance: 65Doc-Tuberculosis-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(65Doc-Tuberculosis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2e83093f-ff6b-42d3-8188-8ff8fdda3182"
* basedOn = Reference(65Doc-Tuberculosis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-ErnstKarlTanner)
* performer = Reference(Org-SanLab)
* specimen = Reference(65Doc-Tuberculosis-Spec)
* result = Reference(65Doc-Tuberculosis-Obs)
