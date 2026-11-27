Instance: 36Doc-Salmonella-paratyphi
InstanceOf: ChElmDocumentStrict
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6401332d-6012-443f-9690-9331adb23aab"
* type = #document
* timestamp = "2024-09-05T12:00:00+02:00"
* insert Entry(Composition, 36Doc-Salmonella-paratyphi-Comp)
* insert Entry(Patient, Pat-AntoineDupont)
* insert Entry(Organization, Org-SanLab)
* insert Entry(Observation, 36Doc-Salmonella-paratyphi-Obs)
* insert Entry(Practitioner, Pract-PeterHauser)
* insert Entry(Organization, Org-PeterHauser)
* insert Entry(PractitionerRole, PR-PeterHauser)
* insert Entry(Specimen, 36Doc-Salmonella-paratyphi-Spec)
* insert Entry(ServiceRequest, 36Doc-Salmonella-paratyphi-SR)
* insert Entry(DiagnosticReport, 36Doc-Salmonella-paratyphi-DR)

Instance: 36Doc-Salmonella-paratyphi-Comp
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6401332d-6012-443f-9690-9331adb23aab"
* status = #final
* insert LabReportCompositionType
* subject = Reference(Pat-AntoineDupont)
* date = "2024-09-05T12:00:00+02:00"
* author = Reference(Org-SanLab)
* title = "Laborbericht vom 2.9.2024"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(36Doc-Salmonella-paratyphi-Obs)

Instance: 36Doc-Salmonella-paratyphi-Obs
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#82301-3
* subject = Reference(Pat-AntoineDupont)
* effectiveDateTime = "2024-08-28T14:20:00+02:00"
* performer = Reference(Org-SanLab)
* valueCodeableConcept = $sct#79128009
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(36Doc-Salmonella-paratyphi-Spec)

Instance: 36Doc-Salmonella-paratyphi-Spec
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-AntoineDupont)
* collection.collectedDateTime = "2024-08-26T14:20:00+02:00"

Instance: 36Doc-Salmonella-paratyphi-SR
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "26500923622"
* status = #completed
* intent = #order
* code = $loinc#82301-3
* subject = Reference(Pat-AntoineDupont)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(36Doc-Salmonella-paratyphi-Spec)

Instance: 36Doc-Salmonella-paratyphi-DR
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].valueReference = Reference(36Doc-Salmonella-paratyphi-Comp)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6401332d-6012-443f-9690-9331adb23aab"
* basedOn = Reference(36Doc-Salmonella-paratyphi-SR)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-AntoineDupont)
* performer = Reference(Org-SanLab)
* specimen = Reference(36Doc-Salmonella-paratyphi-Spec)
* result = Reference(36Doc-Salmonella-paratyphi-Obs)
