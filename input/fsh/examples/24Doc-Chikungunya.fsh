Instance: 24Doc-Chikungunya
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 24Doc-Chikungunya-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 24Doc-Chikungunya-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 24Doc-Chikungunya-Spec)
* insert Entry(ServiceRequest, 24Doc-Chikungunya-SR)
* insert Entry(DiagnosticReport, 24Doc-Chikungunya-DR)

Instance: 24Doc-Chikungunya-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(24Doc-Chikungunya-Obs)

Instance: 24Doc-Chikungunya-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#86515-4
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(24Doc-Chikungunya-Spec)

Instance: 24Doc-Chikungunya-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-23T14:20:00+02:00"

Instance: 24Doc-Chikungunya-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#86515-4
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(24Doc-Chikungunya-Spec)

Instance: 24Doc-Chikungunya-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(24Doc-Chikungunya-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9331adb23aab"
* basedOn = Reference(24Doc-Chikungunya-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(24Doc-Chikungunya-Spec)
* result = Reference(24Doc-Chikungunya-Obs)
