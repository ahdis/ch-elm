Instance: 11Doc-Malaria
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1904332d-6012-443f-9690-9291adb234fe"
* type = #document
* timestamp = "2023-09-15T11:00:00+02:00"
* insert Entry(Composition, 11Doc-Malaria-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 11Doc-Malaria-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Specimen, 11Doc-Malaria-Spec)
* insert Entry(ServiceRequest, 11Doc-Malaria-SR)
* insert Entry(DiagnosticReport, 11Doc-Malaria-DR)

Instance: 11Doc-Malaria-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1904332d-6012-443f-9690-9291adb234fe"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2023-09-15T11:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 15.09.2023"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(11Doc-Malaria-Obs)

Instance: 11Doc-Malaria-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#70568-1
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2023-09-15T09:15:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(11Doc-Malaria-Spec)

Instance: 11Doc-Malaria-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2023-09-12"

Instance: 11Doc-Malaria-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "23846922417"
* status = #completed
* intent = #order
* code = $loinc#70568-1
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)
* specimen = Reference(11Doc-Malaria-Spec)

Instance: 11Doc-Malaria-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(11Doc-Malaria-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1904332d-6012-443f-9690-9291adb234fe"
* basedOn = Reference(11Doc-Malaria-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(11Doc-Malaria-Spec)
* result = Reference(11Doc-Malaria-Obs)
