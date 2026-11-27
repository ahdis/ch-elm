Instance: 40Doc-Crimean-Congo
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ed9ed405-56c2-4b36-b979-e350b84b63b3"
* type = #document
* timestamp = "2024-10-20T12:00:00+02:00"
* insert Entry(Composition, 40Doc-Crimean-Congo-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 40Doc-Crimean-Congo-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 40Doc-Crimean-Congo-Spec)
* insert Entry(ServiceRequest, 40Doc-Crimean-Congo-SR)
* insert Entry(DiagnosticReport, 40Doc-Crimean-Congo-DR)

Instance: 40Doc-Crimean-Congo-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ed9ed405-56c2-4b36-b979-e350b84b63b3"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-10-20T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 20.10.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(40Doc-Crimean-Congo-Obs)

Instance: 40Doc-Crimean-Congo-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#88192-0
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-10-19T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(40Doc-Crimean-Congo-Spec)

Instance: 40Doc-Crimean-Congo-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-10-15T14:20:00+02:00"

Instance: 40Doc-Crimean-Congo-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923675"
* status = #completed
* intent = #order
* code = $loinc#88192-0
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(40Doc-Crimean-Congo-Spec)

Instance: 40Doc-Crimean-Congo-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(40Doc-Crimean-Congo-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ed9ed405-56c2-4b36-b979-e350b84b63b3"
* basedOn = Reference(40Doc-Crimean-Congo-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(40Doc-Crimean-Congo-Spec)
* result = Reference(40Doc-Crimean-Congo-Obs)
