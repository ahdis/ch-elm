// Logical Models and not permitting MustSupport flag
// https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/Logical.20Models.20and.20not.20permitting.20MustSupport.20flag

Logical: ChElmLaboratoryReport
Parent: Element
Id: LaboratoryReport
Title: "CH ELM Laboratory Report"
Description: """The logical model represents the CH ELM laboratory report as an abstract data model. These data elements are defined by the ordinance of the Federal Office of Public Health (FOPH) and are then mapped to the FHIR document structure. 

Cardinalities:
- The cardinalities in the logical model show the so-called 'best case'. This means that if these data are available, they must be submitted to the FOPH.
- Since in reality the data is not always available, the CH ELM profiles define which elements are required or optional.
- See also the concept 'Must Support', which is described on the 'Home' page of this implementation guide"""


* . ^short = "Laborbericht basierend auf der SR 818.101.126 Verordnung des EDI über die Meldung von Beobachtungen übertragbarer Krankheiten des Menschen (https://www.fedlex.admin.ch/eli/cc/2015/892/de)"
* . ^definition = "Laboratory Report"

* Header 1..1 Element "Document information"
* Header.DocumentIdentifier 1..1 Identifier "Persistent, unique identifier for the document"
* Header.DocumentTimestamp 1..1 dateTime "Timestamp of the document"
* Header.DocumentLanguage 1..1 code "Language of the document content"
* Header.DocumentTitle 1..1 string "Human Readable name/title of the document"
* Header.DocumentSectionTitle 1..1 string "Human Readable name/title of the section"

* Author 1..1 Element "Author of the document (may be identical with Lab)"
* Author.OrganizationGLN 1..1 Identifier "Global location number (GLN) of the authoring/sending organization"

* Lab 1..1 Element "Notifiable laboratory that performed the laboratory test -> Art. 4 Abs. 2 (Meldepflichtiges Laboratorium)" 
* Lab.OrganizationGLN 1..1 Identifier "Global location number (GLN) of the laboratory organization" 
* Lab.OrganizationName 1..1 string "Name of the laboratory organization"
* Lab.OrderIdentifier 1..1 Identifier "Identifier assigned to this order by the testing laboratory" 

* Orderer 1..1 Element "Orderer of the laboratory test -> Art. 4 Abs. 3 (Auftraggebende Ärztin oder auftraggebender Arzt und Betrieb in dem sie oder er tätig ist)"
* Orderer.OrganizationBER 0..1 Identifier "Business and Enterprise Register (BER) of the ordering organization"
* Orderer.OrganizationUIDB 0..1 Identifier "Unique Identification Business (UIDB) of the ordering organization"  
* Orderer.OrganizationName 1..1 string "Name of the ordering organization" 
* Orderer.OrganizationDepartment 1..1 string "Department where the laboratory test is ordered" 
* Orderer.Physician 1..1 Element "Ordering physician"
* Orderer.Physician.GLN 1..1 Identifier "Global location number (GLN) of the physician"
* Orderer.Physician.ZSR 0..1 Identifier "Unique Identification (ZSR/RCC) of the ordering physician"  
* Orderer.Physician.Surname 1..1 string "Surname physician"
* Orderer.Physician.Givenname 1..1 string "Given name physician" 
* Orderer.Physician.Phone 1..1 string "Phone number physician"
* Orderer.Physician.Email 1..1 string "Email address physician"
* Orderer.PhysicianAddress 0..1 Element "Address of the ordering physician (optional, if different from organization address)"
* Orderer.PhysicianAddress.StreetLine 1..1 string "Street name, house number"
* Orderer.PhysicianAddress.PostBox 1..1 string "P.O. Box number" 
* Orderer.PhysicianAddress.ZipCode 1..1 string "Zip code"
* Orderer.PhysicianAddress.City 1..1 string "City"
* Orderer.OrganizationAddress 1..1 Element "Address of the ordering organization (default address)"
* Orderer.OrganizationAddress.StreetLine 1..1 string "Street name, house number"
* Orderer.OrganizationAddress.PostBox 1..1 string "P.O. Box number" 
* Orderer.OrganizationAddress.ZipCode 1..1 string "Zip code"
* Orderer.OrganizationAddress.City 1..1 string "City"

