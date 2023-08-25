// Logical Models and not permitting MustSupport flag
// https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/Logical.20Models.20and.20not.20permitting.20MustSupport.20flag

Logical: ChElmLaboratoryReport
Parent: Element
Id: LaboratoryReport
Title: "CH ELM Laboratory Report"
Description: "The logical model represents the laboratory report as an abstract data model. This data elements are defined by the ordonnace of FOPH and are then mapped to the FHIR document structure."
* . ^short = "Laborbericht basierend auf der SR 818.101.126 Verordnung des EDI über die Meldung von Beobachtungen übertragbarer Krankheiten des Menschen"
* . ^definition = "Laboratory Report"

* Lab 1..1 Element "Reporting unit -> Art. 4 Abs. 2 (Meldepflichtiges Laboratorium)" 
* Lab.LabCodeFOPH 1..1 string "Reporting unit identifying code" 
* Lab.LabGLN 1..1 string "Reporting unit global location number (GLN) -> 1.1.2024: Art. 4 Abs. 2 Bst. d (GLN des Laboratoriums)" 
* Lab.LabName 1..1	string "Reporting unit name -> Art. 4 Abs. 2 Bst. a (Bezeichnung des Laboratoriums)" 
* Lab.LabDepartment 0..1 string "Reporting unit department" 
* Lab.LabPhysician 1..1 Element "Reporting unit physician"
* Lab.LabPhysician.LabPhysicianGLN 0..1 string "Reporting unit physician global location number (GLN)"
* Lab.LabPhysician.LabPhysicianSurname 1..1 string "Reporting unit physician surname -> Art. 4 Abs. 2 Bst. b (Name der verantwortlichen Laborleiterin oder des verantwortlichen Laborleiters)"
* Lab.LabPhysician.LabPhysicianGivenname 1..1 string "Reporting unit physician given name -> Art. 4 Abs. 2 Bst. b (Vorame der verantwortlichen Laborleiterin oder des verantwortlichen Laborleiters)"
* Lab.LabAddress 1..1 Element "Reporting unit address -> Art. 4 Abs. 2 Bst. d (Adresse)" 
* Lab.LabAddress.LabStreetAddressLine 0..1 string "Reporting unit street"
* Lab.LabAddress.LabPostBox 0..1 string "Reporting unit post box" 
* Lab.LabAddress.LabZipCode 1..1 string "Reporting unit ZIP code"
* Lab.LabAddress.LabCity 1..1 string "Reporting unit city"
* Lab.LabPhone 1..1 string "Reporting unit phone number -> Art. 4 Abs. 2 Bst. c (Telefonnummer)"
* Lab.LabEmail 1..1 string "Reporting unit e-mail address -> Art. 4 Abs. 2 Bst. d (E-Mail-Adresse) / 1.1.2024: Art. 4 Abs. 2 Bst. c (E-Mail-Adresse)"
* Lab.LabOrderId 1..1 string "Reporting unit order ID" 
* Lab.LabOrderCode 1..1 code "Reporting unit order code"


* Orderer 1..1 Element "Orderer -> 1.1.2024: Art. 4 Abs. 3 (Auftraggebende Ärztin oder auftraggebender Arzt und Betrieb in dem sie oder er tätig ist)"
* Orderer.OrdererGLN 1..1 string "Orderer organization global location number (GLN) -> 1.1.2024: Art. 4 Abs. 3 Bst. c (GLN des Betriebs, in dem die auftraggebende Ärztin oder der auftraggebende Arzt tätig ist)"  
* Orderer.OrdererOrgName 1..1 string "Orderer organization name" 
* Orderer.OrdererDepartment 0..1 string "Orderer department" 
* Orderer.OrdererPhysician 1..1 Element "Orderer physician"
* Orderer.OrdererPhysician.OrdererPhysicianGLN 1..1 string "Orderer physician global location number (GLN) -> 1.1.2024: Art. 4 Abs. 3 Bst. a (GLN der auftraggebenden Ärztin oder des auftraggebenden Artzes)"
* Orderer.OrdererPhysician.OrdererPhysicianSurname 1..1 string "Ordering physician surname -> Art. 4 Abs. 3 Bst. a (Name der auftraggebenden Ärztin oder des auftraggebenden Artzes)"
* Orderer.OrdererPhysician.OrdererPhysicianGivenname 1..1 string "Ordering physician given name -> Art. 4 Abs. 3 Bst. a (Vorname der auftraggebenden Ärztin oder des auftraggebenden Artzes)" 
* Orderer.OrdererAddress 1..1 Element "Orderer address -> Art. 4 Abs. 3 Bst. b (Adresse der auftraggebenden Ärztin oder des auftraggebenden Artzes) / 1.1.2024: Art. 4 Abs. 3 Bst. c (Adresse des Betriebs, in dem die auftraggebende Ärztin oder der auftraggebende Arzt tätig ist)"
* Orderer.OrdererAddress.OrdererStreetAddressLine 0..1 string "Orderer street" // TODO: vielleicht 1..1
* Orderer.OrdererAddress.OrdererPostBox 0..1 string "Orderer post box" 
* Orderer.OrdererAddress.OrdererZipCode 1..1 string "Orderer ZIP code"
* Orderer.OrdererAddress.OrdererCity 1..1 string "Orderer city"
* Orderer.OrdererPhone 1..1 string "Orderer phone number -> 1.1.2024: Art. 4 Abs. 3 Bst. b (Telefonnummer)"
* Orderer.OrdererEmail 1..1 string "Orderer e-mail address -> 1.1.2024: Art. 4 Abs. 3 Bst. b (E-Mail-Adresse)"

