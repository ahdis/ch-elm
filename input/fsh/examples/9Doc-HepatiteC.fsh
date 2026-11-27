Instance: 9Doc-HepatiteC
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901862d-6012-443f-9690-9291adb2aa34"
* type = #document
* timestamp = "2024-04-17T08:30:00+02:00"
* insert Entry(Composition, 9Doc-HepatiteC-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 9Doc-HepatiteC-Obs)
* insert Entry(Practitioner, Pract-JeanneMoreau)
* insert Entry(Organization, Org-HopitalRegionalSoleil)
* insert Entry(PractitionerRole, PR-JeanneMoreau-HopitalRegionalSoleil)
* insert Entry(Specimen, 9Doc-HepatiteC-Spec)
* insert Entry(ServiceRequest, 9Doc-HepatiteC-SR)
* insert Entry(DiagnosticReport, 9Doc-HepatiteC-DR)

Instance: 9Doc-HepatiteC-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #fr-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901862d-6012-443f-9690-9291adb2aa34"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-04-17T08:30:00+02:00"
* author = Reference(Org-SanLab)
* title = "Rapport de laboratoire du 17.04.2024"
* section[lab-no-subsections].title = "Résultats de l'analyse microbiologique"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(9Doc-HepatiteC-Obs)

Instance: 9Doc-HepatiteC-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#5199-5
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-04-17T08:30:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(9Doc-HepatiteC-Spec)

Instance: 9Doc-HepatiteC-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-04-15"

Instance: 9Doc-HepatiteC-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "28541215633"
* status = #completed
* intent = #order
* code = $loinc#5199-5
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-JeanneMoreau-HopitalRegionalSoleil)
* specimen = Reference(9Doc-HepatiteC-Spec)

Instance: 9Doc-HepatiteC-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(9Doc-HepatiteC-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901862d-6012-443f-9690-9291adb2aa34"
* basedOn = Reference(9Doc-HepatiteC-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(9Doc-HepatiteC-Spec)
* result = Reference(9Doc-HepatiteC-Obs)
