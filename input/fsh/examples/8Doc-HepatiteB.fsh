Instance: 8Doc-HepatiteB
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2101332d-6012-443f-9690-9291adb23a5c"
* type = #document
* timestamp = "2024-04-10T12:00:00+02:00"
* insert Entry(Composition, 8Doc-HepatiteB-Comp)
* insert Entry(Patient, Pat-MonikaDelemat)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 8Doc-HepatiteB-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 8Doc-HepatiteB-Spec)
* insert Entry(ServiceRequest, 8Doc-HepatiteB-SR)
* insert Entry(DiagnosticReport, 8Doc-HepatiteB-DR)

Instance: 8Doc-HepatiteB-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2101332d-6012-443f-9690-9291adb23a5c"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-MonikaDelemat)
* date = "2024-04-10T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 10.04.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(8Doc-HepatiteB-Obs)

Instance: 8Doc-HepatiteB-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#31204-1
* subject = Reference(Pat-MonikaDelemat)
* effectiveDateTime = "2024-04-10T12:00:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#10828004 "Positive (qualifier value)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(8Doc-HepatiteB-Spec)

Instance: 8Doc-HepatiteB-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-MonikaDelemat)
* collection.collectedDateTime = "2024-04-09"

Instance: 8Doc-HepatiteB-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#31204-1
* subject = Reference(Pat-MonikaDelemat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(8Doc-HepatiteB-Spec)

Instance: 8Doc-HepatiteB-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(8Doc-HepatiteB-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2101332d-6012-443f-9690-9291adb23a5c"
* basedOn = Reference(8Doc-HepatiteB-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-MonikaDelemat)
* performer = Reference(Org-SanLab)
* specimen = Reference(8Doc-HepatiteB-Spec)
* result = Reference(8Doc-HepatiteB-Obs)