* Patient 1..1 Element "Patient -> Anhang 3 (Angaben zur betroffenen Person)"
* Patient.Identifier 1..1 Identifier "Identifier"
* Patient.Identifier.OASI 0..1 Identifier "Switzerland: Old-age and survivors's insurance (OASI) number"
* Patient.Identifier.IDN 0..1 Identifier "Liechtenstein: Identification number (IDN)"
* Patient.Surname 1..1 string "Surname (or initials)"
* Patient.Givenname 1..1 string "Given name (or initials)"
* Patient.Gender 1..1 code "Gender" 
* Patient.DateOfBirth 1..1 date "Date of birth"
* Patient.Phone 1..1 string "Phone number"
* Patient.Address 1..1 Element "Residence address"
* Patient.Address.StreetLine 1..1 string "Street name, house number"
* Patient.Address.ZipCode 1..1 string "Zip code"
* Patient.Address.City 1..1 string "City"
* Patient.Address.Canton 1..1 code "Canton"
* Patient.Address.Country 1..1 code "Country"

* TestResult 1..1 Element "Laboratory result -> Art. 4 Abs. 1 (Die zu meldenden laboranalytischen Befunde) - Anhang 3 (Angaben zum laboranalytischen Befund)"
* TestResult.StudyType 1..1 code "Laboratory study type"
* TestResult.ExecutionDateTime 1..1 dateTime "Date (-time) of test"
* TestResult.Type 1..1 Element "Type of test"
* TestResult.Type.Code 1..1 code "Coded data"
* TestResult.Type.CodeSystem 1..1 uri "Identity fo the terminology system"
* TestResult.Specimen 1..1 Element "Test sample"
* TestResult.Specimen.CollectionDateTime 1..1 dateTime "Date (-time) of sample collection"
* TestResult.Specimen.Type 1..1 code "Collection material"
* TestResult.Specimen.Type.Code 0..1 code "Coded data"
* TestResult.Specimen.Type.CodeSystem 0..1 uri "Identity fo the terminology system"
* TestResult.Value 1..1 Element "Acutal test result"
* TestResult.Value.Code 1..1 code "Coded data"
* TestResult.Value.CodeSystem 1..1 uri "Identity fo the terminology system"
* TestResult.Interpretation 1..1 Element "Interpretation of the test result"
* TestResult.Interpretation.Code 1..1 code "Coded data"
* TestResult.Interpretation.CodeSystem 1..1 uri "Identity fo the terminology system (HL7 ObservationInterpretation)"






Mapping: ChElmLaboratoryReportToFhir
Id: ChElmLaboratoryReportToFhir
Title: "CH ELM Laboratory Report to FHIR"
Source: ChElmLaboratoryReport
Target: "hl7.org/fhir/r4"
* -> "Bundle"

* Header -> "Bundle.entry[0]"
* Header.DocumentIdentifier -> "Bundle.entry[0].resource.identifier.where(system='urn:ietf:rfc:3986').value.substring(9)"
* Header.DocumentTimestamp -> "Bundle.entry[0].resource.date"
* Header.DocumentLanguage -> "Bundle.entry[0].resource.language"
* Header.DocumentTitle -> "Bundle.entry[0].resource.title"
* Header.DocumentSectionTitle -> "Bundle.entry[0].resource.section.title"

* Author -> "Bundle.entry[0].resource.author.resolve()"
* Author.OrganizationGLN -> "Bundle.entry[0].resource.author.resolve().identifier.where(system='urn:oid:2.51.1.3').value"

* Lab -> "Bundle.entry.resource.as(DiagnosticReport).performer.resolve()"
* Lab.OrganizationGLN -> "Bundle.entry.resource.as(DiagnosticReport).performer.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* Lab.OrganizationName -> "Bundle.entry.resource.as(DiagnosticReport).performer.resolve().name"
* Lab.OrderIdentifier -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().identifier"

* Orderer -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve()"
* Orderer.OrganizationBER -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().identifier.where(system='urn:oid:2.16.756.5.45').value"
* Orderer.OrganizationUIDB -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().identifier.where(system='urn:oid:2.16.756.5.35').value"
* Orderer.OrganizationName -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().name"
* Orderer.OrganizationDepartment -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().extension.where(url='http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-ext-department').value"
* Orderer.Physician -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve()"
* Orderer.Physician.GLN -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().identifier.where(system='urn:oid:2.51.1.3').value"
* Orderer.Physician.ZSR -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().identifier.where(system='urn:oid:2.16.756.5.30.1.123.100.2.1.1').value"
* Orderer.Physician.Surname -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().name.family"
* Orderer.Physician.Givenname -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().name.given"
* Orderer.Physician.Phone -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().telecom.where(system='phone').value"
* Orderer.Physician.Email -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().practitioner.resolve().telecom.where(system='email').value"
* Orderer.OrganizationAddress -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address"
* Orderer.OrganizationAddress.StreetLine -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.line.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName').value"
* Orderer.OrganizationAddress.StreetLine -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.line.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber').value"
* Orderer.OrganizationAddress.PostBox -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.line.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox').value"
* Orderer.OrganizationAddress.ZipCode -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.postalCode"
* Orderer.OrganizationAddress.City -> "Bundle.entry.resource.as(DiagnosticReport).basedOn.resolve().requester.resolve().organization.resolve().address.city"

