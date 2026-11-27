Instance: 59Doc-EHEC
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:82f99df7-24c8-4e0e-8240-74f9d6e030d0"
* type = #document
* timestamp = "2025-01-20T12:00:00+02:00"
* insert Entry(Composition, 59Doc-EHEC-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 59Doc-EHEC-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 59Doc-EHEC-Spec)
* insert Entry(ServiceRequest, 59Doc-EHEC-SR)
* insert Entry(DiagnosticReport, 59Doc-EHEC-DR)

Instance: 59Doc-EHEC-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:82f99df7-24c8-4e0e-8240-74f9d6e030d0"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2025-01-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.01.2025"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(59Doc-EHEC-Obs)

Instance: 59Doc-EHEC-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#51940-5
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2025-01-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(59Doc-EHEC-Spec)

Instance: 59Doc-EHEC-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2025-01-15T14:20:00+02:00"

Instance: 59Doc-EHEC-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#51940-5
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(59Doc-EHEC-Spec)

Instance: 59Doc-EHEC-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(59Doc-EHEC-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:82f99df7-24c8-4e0e-8240-74f9d6e030d0"
* basedOn = Reference(59Doc-EHEC-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(59Doc-EHEC-Spec)
* result = Reference(59Doc-EHEC-Obs)
