Instance: 23Doc-F-tularensis
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09038b23-9211-425c-8c8c-277b16b4fc67"
* type = #document
* timestamp = "2024-08-14T11:00:00+02:00"
* insert Entry(Composition, 23Doc-F-tularensis-Comp)
* insert Entry(Patient, Pat-MonikaDelemat-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 23Doc-F-tularensis-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 23Doc-F-tularensis-Spec)
* insert Entry(ServiceRequest, 23Doc-F-tularensis-SR)
* insert Entry(DiagnosticReport, 23Doc-F-tularensis-DR)

Instance: 23Doc-F-tularensis-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09038b23-9211-425c-8c8c-277b16b4fc67"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-MonikaDelemat-Initials)
* date = "2024-08-14T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 14.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(23Doc-F-tularensis-Obs)

Instance: 23Doc-F-tularensis-Obs
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
* specimen = Reference(23Doc-F-tularensis-Spec)

Instance: 23Doc-F-tularensis-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-MonikaDelemat-Initials)
* collection.collectedDateTime = "2024-08-10T09:15:00+02:00"

Instance: 23Doc-F-tularensis-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002755"
* status = #completed
* intent = #order
* code = $loinc#31828-7
* subject = Reference(Pat-MonikaDelemat-Initials)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(23Doc-F-tularensis-Spec)

Instance: 23Doc-F-tularensis-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(23Doc-F-tularensis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09038b23-9211-425c-8c8c-277b16b4fc67"
* basedOn = Reference(23Doc-F-tularensis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MonikaDelemat-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(23Doc-F-tularensis-Spec)
* result = Reference(23Doc-F-tularensis-Obs)
