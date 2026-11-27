Instance: 25Doc-Tick-borne-encephalitis
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:55031c6e-b6af-4a20-af80-66ce0845c4d8"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* insert Entry(Composition, 25Doc-Tick-borne-encephalitis-Comp)
* insert Entry(Patient, Pat-MonikaDelemat-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 25Doc-Tick-borne-encephalitis-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 25Doc-Tick-borne-encephalitis-Spec)
* insert Entry(ServiceRequest, 25Doc-Tick-borne-encephalitis-SR)
* insert Entry(DiagnosticReport, 25Doc-Tick-borne-encephalitis-DR)

Instance: 25Doc-Tick-borne-encephalitis-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:55031c6e-b6af-4a20-af80-66ce0845c4d8"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-MonikaDelemat-Initials)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(25Doc-Tick-borne-encephalitis-Obs)

Instance: 25Doc-Tick-borne-encephalitis-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#31828-7
* subject = Reference(Pat-MonikaDelemat-Initials)
* effectiveDateTime = "2024-08-12T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#91508008
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(25Doc-Tick-borne-encephalitis-Spec)

Instance: 25Doc-Tick-borne-encephalitis-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-MonikaDelemat-Initials)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 25Doc-Tick-borne-encephalitis-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#31828-7
* subject = Reference(Pat-MonikaDelemat-Initials)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(25Doc-Tick-borne-encephalitis-Spec)

Instance: 25Doc-Tick-borne-encephalitis-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(25Doc-Tick-borne-encephalitis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:55031c6e-b6af-4a20-af80-66ce0845c4d8"
* basedOn = Reference(25Doc-Tick-borne-encephalitis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MonikaDelemat-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(25Doc-Tick-borne-encephalitis-Spec)
* result = Reference(25Doc-Tick-borne-encephalitis-Obs)