* Patient -> "Bundle.entry[0].resource.subject.resolve()"
* Patient.Identifier -> "Bundle.entry[0].resource.subject.resolve().identifier"
* Patient.Identifier.OASI -> "Bundle.entry[0].resource.subject.resolve().identifier.where(system='urn:oid:2.16.756.5.32').value"
* Patient.Identifier.IDN -> "Bundle.entry[0].resource.subject.resolve().identifier.where(system='urn:oid:2.16.438.10.20.10.10.1.2.1').value"
* Patient.Surname -> "Bundle.entry[0].resource.subject.resolve().name.given"
* Patient.Givenname -> "Bundle.entry[0].resource.subject.resolve().name.family"
* Patient.Gender -> "Bundle.entry[0].resource.subject.resolve().gender"
* Patient.DateOfBirth -> "Bundle.entry[0].resource.subject.resolve().birthDate"
* Patient.Phone -> "Bundle.entry[0].resource.subject.resolve().telecom.where(system='phone').value"
* Patient.Address -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home')"
* Patient.Address.StreetLine -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').line.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName').value"
* Patient.Address.StreetLine -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').line.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber').value"
* Patient.Address.ZipCode -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').postalCode"
* Patient.Address.City -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').city"
* Patient.Address.Canton -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').state"
* Patient.Address.Country -> "Bundle.entry[0].resource.subject.resolve().address.where(use='home').country.extension.where(url='http://hl7.org/fhir/StructureDefinition/iso21090-codedString').value.code"

* TestResult -> "Bundle.entry[0].resource.section"
* TestResult.StudyType -> "Bundle.entry[0].resource.section.code.coding.where(system='http://loinc.org')"
* TestResult.ExecutionDateTime -> "Bundle.entry[0].resource.section.entry.resolve().effective"
* TestResult.Type -> "Bundle.entry[0].resource.section.entry.resolve().code.coding.where(system='http://loinc.org')"
* TestResult.Type.Code -> "Bundle.entry[0].resource.section.entry.resolve().code.coding.where(system='http://loinc.org').code"
* TestResult.Type.CodeSystem -> "Bundle.entry[0].resource.section.entry.resolve().code.coding.where(system='http://loinc.org').system"
* TestResult.Specimen -> "Bundle.entry[0].resource.section.entry.resolve().specimen.resolve()"
* TestResult.Specimen.CollectionDateTime -> "Bundle.entry[0].resource.section.entry.resolve().specimen.resolve().collection.collected"
* TestResult.Specimen.Type -> "Bundle.entry[0].resource.section.entry.resolve().specimen.resolve().type"
* TestResult.Specimen.Type.Code -> "Bundle.entry[0].resource.section.entry.resolve().specimen.resolve().type.coding.where(system='http://snomed.info/sct').code"
* TestResult.Specimen.Type.CodeSystem -> "Bundle.entry[0].resource.section.entry.resolve().specimen.resolve().type.coding.where(system='http://snomed.info/sct').system"
* TestResult.Value -> "Bundle.entry[0].resource.section.entry.resolve().value.coding.where(system='http://snomed.info/sct')"
* TestResult.Value.Code -> "Bundle.entry[0].resource.section.entry.resolve().value.coding.where(system='http://snomed.info/sct').code"
* TestResult.Value.CodeSystem -> "Bundle.entry[0].resource.section.entry.resolve().value.coding.where(system='http://snomed.info/sct').system"
* TestResult.Interpretation -> "Bundle.entry[0].resource.section.entry.resolve().interpretation.coding.where(system='http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation')"
* TestResult.Interpretation.Code -> "Bundle.entry[0].resource.section.entry.resolve().interpretation.coding.where(system='http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation').code"
* TestResult.Interpretation.CodeSystem -> "Bundle.entry[0].resource.section.entry.resolve().interpretation.coding.where(system='http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation').system"

