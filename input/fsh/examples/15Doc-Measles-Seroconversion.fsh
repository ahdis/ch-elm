Instance: 15Doc-Measles-Seroconversion
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9291adb23aa3"
* type = #document
* timestamp = "2024-08-05T12:00:00+02:00"
* insert Entry(Composition, 15Doc-Measles-Seroconversion-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 15Doc-Measles-Seroconversion-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 15Doc-Measles-Seroconversion-Spec)
* insert Entry(ServiceRequest, 15Doc-Measles-Seroconversion-SR)
* insert Entry(DiagnosticReport, 15Doc-Measles-Seroconversion-DR)

Instance: 15Doc-Measles-Seroconversion-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9291adb23aa3"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-08-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(15Doc-Measles-Seroconversion-Obs)

Instance: 15Doc-Measles-Seroconversion-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#44012-3
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $sct#1290194006
* specimen = Reference(15Doc-Measles-Seroconversion-Spec)

Instance: 15Doc-Measles-Seroconversion-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-22T14:20:00+02:00"

Instance: 15Doc-Measles-Seroconversion-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#44012-3
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(15Doc-Measles-Seroconversion-Spec)

Instance: 15Doc-Measles-Seroconversion-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(15Doc-Measles-Seroconversion-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3401332d-6012-443f-9690-9291adb23aa3"
* basedOn = Reference(15Doc-Measles-Seroconversion-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(15Doc-Measles-Seroconversion-Spec)
* result = Reference(15Doc-Measles-Seroconversion-Obs)
