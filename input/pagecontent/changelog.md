All significant changes to this FHIR implementation guide will be documented on this page.   

### Next version based on the updated CH LAB-Report IG

#### Changed / Updated
* Dependency on the latest publication of CH LAB-Report updated and necessary adjustments in profiles made. The changes does not have an impact for the CH ELM implementation.
   * Use IPS datatype profiles (CodeableConcept, Coding) as parent
   * Change the name of the parent profile ChLabReportSpecimen to ChLabSpecimen

### 1.2.0 - cibuild 
* [#32](https://github.com/ahdis/ch-elm/issues/62): adding ValueSets/ConceptMaps for Interpretation Code
* [#68](https://github.com/ahdis/ch-elm/issues/68): Add slice for DocumentReference.contained for improving validation output
* [#71](https://github.com/ahdis/ch-elm/issues/71): Fix SARS-CoV-2 Strict validation
### 1.1.0 2024/01/31

#### Added
* [#56](https://github.com/ahdis/ch-elm/issues/56): add a search box to the ig #56

#### Changed / Updated
* [#49](https://github.com/ahdis/ch-elm/issues/49): Update description of CS/VS CH ELM FOPH Patient Name Representation
* [#52](https://github.com/ahdis/ch-elm/issues/52): CH ELM Organization: BUR and UID as identifiers 0..1, no ZSR anymore
* [#6](https://github.com/ahdis/ch-elm/issues/6): Fix ig dependencies to published versions 
* [#60](https://github.com/ahdis/ch-elm/issues/60): Removal of rule that prevents a specimen code to be sent 
* [#61](https://github.com/ahdis/ch-elm/issues/61): postalCode / city required for Orderer (Practitioner and/or Organisation)

#### Fixed
* [#45](https://github.com/ahdis/ch-elm/issues/45): Fix minimum cardinality for Practitioner in Bundle
* [#54](https://github.com/ahdis/ch-elm/issues/54): API fixed to Release FHIR R4
* [#55](https://github.com/ahdis/ch-elm/issues/55): Fixed link to specimen in broker example 1bDoc - Neisseria Gonorrhoeae 
* [#58](https://github.com/ahdis/ch-elm/issues/58): Don't indicated meta.profiles in examples
* [#57](https://github.com/ahdis/ch-elm/issues/57): Patient address.line also specified, not only extension

### 1.0.0-release

#### Added
* New examples: Carbapenemase-producing Enterobacteriaceae (CPE), Campylobacter spp., Treponema pallidum, Influenza, SARS-CoV-2
* In order to have the possibility to react quickly to any changes in the reporting needs, a two-stage validation strength has been introduced:
   * Profile [CH ELM Document: Laboratory Report (strict)](StructureDefinition-ch-elm-document-strict.html): The leading code element has a [required](https://hl7.org/fhir/R4/terminologies.html#required) binding to the ValueSet CH ELM Results Laboratory Observation and initials are checked depending on the leading code
      * Usage: For all examples in this published version of the implementation guide, use for validation of an implementation according to the current implementation guide
   * Profile [CH ELM Document: Laboratory Report](StructureDefinition-ch-elm-document.html): The leading code element has an [extensible](https://hl7.org/fhir/R4/terminologies.html#extensible) binding to the ValueSet CH ELM Results Laboratory Observation
      * Potential usage: A new leading code to be reported is introduced, which could not yet get updated in the implementation guide 
* Include a check (warning) if Observation.code and ServiceRequest.code are equal (so far no other requirements)
* [#7](https://github.com/ahdis/ch-elm/issues/7): Add ConceptMap with the requirements to the patient name representation
* [#29](https://github.com/ahdis/ch-elm/issues/29): Validation of Bundle for DocumentReference 
* [#39](https://github.com/ahdis/ch-elm/issues/39): Integration of FOPH business rules as CodeSystem
* [#43](https://github.com/ahdis/ch-elm/issues/43): Add limits to string lengths

#### Changed / Updated
* [#15](https://github.com/ahdis/ch-elm/issues/15): API update for search capabilities
* [#14](https://github.com/ahdis/ch-elm/issues/14): Remove turtle definitions
* [#11](https://github.com/ahdis/ch-elm/issues/11): Change level of flag MustSupport for Patient.country (Patient.country MS, Patient.country.extension:countrycode 1..)
* Adjustment to the changed names of the parent profiles of CH LAB-Order 
* [#19](https://github.com/ahdis/ch-elm/issues/19): Require DiagnosticReport.identifier (equal to Composition.identifier)
* [#13](https://github.com/ahdis/ch-elm/issues/13): Update *Fig. 6: Resource Overview* with cardinalities
* [#21](https://github.com/ahdis/ch-elm/issues/21): Usage of the IDN instead of the OASI for Patient.identifier Liechtenstein.
* Add a computable way for the concept of leading code and in some cases necessary addition of additional codes to the leading code, see [Guidance - Laboratory Result](guidance.html#laboratory-result)
   * [#23](https://github.com/ahdis/ch-elm/issues/23): Include rules to check if the described mechanism is applied correctly
   * [#25](https://github.com/ahdis/ch-elm/issues/25): Renaming of the specimen-specific ValueSet 'CH ELM Lab Specimen Types: Chlamydia Trachomatis' to ValueSet 'CH ELM Results Geni Spec'
   * [#26](https://github.com/ahdis/ch-elm/issues/26)/[#8](https://github.com/ahdis/ch-elm/issues/8): Remove ValueSet 'CH ELM Lab Specimen Types'; now handled via the newly introduced mechanism
   * [#8](https://github.com/ahdis/ch-elm/issues/8): Change the fixed value for Specimen.type.text to a more general version: 'Material declared by LOINC system axis' -> 'Material declared by Observation.code or non-mandatory'
* [#35](https://github.com/ahdis/ch-elm/issues/35): Address.line now requires the explicit specification of streetName, houseNumber and postOfficeBoxNumber (via extensions)
* [#34](https://github.com/ahdis/ch-elm/issues/34): Restriction of maximum cardinalities

#### Fixed
* [#9](https://github.com/ahdis/ch-elm/issues/9): Set minimum cardinality of Patient.gender to 1 (according to the logical model)
