Instance: 28Doc-Listeria-monocytogenes
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6a321698-74a7-4793-940f-dcab792bbbab"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 28Doc-Listeria-monocytogenes-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 28Doc-Listeria-monocytogenes-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 28Doc-Listeria-monocytogenes-Spec)
* insert Entry(ServiceRequest, 28Doc-Listeria-monocytogenes-SR)
* insert Entry(DiagnosticReport, 28Doc-Listeria-monocytogenes-DR)

Instance: 28Doc-Listeria-monocytogenes-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6a321698-74a7-4793-940f-dcab792bbbab"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(28Doc-Listeria-monocytogenes-Obs)

Instance: 28Doc-Listeria-monocytogenes-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#82184-3
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-07-25T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* dataAbsentReason = $data-absent-reason-cs#not-applicable
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(28Doc-Listeria-monocytogenes-Spec)

Instance: 28Doc-Listeria-monocytogenes-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-07-23T14:20:00+02:00"

Instance: 28Doc-Listeria-monocytogenes-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#82184-3
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(28Doc-Listeria-monocytogenes-Spec)

Instance: 28Doc-Listeria-monocytogenes-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(28Doc-Listeria-monocytogenes-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6a321698-74a7-4793-940f-dcab792bbbab"
* basedOn = Reference(28Doc-Listeria-monocytogenes-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(28Doc-Listeria-monocytogenes-Spec)
* result = Reference(28Doc-Listeria-monocytogenes-Obs)
