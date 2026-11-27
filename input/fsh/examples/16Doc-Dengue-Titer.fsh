Instance: 16Doc-Dengue-Titer
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae659833-0162-47b7-a2f9-41a7d90f3f9d"
* type = #document
* timestamp = "2024-07-25T08:30:00+02:00"
* insert Entry(Composition, 16Doc-Dengue-Titer-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 16Doc-Dengue-Titer-Obs)
* insert Entry(Practitioner, Pract-JeanneMoreau)
* insert Entry(Organization, Org-HopitalRegionalSoleil)
* insert Entry(PractitionerRole, PR-JeanneMoreau-HopitalRegionalSoleil)
* insert Entry(Specimen, 16Doc-Dengue-Titer-Spec)
* insert Entry(ServiceRequest, 16Doc-Dengue-Titer-SR)
* insert Entry(DiagnosticReport, 16Doc-Dengue-Titer-DR)

Instance: 16Doc-Dengue-Titer-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae659833-0162-47b7-a2f9-41a7d90f3f9d"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-07-25T08:30:00+02:00"
* author = Reference(Org-SanLab)
* title = "Rapport de laboratoire du 25.7.2024"
* section[lab-no-subsections].title = "Résultats de l'analyse microbiologique"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(16Doc-Dengue-Titer-Obs)

Instance: 16Doc-Dengue-Titer-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#6811-4
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-24T07:40:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#U
* specimen = Reference(16Doc-Dengue-Titer-Spec)

Instance: 16Doc-Dengue-Titer-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-22T07:40:00+02:00"

Instance: 16Doc-Dengue-Titer-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "28541215633"
* status = #completed
* intent = #order
* code = $loinc#6811-4
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-JeanneMoreau-HopitalRegionalSoleil)
* specimen = Reference(16Doc-Dengue-Titer-Spec)

Instance: 16Doc-Dengue-Titer-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(16Doc-Dengue-Titer-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae659833-0162-47b7-a2f9-41a7d90f3f9d"
* basedOn = Reference(16Doc-Dengue-Titer-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(16Doc-Dengue-Titer-Spec)
* result = Reference(16Doc-Dengue-Titer-Obs)
