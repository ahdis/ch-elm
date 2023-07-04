Logical: ChElmLaboratoryReport
Parent: Element
Id: LaboratoryReport
Title: "CH ELM Laboratory Report"
Description: "The logical model represents the laboratory report as an abstract data model. The model shows the used data set and specifies the data types and the cardinalities of the data elements."
* . ^short = "Laborbericht basierend auf der SR 818.101.126 Verordnung des EDI über die Meldung von Beobachtungen übertragbarer Krankheiten des Menschen"
* . ^definition = "Laboratory Report"

* ReportingLab 1..1 Element "Reporting unit -> Art. 4 Abs. 2 (Meldepflichtiges Laboratorium)" 
* ReportingLab.LabCodeFOPH 1..1 string "Reporting unit identifying code" 
* ReportingLab.LabGLN 1..1 string "Reporting unit global location number (GLN) -> 1.1.2024: Art. 4 Abs. 2 Bst. d (GLN des Laboratoriums)" 
* ReportingLab.LabName 1..1	string "Reporting unit name -> Art. 4 Abs. 2 Bst. a (Bezeichnung des Laboratoriums)" 
* ReportingLab.LabDepartment 0..1 string "Reporting unit department" 
* ReportingLab.LabPhysician 1..1 Element "Reporting unit physician"
* ReportingLab.LabPhysician.LabPhysicianGLN 1..* string "Reporting unit physician global location number (GLN)"
* ReportingLab.LabPhysician.LabPhysicianSurname 1..1 string "Reporting unit physician surname -> Art. 4 Abs. 2 Bst. b (Name der verantwortlichen Laborleiterin oder des verantwortlichen Laborleiters)"
* ReportingLab.LabPhysician.LabPhysicianGivenname 1..* string "Reporting unit physician given name -> Art. 4 Abs. 2 Bst. b (Vorame der verantwortlichen Laborleiterin oder des verantwortlichen Laborleiters)"
* ReportingLab.LabAddress 1..* Element "Reporting unit address -> Art. 4 Abs. 2 Bst. d (Adresse)" 
* ReportingLab.LabAddress.LabStreetAddressLine 0..1 string "Reporting unit street"
* ReportingLab.LabAddress.LabPostBox 0..1 string "Reporting unit post box" 
* ReportingLab.LabAddress.LabZipCode 1..1 string "Reporting unit ZIP code"
* ReportingLab.LabAddress.LabCity 1..1 string "Reporting unit city"
* ReportingLab.LabPhone 1..1 string "Reporting unit phone number -> Art. 4 Abs. 2 Bst. c (Telefonnummer)"
* ReportingLab.LabEmail 1..1 string "Reporting unit e-mail address -> Art. 4 Abs. 2 Bst. d (E-Mail-Adresse) / 1.1.2024: Art. 4 Abs. 2 Bst. c (E-Mail-Adresse)"
* ReportingLab.LabOrderId 1..1 string "Reporting unit order ID" 
* ReportingLab.SpecimenId 0..1 string "Reporting unit specimen ID" 

* Orderer 1..1 Element "Orderer -> 1.1.2024: Art. 4 Abs. 3 (Auftraggebende Ärztin oder auftraggebender Arzt und Betrieb in dem sie oder er tätig ist)"
* Orderer.OrdererGLN 1..1 string "Orderer organization global location number (GLN) -> 1.1.2024: Art. 4 Abs. 3 Bst. c (GLN des Betriebs, in dem die auftraggebende Ärztin oder der auftraggebende Arzt tätig ist)"  
* Orderer.OrdererOrgName 1..1 string "Orderer organization name" 
* Orderer.OrdererDivision 0..1 string "Orderer division" 
* Orderer.OrdererPhysician 1..1 Element "Orderer physician"
* Orderer.OrdererPhysician.OrdererPhysicianGLN 1..* string "Orderer physician global location number (GLN) -> 1.1.2024: Art. 4 Abs. 3 Bst. a (GLN der auftraggebenden Ärztin oder des auftraggebenden Artzes)"
* Orderer.OrdererPhysician.OrdererPhysicianSurname 1..1 string "Ordering physician surname -> Art. 4 Abs. 3 Bst. a (Name der auftraggebenden Ärztin oder des auftraggebenden Artzes)"
* Orderer.OrdererPhysician.OrdererPhysicianGivenname 1..* string "Ordering physician given name -> Art. 4 Abs. 3 Bst. a (Vorname der auftraggebenden Ärztin oder des auftraggebenden Artzes)" 
* Orderer.OrdererAddress 1..* Element "Orderer address -> Art. 4 Abs. 3 Bst. b (Adresse der auftraggebenden Ärztin oder des auftraggebenden Artzes) / 1.1.2024: Art. 4 Abs. 3 Bst. c (Adresse des Betriebs, in dem die auftraggebende Ärztin oder der auftraggebende Arzt tätig ist)"
* Orderer.OrdererAddress.OrdererStreetAddressLine 0..1 string "Orderer street"
* Orderer.OrdererAddress.OrdererPostBox 0..1 string "Orderer post box" 
* Orderer.OrdererAddress.OrdererZipCode 1..1 string "Orderer ZIP code"
* Orderer.OrdererAddress.OrdererCity 1..1 string "Orderer city"
* Orderer.OrdererPhone 1..1 string "Orderer phone number -> 1.1.2024: Art. 4 Abs. 3 Bst. b (Telefonnummer)"
* Orderer.OrdererEmail 1..1 string "Orderer e-mail address -> 1.1.2024: Art. 4 Abs. 3 Bst. b (E-Mail-Adresse)"

