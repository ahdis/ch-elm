Instance: 67Doc-Emerging-Pathogen
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ea0a27a6-7693-49df-83be-3b298143aef6"
* type = #document
* timestamp = "2025-11-11T12:34:56+02:00"
* insert Entry(Composition, 67Doc-Emerging-Pathogen-Comp)
* insert Entry(Patient, Pat-AntoineDupont-EmergingPathogen)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 67Doc-Emerging-Pathogen-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 67Doc-Emerging-Pathogen-Spec)
* insert Entry(ServiceRequest, 67Doc-Emerging-Pathogen-SR)
* insert Entry(DiagnosticReport, 67Doc-Emerging-Pathogen-DR)

Instance: 67Doc-Emerging-Pathogen-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ea0a27a6-7693-49df-83be-3b298143aef6"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont-EmergingPathogen)
* date = "2025-11-11T12:34:56+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 11.11.2025"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(67Doc-Emerging-Pathogen-Obs)

Instance: 67Doc-Emerging-Pathogen-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = urn:oid:2.16.756.5.30.1.129.1.5.1#EP-100100-7 "FOPH emerging pathogen placeholder 1"
* subject = Reference(Pat-AntoineDupont-EmergingPathogen)
* effectiveDateTime = "2025-11-11T10:34:56+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(67Doc-Emerging-Pathogen-Spec)

Instance: 67Doc-Emerging-Pathogen-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont-EmergingPathogen)
* collection.collectedDateTime = "2025-11-10T12:34:56+02:00"

Instance: 67Doc-Emerging-Pathogen-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923689"
* status = #completed
* intent = #order
* code = urn:oid:2.16.756.5.30.1.129.1.5.1#EP-100100-7 "FOPH emerging pathogen placeholder"
* subject = Reference(Pat-AntoineDupont-EmergingPathogen)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(67Doc-Emerging-Pathogen-Spec)

Instance: 67Doc-Emerging-Pathogen-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(67Doc-Emerging-Pathogen-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ea0a27a6-7693-49df-83be-3b298143aef6"
* basedOn = Reference(67Doc-Emerging-Pathogen-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-EmergingPathogen)
* performer = Reference(Org-SanLab)
* specimen = Reference(67Doc-Emerging-Pathogen-Spec)
* result = Reference(67Doc-Emerging-Pathogen-Obs)
