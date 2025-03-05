// Instance: 64Doc-CPE-Genotyping
// InstanceOf: ChElmDocumentStrict
// Usage: #example
// Title: "64Doc - CPE Genotyping"
// Description: "Example for a CH ELM Document: Laboratory Report"
// * identifier.system = "urn:ietf:rfc:3986"
// * identifier.value = "urn:uuid:0ed5f82b-06e9-427b-8546-e841a33d49e8"
// * type = #document
// * timestamp = "2024-09-10T12:00:00+02:00"
// * entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/64Comp-Genotyping"
// * entry[=].resource = 64Comp-Genotyping
// * entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/64DR-Genotyping"
// * entry[=].resource = 64DR-Genotyping
// * entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-001"
// * entry[=].resource = Pat-001
// * entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/64Obs-Genotyping"
// * entry[=].resource = 64Obs-Genotyping
// * entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/64Spec-Genotyping"
// * entry[=].resource = 64Spec-Genotyping
// * entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/64SR-Genotyping"
// * entry[=].resource = 64SR-Genotyping
// * entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
// * entry[=].resource = 1Org-Labor
// * entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
// * entry[=].resource = PR-PeterHauser
// * entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
// * entry[=].resource = Pract-PeterHauser
// * entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
// * entry[=].resource = Org-PeterHauser

// Instance: 64Comp-Genotyping
// InstanceOf: ChElmComposition
// Usage: #inline
// * language = #de-CH
// * identifier.system = "urn:ietf:rfc:3986"
// * identifier.value = "urn:uuid:0ed5f82b-06e9-427b-8546-e841a33d49e8"
// * status = #final
// * type.coding[0].version = "http://snomed.info/sct/2011000195101"
// * type.coding[=] = $sct#4241000179101 "Laborbericht"
// * type.coding[+] = $loinc#11502-2 "Laboratory report"
// * subject = Reference(Pat-001)
// * date = "2024-09-10T12:00:00+02:00"
// * author = Reference(1Org-Labor)
// * title = "Laborbericht vom 10.09.2024"
// * section.title = "Genotyping"
// * section.code = $sct#726528006 "Genotyping (qualifier value)"
// * section.entry = Reference(64Obs-Genotyping)

// Instance: 64DR-Genotyping
// InstanceOf: ChElmDiagnosticReport
// Usage: #inline
// * extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
// * extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/64Comp-Genotyping)
// * identifier.system = "urn:ietf:rfc:3986"
// * identifier.value = "urn:uuid:0ed5f82b-06e9-427b-8546-e841a33d49e8"
// * basedOn = Reference(64SR-Genotyping)
// * status = #final
// * code = $loinc#11502-2 "Laboratory report"
// * subject = Reference(Pat-001)
// * performer = Reference(1Org-Labor)
// * specimen = Reference(64Spec-Genotyping)
// * result = Reference(64Obs-Genotyping)

// Instance: 64SR-Genotyping
// InstanceOf: ChElmServiceRequestLaboratoryOrder
// Usage: #inline
// * identifier.value = "26500923622"
// * status = #completed
// * intent = #order
// * code = $loinc#29579-0 "Mycobacterial Genotyping panel by Method for Slow-growing mycobacteria"
// * subject = Reference(Pat-001)
// * requester = Reference(PR-PeterHauser)
// * specimen = Reference(64Spec-Genotyping)

// Instance: 64Spec-Genotyping
// InstanceOf: ChElmSpecimen
// Usage: #inline
// * subject = Reference(Pat-001)
// * collection.collectedDateTime = "2024-09-08"

// Instance: 64Obs-Genotyping
// InstanceOf: ChElmObservationResultsLaboratory
// Usage: #inline
// * status = #final
// * category[laboratory] = $observation-category#laboratory "Laboratory"
// * code = $sct#1098201000112108 "Carbapenemase-producing Klebsiella pneumoniae (organism)"
// * subject = Reference(Pat-001)
// * effectiveDateTime = "2024-09-10T14:20:00+02:00"
// * performer = Reference(1Org-Labor)
// * specimen = Reference(64Spec-Genotyping)

// * component[0].code = $loinc#LP441355-7 "OXA-23 carbapenemase"
// * component[0].dataAbsentReason = $data-absent-reason-cs#not-applicable
// * component[=].interpretation =  $v3-ObservationInterpretation#NEG "Negative"

// * component[+].code = $loinc#63368-5 "Carbapenem resistance genes [Identifier] by NAA with probe detection"
// * component[=].valueString = "some mutation string" 
// * component[=].interpretation =  $v3-ObservationInterpretation#POS "Positive"
