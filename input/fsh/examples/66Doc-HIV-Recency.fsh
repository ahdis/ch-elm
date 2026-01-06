Instance: 66Doc-HivRecency
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "66Doc - HIV Recency"
Description: "Example document for HIV Recency"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-8c683c69d6bd"
* type = #document
* timestamp = "2025-03-17T12:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/66Comp-HivRecency"
* entry[=].resource = 66Comp-HivRecency
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/66DR-HivRecency"
* entry[=].resource = 66DR-HivRecency
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/66Pat"
* entry[=].resource = 66Pat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/66Obs-HivRecency"
* entry[=].resource = 66Obs-HivRecency
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/66Spec-HivRecency"
* entry[=].resource = 66Spec-HivRecency
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/66SR-HivRecency"
* entry[=].resource = 66SR-HivRecency
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PR-PeterHauser"
* entry[=].resource = PR-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract-PeterHauser"
* entry[=].resource = Pract-PeterHauser
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Org-PeterHauser"
* entry[=].resource = Org-PeterHauser

Instance: 66Pat
InstanceOf: ChElmPatientHIV
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.extension[hivcode].url = "http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-ext-hiv-code"
* name.extension[hivcode].valueString = "H5"
* name.family.extension[dataabsentreason].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension[dataabsentreason].valueCode = #masked
* name.given.extension[dataabsentreason].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.given.extension[dataabsentreason].valueCode = #masked
* gender = #female
* birthDate = "1981-02-07"
* address.use = #home
* address.city = "Carouge"
* address.state = "GE"
* address.postalCode = "1227"
* address.country = "CH"
* address.country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH

Instance: 66Comp-HivRecency
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-8c683c69d6bd"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(66Pat)
* date = "2025-03-17T12:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 17.03.2025"
* section[lab-sero].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-sero].code = $loinc#18727-8 "Serology studies (set)"
* section[lab-sero].entry = Reference(66Obs-HivRecency)

Instance: 66DR-HivRecency
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/66Comp-HivRecency)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9a8b9ee-9157-44af-b46e-8c683c69d6bd"
* basedOn = Reference(66SR-HivRecency)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(66Pat)
* performer = Reference(1Org-Labor)
* specimen = Reference(66Spec-HivRecency)
* result = Reference(66Obs-HivRecency)

Instance: 66SR-HivRecency
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.value = "36500923675"
* status = #completed
* intent = #order
* code = $loinc#77685-6 "HIV 1 and 2 IgG Ab [Identifier] in Serum or Plasma by Immunoblot"
* subject = Reference(66Pat)
* requester = Reference(PR-PeterHauser)
* specimen = Reference(66Spec-HivRecency)

Instance: 66Spec-HivRecency
InstanceOf: ChElmSpecimen
Usage: #inline
* subject = Reference(66Pat)
* collection.collectedDateTime = "2025-03-15T14:20:00+02:00"

Instance: 66Obs-HivRecency
InstanceOf: ChLabObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#77685-6 "HIV 1 and 2 IgG Ab [Identifier] in Serum or Plasma by Immunoblot"
* subject = Reference(66Pat)
* effectiveDateTime = "2025-03-15T14:20:00+02:00"
* performer = Reference(1Org-Labor)
* specimen = Reference(66Spec-HivRecency)

* component[0].code = $sct#118040000 "Measurement of Human immunodeficiency virus 1 glycoprotein 120 antibody (procedure)"
* component[=].valueQuantity.value = 1 
* component[=].valueQuantity.unit = #[arb'U] 
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #[arb'U]

* component[+].code = $sct#118044009 "Measurement of Human immunodeficiency virus 1 glycoprotein 41 antibody (procedure)"
* component[=].valueQuantity.value = 0.5 
* component[=].valueQuantity.unit = #[arb'U] 
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #[arb'U]

* component[+].code = $sct#118052007 "Measurement of Human immunodeficiency virus 1 protein 31 antibody (procedure)"
* component[=].valueQuantity.value = 0
* component[=].valueQuantity.unit = #[arb'U] 
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #[arb'U]

* component[+].code = $sct#117749009 "Measurement of Human immunodeficiency virus 1 protein 24 antibody (procedure)"
* component[=].valueQuantity.value = 2
* component[=].valueQuantity.unit = #[arb'U] 
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #[arb'U]

* component[+].code = $sct#118047002 "Measurement of Human immunodeficiency virus 1 protein 17 antibody (procedure)"
* component[=].valueQuantity.value = 3
* component[=].valueQuantity.unit = #[arb'U] 
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #[arb'U]

* component[+].code = $sct#118062000 "Measurement of Human immunodeficiency virus 2 glycoprotein 105 antibody (procedure)"
* component[=].valueQuantity.value = 0
* component[=].valueQuantity.unit = #[arb'U] 
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #[arb'U]

* component[+].code = $sct#118067006 "Measurement of Human immunodeficiency virus 2 glycoprotein 36 antibody (procedure)"
* component[=].valueQuantity.value = 4
* component[=].valueQuantity.unit = #[arb'U] 
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #[arb'U]