// TODO
* PrimaryLab 0..1 Element "TODO: Primary laboratory" 
* PrimaryLab.PrimaryLabGLN 1..1 string "Primary laboratory global location number (GLN)" 
* PrimaryLab.PrimaryLabName 1..1 string "Primary laboratory name" 
* PrimaryLab.PrimaryLabDepartment 0..1 string "Primary laboratory department" 
* PrimaryLab.PrimaryLabPhysician 1..1 Element "Primary laboratory physician"
* PrimaryLab.PrimaryLabPhysician.LabPhysicianGLN 0..1 string "Primary laboratory physician global location number (GLN)"
* PrimaryLab.PrimaryLabPhysician.PrimaryLabPhysicianSurname 1..1 string "Primary laboratory physician surname"
* PrimaryLab.PrimaryLabPhysician.PrimaryLabPhysicianGivenname 1..1 string "Primary laboratory physician given name" 
* PrimaryLab.PrimaryLabAddress 1..1 Element "Primary laboratory address"
* PrimaryLab.PrimaryLabAddress.PrimaryLabStreetAddressLine 0..1 string "Primary laboratory street"
* PrimaryLab.PrimaryLabAddress.PrimaryLabPostBox 0..1 string "Primary laboratory post box"
* PrimaryLab.PrimaryLabAddress.PrimaryLabZipCode 1..1 string "Primary laboratory ZIP code"
* PrimaryLab.PrimaryLabAddress.PrimaryLabCity 1..1 string "Primary laboratory city"
* PrimaryLab.PrimaryLabPhone 1..1 string "Primary laboratory phone number"
* PrimaryLab.PrimaryLabEmail 1..1 string "Primary laboratory e-mail address"
* PrimaryLab.PrimaryLabOrderId 1..1 string "Primary laboratory order ID" 

* Patient 1..1 Element "Patient -> Anhang 3 (Angaben zur betrofenen Person)"
* Patient.PatientOASI 1..1 string "Patient old-age and survivors's insurance (OASI) number -> 1.1.2024: Anhang 3 (Angaben zur betroffenen Person: AHV-Nummer)"
* Patient.PatientSurname 1..1 string "Patient surname -> Anhang 3 (Angaben zur betroffenen Person: Name, resp. Initialen)"
* Patient.PatientGivenname 1..1 string "Patient given name -> Anhang 3 (Angaben zur betroffenen Person: Vorname, resp. Initialen)"
* Patient.PatientGenderCode 1..1 code "Patient gender code -> Anhang 3 (Angaben zur betroffenen Person: Geschlecht)" 
* Patient.PatientDateOfBirth 1..1 date "Patient date of birth -> Anhang 3 (Angaben zur betroffenen Person: Geburtsdatum)"
* Patient.PatientPhoneNumber 0..1 string "Patient phone number (only allowed for SARS-CoV-2 and Mpox-Virus)"
* Patient.PatientEmail 0..1 string "Patient e-mail address (only allowed for SARS-CoV-2 and Mpox-Virus)"
* Patient.PatientAddress 1..1 Element "Patient address -> Anhang 3 (Angaben zur betroffenen Person: Adresse)"
* Patient.PatientAddress.PatientStreetAddressLine 0..1 string "Patient street"
* Patient.PatientAddress.PatientZipCode 1..1 string "Patient ZIP code"
* Patient.PatientAddress.PatientCity 1..1 string "Patient city of residence"
* Patient.PatientAddress.PatientCantonCode 0..1 code "Patient canton of residence"
* Patient.PatientAddress.PatientCountryCode 1..1 code "Patient country of residence code"

