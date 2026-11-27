Instance: 14Doc-Neisseriameningitidis-confirmationtest-originalorder
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:74804773-3ab0-410e-9c94-3f888e3a5bee"
* type = #document
* timestamp = "2024-08-04T11:00:00+02:00"
* insert Entry(Composition, 14Doc-Neisseriameningitidis-confirmationtest-originalorder-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-NationalesZentrumFurMeningokokken)
* insert Entry(Observation, 14Doc-Neisseriameningitidis-confirmationtest-originalorder-Obs)
* insert Entry(Practitioner, Pract-MonikaGiacometti)
* insert Entry(Practitioner, Pract-AndreaGasser)
* insert Entry(Organization, Org-SanLabFribourg)
* insert Entry(PractitionerRole, PR-MonikaGiacometti)
* insert Entry(Organization, Org-KantonsspitalABC)
* insert Entry(PractitionerRole, PR-AndreaGasser)
* insert Entry(Specimen, 14Doc-Neisseriameningitidis-confirmationtest-originalorder-Spec)
* insert Entry(ServiceRequest, 14Doc-Neisseriameningitidis-confirmationtest-originalorder-SR1)
* insert Entry(ServiceRequest, 14Doc-Neisseriameningitidis-confirmationtest-originalorder-SR2)
* insert Entry(DiagnosticReport, 14Doc-Neisseriameningitidis-confirmationtest-originalorder-DR)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-originalorder-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:74804773-3ab0-410e-9c94-3f888e3a5bee"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-08-04T11:00:00+02:00"
* author = Reference(Org-NationalesZentrumFurMeningokokken)
* title = "Laborbericht vom 4.8.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-Obs)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-originalorder-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#86581-6
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-04T09:15:00+02:00"
* performer = Reference(Org-NationalesZentrumFurMeningokokken)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-Spec)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-originalorder-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-02T09:15:00+02:00"

Instance: 14Doc-Neisseriameningitidis-confirmationtest-originalorder-SR1
InstanceOf: ChElmServicePreviousRequestLaboratoryOrder
Usage: #inline
* identifier.value = "50002610"
* status = #completed
* intent = #order
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-MonikaGiacometti)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-originalorder-SR2
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "98236973414"
* basedOn = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-SR1)
* status = #completed
* intent = #order
* code = $loinc#86581-6
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-AndreaGasser)
* specimen = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-Spec)

Instance: 14Doc-Neisseriameningitidis-confirmationtest-originalorder-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:74804773-3ab0-410e-9c94-3f888e3a5bee"
* basedOn = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-SR2)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-NationalesZentrumFurMeningokokken)
* specimen = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-Spec)
* result = Reference(14Doc-Neisseriameningitidis-confirmationtest-originalorder-Obs)
