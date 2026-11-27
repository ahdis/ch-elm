Instance: 30Doc-Salmonella-enteritidis
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7a436403-3567-4216-a26e-d829e703aed3"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 30Doc-Salmonella-enteritidis-Comp)
* insert Entry(Patient, Pat-AntoineDupont-Phone)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 30Doc-Salmonella-enteritidis-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 30Doc-Salmonella-enteritidis-Spec)
* insert Entry(ServiceRequest, 30Doc-Salmonella-enteritidis-SR)
* insert Entry(DiagnosticReport, 30Doc-Salmonella-enteritidis-DR)

Instance: 30Doc-Salmonella-enteritidis-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7a436403-3567-4216-a26e-d829e703aed3"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont-Phone)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(30Doc-Salmonella-enteritidis-Obs)

Instance: 30Doc-Salmonella-enteritidis-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#49612-5
* subject = Reference(Pat-AntoineDupont-Phone)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#73525009
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(30Doc-Salmonella-enteritidis-Spec)

Instance: 30Doc-Salmonella-enteritidis-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(Pat-AntoineDupont-Phone)
* collection.collectedDateTime = "2024-07-23T14:20:00+02:00"

Instance: 30Doc-Salmonella-enteritidis-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#49612-5
* subject = Reference(Pat-AntoineDupont-Phone)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(30Doc-Salmonella-enteritidis-Spec)

Instance: 30Doc-Salmonella-enteritidis-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(30Doc-Salmonella-enteritidis-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7a436403-3567-4216-a26e-d829e703aed3"
* basedOn = Reference(30Doc-Salmonella-enteritidis-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont-Phone)
* performer = Reference(Org-SanLab)
* specimen = Reference(30Doc-Salmonella-enteritidis-Spec)
* result = Reference(30Doc-Salmonella-enteritidis-Obs)