* TestResult 1..1 Element "Test -> Art. 4 Abs. 1 (Die zu meldenden laboranalytischen Befunde) - Anhang 3 (Angaben zum laboranalytischen Befund)"
* TestResult.ExecutionDateTime 1..1 dateTime "Date (-time) of test"
* TestResult.TestResultCode 1..1 code "Test result code -> Anhang 3 (Angaben zum laboranalytischen Befund: Resultat mit Interpretation)"
* TestResult.TestDetectionCode 1..1 code "Detection-method code -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Methode)"
* TestResult.TestDetectionOther 0..1 code "Detection-method other -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Methode)"

* CollectionMaterial 1..1 Element "Sampling -> Art. 4 Abs. 1 (Die zu meldenden laboranalytischen Befunde) - Anhang 3 (Angaben zum laboranalytischen Befund)"
* CollectionMaterial.CollectionDateTime 0..1 dateTime "Date (-time) of sample collection"
* CollectionMaterial.TestCollectionMaterialCode 1..1 code "Sampling material code -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Material)"
* CollectionMaterial.TestCollectionMaterialOther 0..1 code "Sampling material other -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Material)"

* TestOrganism 1..* Element "Organism -> Art. 4 Abs. 1 (Die zu meldenden laboranalytischen Befunde) - Anhang 3 (Angaben zum laboranalytischen Befund)"
* TestOrganism.TestOrganismCode 1..1 code "Organism code -> Anhang 3 (Angaben zum laboranalytischen Befund: Beobachtung)"
* TestOrganism.TestOrganismOther 0..1 code "Organism other -> Anhang 3 (Angaben zum laboranalytischen Befund: Beobachtung)"



Mapping: ChElmLaboratoryReportScenario1ToFhirMapping
Id: ChElmLaboratoryReportScenario1ToFhirMapping
Title: "CH ELM Laboratory Report Scenario 1 to FHIR Mapping"
Source: ChElmLaboratoryReport
Target: "hl7.org/fhir/r4"
* -> "Bundle"

* Lab -> "Bundle.entry[0].resource.author.resolve()"
* Lab.LabCodeFOPH -> "Bundle.entry[0].resource.author.resolve().organization.resolve().identifier.where(system='http://fhir.ch/ig/ch-elm/NamingSystem/LabCodeFOPH').value"
* Lab.LabGLN -> "Bundle.entry[0].resource.author.resolve().organization.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* Lab.LabName -> "Bundle.entry[0].resource.author.resolve().organization.resolve().name"
* Lab.LabDepartment -> "Bundle.entry[0].resource.author.resolve().organization.resolve().extension.where(url='http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-ext-department').value"
* Lab.LabPhysician -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve()"
* Lab.LabPhysician.LabPhysicianGLN -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* Lab.LabPhysician.LabPhysicianSurname -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve().name.family"
* Lab.LabPhysician.LabPhysicianGivenname -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve().name.given"
* Lab.LabAddress -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address"
* Lab.LabAddress.LabStreetAddressLine -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.line"
* Lab.LabAddress.LabPostBox -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.line"
* Lab.LabAddress.LabZipCode -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.postalCode"
* Lab.LabAddress.LabCity -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.city"
* Lab.LabPhone -> "Bundle.entry[0].resource.author.resolve().organization.resolve().telecom.where(system='phone').value"
* Lab.LabEmail -> "Bundle.entry[0].resource.author.resolve().organization.resolve().telecom.where(system='email').value"
* Lab.LabOrderId -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().identifier"
* Lab.LabOrderCode -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().code"

* Orderer -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve()"
//* Orderer -> "Scenario 2: Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().basedOn.resolve().requester.resolve()"
* Orderer.OrdererGLN -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* Orderer.OrdererOrgName -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().name"
* Orderer.OrdererDepartment -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().extension.where(url='http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-ext-department').value"
* Orderer.OrdererPhysician -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve()"
* Orderer.OrdererPhysician.OrdererPhysicianGLN -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* Orderer.OrdererPhysician.OrdererPhysicianSurname -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().name.family"
* Orderer.OrdererPhysician.OrdererPhysicianGivenname -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().name.given"
* Orderer.OrdererAddress -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address"
* Orderer.OrdererAddress.OrdererStreetAddressLine -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.line"
* Orderer.OrdererAddress.OrdererPostBox -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.line"
* Orderer.OrdererAddress.OrdererZipCode -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.postalCode"
* Orderer.OrdererAddress.OrdererCity -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.city"
* Orderer.OrdererPhone -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().telecom.where(system='phone').value"
* Orderer.OrdererEmail -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().telecom.where(system='email').value"