* PrimaryLab 0..* Element "Primary laboratory" 
* PrimaryLab.PrimaryLabGLN 1..1 string "Primary laboratory global location number (GLN)" 
* PrimaryLab.PrimaryLabName 1..1 string "Primary laboratory name" 
* PrimaryLab.PrimaryLabDepartment 0..1 string "Primary laboratory department" 
* PrimaryLab.PrimaryLabPhysician 1..1 Element "Primary laboratory physician"
* PrimaryLab.PrimaryLabPhysician.LabPhysicianGLN 1..* string "Primary laboratory physician global location number (GLN)"
* PrimaryLab.PrimaryLabPhysician.PrimaryLabPhysicianSurname 1..1 string "Primary laboratory physician surname"
* PrimaryLab.PrimaryLabPhysician.PrimaryLabPhysicianGivenname 1..* string "Primary laboratory physician given name" 
* PrimaryLab.PrimaryLabAddress 1..* Element "Primary laboratory address"
* PrimaryLab.PrimaryLabAddress.PrimaryLabStreetAddressLine 0..1 string "Primary laboratory street"
* PrimaryLab.PrimaryLabAddress.PrimaryLabPostBox 0..1 string "Primary laboratory post box"
* PrimaryLab.PrimaryLabAddress.PrimaryLabZipCode 1..1 string "Primary laboratory ZIP code"
* PrimaryLab.PrimaryLabAddress.PrimaryLabCity 1..1 string "Primary laboratory city"
* PrimaryLab.PrimaryLabPhone 1..1 string "Primary laboratory phone number"
* PrimaryLab.PrimaryLabEmail 1..1 string "Primary laboratory e-mail address"
* PrimaryLab.PrimaryLabOrderId 1..1 string "Primary laboratory order ID" 
* PrimaryLab.SpecimenId	0..1 string "Primary laboratory specimen ID" 

* Patient 1..1 Element "Patient -> Anhang 3 (Angaben zur betrofenen Person)"
* Patient.PatientOASI 1..* string "Patient old-age and survivors's insurance (OASI) number -> 1.1.2024: Anhang 3 (Angaben zur betroffenen Person: AHV-Nummer)"
* Patient.PatientSurname 1..1 string "Patient surname -> Anhang 3 (Angaben zur betroffenen Person: Name, resp. Initialen)"
* Patient.PatientGivenname 1..* string "Patient given name -> Anhang 3 (Angaben zur betroffenen Person: Vorname, resp. Initialen)"
* Patient.PatientGenderCode 1..1 code "Patient gender code -> Anhang 3 (Angaben zur betroffenen Person: Geschlecht)" 
* Patient.PatientDateOfBirth 1..1 date "Patient date of birth -> Anhang 3 (Angaben zur betroffenen Person: Geburtsdatum)"
* Patient.PatientDateOfBirth.PatientDayOfBirth 1..1 date "Patient day of birth"
* Patient.PatientDateOfBirth.PatientMonthOfBirth 1..1 date "Patient month of birth"
* Patient.PatientDateOfBirth.PatientYearOfBirth 1..1 date "Patient year of birth"
* Patient.PatientPhoneNumber 0..* string "Patient phone number"
* Patient.PatientEmail 0..* string "Patient e-mail address"
* Patient.PatientAddress 1..* Element "Patient address -> Anhang 3 (Angaben zur betroffenen Person: Adresse)"
* Patient.PatientAddress.PatientStreetAddressLine 0..* string "Patient street"
* Patient.PatientAddress.PatientZipCode 1..1 string "Patient ZIP code"
* Patient.PatientAddress.PatientCity 1..1 string "Patient city of residence"
* Patient.PatientAddress.PatientCantonCode 0..1 string "Patient canton of residence"
* Patient.PatientAddress.PatientCountryCode 0..1 code "Patient country of residence code"

