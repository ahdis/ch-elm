Instance: 52Doc-Hantavirus
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8a1d658b-f470-40fe-97f3-82b2a83a9b59"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 52Doc-Hantavirus-Comp)
* insert Entry(Patient, Pat-AntoineDupont-Initials)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 52Doc-Hantavirus-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 52Doc-Hantavirus-Spec)
* insert Entry(ServiceRequest, 52Doc-Hantavirus-SR)
* insert Entry(DiagnosticReport, 52Doc-Hantavirus-DR)

Instance: 52Doc-Hantavirus-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8a1d658b-f470-40fe-97f3-82b2a83a9b59"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont-Initials)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(52Doc-Hantavirus-Obs)

Instance: 52Doc-Hantavirus-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#86520-4
* subject = Reference(Pat-AntoineDupont-Initials)
* effectiveDateTime = "2024-08-28T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#40754006
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(52Doc-Hantavirus-Spec)

Instance: 52Doc-Hantavirus-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont-Initials)
* collection.collectedDateTime = "2024-08-26T14:20:00+02:00"

Instance: 52Doc-Hantavirus-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#86520-4
* subject = Reference(Pat-AntoineDupont-Initials)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(52Doc-Hantavirus-Spec)

Instance: 52Doc-Hantavirus-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(52Doc-Hantavirus-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8a1d658b-f470-40fe-97f3-82b2a83a9b59"
* basedOn = Reference(52Doc-Hantavirus-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-Initials)
* performer = Reference(Org-SanLab)
* specimen = Reference(52Doc-Hantavirus-Spec)
* result = Reference(52Doc-Hantavirus-Obs)