* Patient -> "Bundle.entry[0].resource.subject.resolve()"
* Patient.PatientOASI -> "Bundle.entry[0].resource.subject.resolve().identifier.where(system='urn:oid:2.16.756.5.32').value"
* Patient.PatientSurname -> "Bundle.entry[0].resource.subject.resolve().name.given"
* Patient.PatientGivenname -> "Bundle.entry[0].resource.subject.resolve().name.family"
* Patient.PatientGenderCode -> "Bundle.entry[0].resource.subject.resolve().gender"
* Patient.PatientDateOfBirth -> "Bundle.entry[0].resource.subject.resolve().birthDate"
* Patient.PatientPhoneNumber -> "Bundle.entry[0].resource.subject.resolve().telecom.where(system='phone').value"
* Patient.PatientEmail -> "Bundle.entry[0].resource.subject.resolve().telecom.where(system='email').value"
* Patient.PatientAddress -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home')"
* Patient.PatientAddress.PatientStreetAddressLine -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').line"
* Patient.PatientAddress.PatientZipCode -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').postalCode"
* Patient.PatientAddress.PatientCity -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').city"
* Patient.PatientAddress.PatientCantonCode -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').state"
* Patient.PatientAddress.PatientCountryCode -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').country.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding').value.code"

* TestResult -> "Bundle.entry.resource.as(DiagnosticReport).result.resolve()"
* TestResult.ExecutionDateTime -> "Bundle.entry.resource.as(DiagnosticReport).result.resolve().effective"
* TestResult.TestResultCode -> "Bundle.entry.resource.as(DiagnosticReport).result.resolve().code" // coding/text?
* TestResult.TestDetectionCode -> "Bundle.entry.resource.as(DiagnosticReport).result.resolve().method.coding"
* TestResult.TestDetectionOther -> "Bundle.entry.resource.as(DiagnosticReport).result.resolve().method.text"

* CollectionMaterial -> "Bundle.entry.resource.as(DiagnosticReport).specimen.resolve()"
* CollectionMaterial.CollectionDateTime -> "Bundle.entry.resource.as(DiagnosticReport).specimen.resolve().collection.collected"
* CollectionMaterial.TestCollectionMaterialCode -> "Bundle.entry.resource.as(DiagnosticReport).specimen.resolve().type.coding"
* CollectionMaterial.TestCollectionMaterialOther -> "Bundle.entry.resource.as(DiagnosticReport).specimen.resolve().type.text"

* TestOrganism  -> "Bundle.entry.resource.as(DiagnosticReport).code.coding" // TODO
* TestOrganism.TestOrganismCode -> "Bundle.entry.resource.as(DiagnosticReport).code.coding" // TODO 
* TestOrganism.TestOrganismOther -> "Bundle.entry.resource.as(DiagnosticReport).code.text" // TODO 



// TODO Szenario 2
/*
* PrimaryLab -> "PractitionerRole"
* PrimaryLab.PrimaryLabGLN -> "Organization.identifier:GLN"
* PrimaryLab.PrimaryLabName -> "Organization.name"
* PrimaryLab.PrimaryLabDepartment -> "Organization.extension:department"
* PrimaryLab.PrimaryLabPhysician -> "PractitionerRole.practitioner"
* PrimaryLab.PrimaryLabPhysician.LabPhysicianGLN -> "Practitioner.identifier:GLN"
* PrimaryLab.PrimaryLabPhysician.PrimaryLabPhysicianSurname -> "Practitioner.name.family"
* PrimaryLab.PrimaryLabPhysician.PrimaryLabPhysicianGivenname -> "Practitioner.name.given"
* PrimaryLab.PrimaryLabAddress -> "Organization.address"
* PrimaryLab.PrimaryLabAddress.PrimaryLabStreetAddressLine -> "Organization.address.line"
* PrimaryLab.PrimaryLabAddress.PrimaryLabPostBox -> "Organization.address.line"
* PrimaryLab.PrimaryLabAddress.PrimaryLabZipCode -> "Organization.address.postalCode"
* PrimaryLab.PrimaryLabAddress.PrimaryLabCity -> "Organization.address.city"
* PrimaryLab.PrimaryLabPhone -> "Organization.telecom:phone.value"
* PrimaryLab.PrimaryLabEmail -> "Organization.telecom:email.value"
* PrimaryLab.PrimaryLabOrderId -> "ServiceRequest.identifier"
*/