* TestResult 1..* Element "Test -> Art. 4 Abs. 1 (Die zu meldenden laboranalytischen Befunde) - Anhang 3 (Angaben zum laboranalytischen Befund)"
* TestResult.ExecutionDateTime 1..1 Element "Date (-time) of test"
* TestResult.ExecutionDateTime.TestDayOfExecution 1..1 date "Day of test"
* TestResult.ExecutionDateTime.TestMonthOfExecution 1..1 date "Month of test"
* TestResult.ExecutionDateTime.TestYearOfExecution 1..1 date "Year of test"
* TestResult.TestResultCode 1..1 code "Test result code -> Anhang 3 (Angaben zum laboranalytischen Befund: Resultat mit Interpretation)"
* TestResult.TestDetectionCode 1..1 code "Detection-method code -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Methode)"
* TestResult.TestDetectionOther 0..1 code "Detection-method other -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Methode)"

* CollectionMaterial 0..* Element "Sampling -> Art. 4 Abs. 1 (Die zu meldenden laboranalytischen Befunde) - Anhang 3 (Angaben zum laboranalytischen Befund)"
* CollectionMaterial.CollectionDateTime 0..1 Element "Date (-time) of sample collection"
* CollectionMaterial.CollectionDateTime.TestDayOfCollection 1..1 date "Day of sample collection"
* CollectionMaterial.CollectionDateTime.TestMonthOfCollection 1..1 date "Month sample collection"
* CollectionMaterial.CollectionDateTime.TestYearOfCollection 1..1 date "Year sample collection"
* CollectionMaterial.TestCollectionMaterialCode 1..1 code "Sampling material code -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Material)"
* CollectionMaterial.TestCollectionMaterialOther 0..1 code "Sampling material other -> Anhang 3 (Angaben zum laboranalytischen Befund: Unteruschung Material)"

* TestOrganism 1..* Element "Organism -> Art. 4 Abs. 1 (Die zu meldenden laboranalytischen Befunde) - Anhang 3 (Angaben zum laboranalytischen Befund)"
* TestOrganism.TestOrganismCode 1..1 code "Organism -> Anhang 3 (Angaben zum laboranalytischen Befund: Beobachtung)"
* TestOrganism.TestOrganismOther 0..1 code "Organism other -> Anhang 3 (Angaben zum laboranalytischen Befund: Beobachtung)"




Mapping: fhir
Id: fhir
Title: "CH ELM Laboratory Report Model to FHIR"
Source: ChElmLaboratoryReport
Target: "hl7.org/fhir/r4"
* -> "Bundle"

* ReportingLab -> "Bundle.entry[0].resource.author.resolve()"
* ReportingLab.LabCodeFOPH -> "Bundle.entry[0].resource.author.resolve().organization.resolve().identifier.where(system='http://fhir.ch/ig/ch-elm/NamingSystem/LabCodeFOPH').value"
* ReportingLab.LabGLN -> "Bundle.entry[0].resource.author.resolve().organization.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* ReportingLab.LabName -> "Bundle.entry[0].resource.author.resolve().organization.resolve().name"
* ReportingLab.LabDepartment -> "Bundle.entry[0].resource.author.resolve().organization.resolve().extension.where(url='http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-ext-department').value"
* ReportingLab.LabPhysician -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve()"
* ReportingLab.LabPhysician.LabPhysicianGLN -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* ReportingLab.LabPhysician.LabPhysicianSurname -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve().name.family"
* ReportingLab.LabPhysician.LabPhysicianGivenname -> "Bundle.entry[0].resource.author.resolve().practitioner.resolve().name.given"
* ReportingLab.LabAddress -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address"
* ReportingLab.LabAddress.LabStreetAddressLine -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.line"
* ReportingLab.LabAddress.LabPostBox -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.line"
* ReportingLab.LabAddress.LabZipCode -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.postalCode"
* ReportingLab.LabAddress.LabCity -> "Bundle.entry[0].resource.author.resolve().organization.resolve().address.city"
* ReportingLab.LabPhone -> "Bundle.entry[0].resource.author.resolve().organization.resolve().telecom.where(system='phone').value"
* ReportingLab.LabEmail -> "Bundle.entry[0].resource.author.resolve().organization.resolve().telecom.where(system='email').value"
* ReportingLab.LabOrderId -> "Bundle.entry.resource.as(ServiceRequest).where(%resource.entry.resource.as(DiagnosticReport).basedOn.resolve()=$this).identifier"
* ReportingLab.SpecimenId	-> "TODO: Specimen.accessionIdentifier.value"

* Orderer -> "PractitionerRole.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-practitionerrole')"
* Orderer.OrdererGLN -> "Organization.identifier:GLN"
* Orderer.OrdererOrgName -> "Organization.name"
* Orderer.OrdererDivision -> "Organization.extension:department"
* Orderer.OrdererPhysician -> "Practitioner.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-practitioner')"
* Orderer.OrdererPhysician.OrdererPhysicianGLN -> "Practitioner.identifier:GLN"
* Orderer.OrdererPhysician.OrdererPhysicianSurname -> "Practitioner.name.family"
* Orderer.OrdererPhysician.OrdererPhysicianGivenname -> "Practitioner.name.given"
* Orderer.OrdererAddress -> "Organization.address"
* Orderer.OrdererAddress.OrdererStreetAddressLine -> "Organization.address.line"
* Orderer.OrdererAddress.OrdererPostBox -> "Organization.address.line"
* Orderer.OrdererAddress.OrdererZipCode -> "Organization.address.postalCode"
* Orderer.OrdererAddress.OrdererCity -> "Organization.address.city"
* Orderer.OrdererPhone -> "Organization.telecom:phone.value"
* Orderer.OrdererEmail -> "Organization.telecom:email.value"

* PrimaryLab -> "PractitionerRole.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-practitionerrole')"
* PrimaryLab.PrimaryLabGLN -> "Organization.identifier:GLN"
* PrimaryLab.PrimaryLabName -> "Organization.name"
* PrimaryLab.PrimaryLabDepartment -> "Organization.extension:department"
* PrimaryLab.PrimaryLabPhysician -> "Practitioner.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-practitioner')"
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
* PrimaryLab.PrimaryLabOrderId -> "ServiceRequest.identifier:placerOrderIdentifier"
* PrimaryLab.SpecimenId	-> "Specimen.accessionIdentifier.value"

* Patient -> "Bundle.entry[0].resource.subject.resolve()"
* Patient.PatientOASI -> "Bundle.entry[0].resource.subject.resolve().identifier.where(system='urn:oid:2.16.756.5.32').value"
* Patient.PatientSurname -> "Bundle.entry[0].resource.subject.resolve().name.given"
* Patient.PatientGivenname -> "Bundle.entry[0].resource.subject.resolve().name.family"
* Patient.PatientGenderCode -> "Bundle.entry[0].resource.subject.resolve().gender"
* Patient.PatientDateOfBirth -> "Bundle.entry[0].resource.subject.resolve().birthDate"
* Patient.PatientDateOfBirth.PatientDayOfBirth -> "Bundle.entry[0].resource.subject.resolve().birthDate.toString().substring(8, 2)"
* Patient.PatientDateOfBirth.PatientMonthOfBirth -> "Bundle.entry[0].resource.subject.resolve().birthDate.toString().substring(5, 2)"
* Patient.PatientDateOfBirth.PatientYearOfBirth -> "Bundle.entry[0].resource.subject.resolve().birthDate.toString().substring(0, 4)"
* Patient.PatientPhoneNumber -> "Bundle.entry[0].resource.subject.resolve().telecom.where(system='phone').value"
* Patient.PatientEmail -> "Bundle.entry[0].resource.subject.resolve().telecom.where(system='email').value"
* Patient.PatientAddress -> "Bundle.entry[0].resource.subject.resolve().address"
* Patient.PatientAddress.PatientStreetAddressLine -> "Bundle.entry[0].resource.subject.resolve().address.line"
* Patient.PatientAddress.PatientZipCode -> "Bundle.entry[0].resource.subject.resolve().address.postalCode"
* Patient.PatientAddress.PatientCity -> "Bundle.entry[0].resource.subject.resolve().address.city"
* Patient.PatientAddress.PatientCantonCode -> "Bundle.entry[0].resource.subject.resolve().address.state"
* Patient.PatientAddress.PatientCountryCode -> "Bundle.entry[0].resource.subject.resolve().address.country.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding').value.code"

* TestResult
* TestResult.ExecutionDateTime
* TestResult.ExecutionDateTime.TestDayOfExecution
* TestResult.ExecutionDateTime.TestMonthOfExecution
* TestResult.ExecutionDateTime.TestYearOfExecution 
* TestResult.TestResultCode 
* TestResult.TestDetectionCode 
* TestResult.TestDetectionOther 

* CollectionMaterial 
* CollectionMaterial.CollectionDateTime 
* CollectionMaterial.CollectionDateTime.TestDayOfCollection 
* CollectionMaterial.CollectionDateTime.TestMonthOfCollection 
* CollectionMaterial.CollectionDateTime.TestYearOfCollection 
* CollectionMaterial.TestCollectionMaterialCode 
* CollectionMaterial.TestCollectionMaterialOther 

* TestOrganism 
* TestOrganism.TestOrganismCode 
* TestOrganism.TestOrganismOther 
