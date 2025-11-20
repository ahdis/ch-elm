All significant changes to this FHIR implementation guide will be documented on this page.   
### 1.13.0 unreleased

* [#182](https://github.com/ahdis/ch-elm/issues/182) fix typo and links
* [#168](https://github.com/ahdis/ch-elm/issues/168) add optional physician address to logical model
* new ValueSet http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-lis-spec
* [#183](https://github.com/ahdis/ch-elm/issues/183) Add example for FOPH Code for release
* [#187] ValueSet update and adjust example Malaria / Westnile with fullname

### 1.12.0 2025/10/21

* [#162](https://github.com/ahdis/ch-elm/issues/162) add HIV recency as a new notification, Susceptibility and genotyping need to follow strict profile
* [#178](https://github.com/ahdis/ch-elm/issues/178) Track original orderer in 2nd ServiceRequest
* Updated Valuesets (ch-elm-results-sterile-spec)

### 1.11.0 2025/08/13

* [#173](https://github.com/ahdis/ch-elm/issues/173) FOPH code system

### 1.10.0 2025/xx/xx

* [#161](https://github.com/ahdis/ch-elm/issues/161) Updating dependencies to ch.fhir.ig.ch-lab-report: 2.0.0-ballot and ch.fhir.ig.ch-core: 6.0.0-ballot
* [#135](https://github.com/ahdis/ch-elm/issues/135) Support for XK Kosovo in validator
* [#157](https://github.com/ahdis/ch-elm/issues/157) add new valueset component-vs
* [#164](https://github.com/ahdis/ch-elm/issues/164) Monkepox --> Mpox

### 1.9.1 2025/03/26

* [#153](https://github.com/ahdis/ch-elm/issues/153) CH ELM Observation Component Results: Concentration text correction
* [#155](https://github.com/ahdis/ch-elm/issues/155) Make small text improvements for 1.9.1

### 1.9.0 2025/03/18

* [#127](https://github.com/ahdis/ch-elm/issues/127) Susceptibility and genotyping
* [#140](https://github.com/ahdis/ch-elm/issues/140) Do not use "not-performed" status 
* [#141](https://github.com/ahdis/ch-elm/issues/141) Do not use ValueSet-ch-elm-interpretation-codes-pres-abs
* [#139](https://github.com/ahdis/ch-elm/issues/139) HIV code validation & documentation
* [#142](https://github.com/ahdis/ch-elm/issues/142) Constraint denominator to strictly positive values
* Updated ValueSets and updated example for [Mpox virus clade [Type] in Specimen by Sequencinq](Bundle-48Doc-Mpox-Clade.json.html)
* [#154](https://github.com/ahdis/ch-elm/issues/154) Add TB example on examples pages 
* [#148](https://github.com/ahdis/ch-elm/issues/148) CPE ValueSet should be removed

### 1.8.0 2025/02/04

* additional publication examples
* [#131](https://github.com/ahdis/ch-elm/issues/131) add check for ZSR number is valid
* [#31](https://github.com/ahdis/ch-elm/issues/31) Reduction min cardinality Specimen.type from 1 to 0
* [#133](https://github.com/ahdis/ch-elm/issues/133) Example for  for an Practitioner Orderer with only a last name and no org, see example [Bundle](DocumentReference-1c-DocumentReferenceStrict.html) or [DocumentReference](DocumentReference-1c-DocumentReferenceStrict.html)
* [#134](https://github.com/ahdis/ch-elm/issues/134) ratio needs to have denominator value and fixed nominator 
* Updated ValueSets and examples for [Q-fever](Bundle-58Doc-Coxiella.json.html) and [Enterohemorrhagic E. coli](Bundle-59Doc-EHEC.json.html) and [CPE](Bundle-3Doc-CPE.json.html)

### 1.7.0 2024/11/28

* [#130](https://github.com/ahdis/ch-elm/issues/130) update usecase to english
* [#128](https://github.com/ahdis/ch-elm/issues/128) updated ValueSets and new examples for Hanta fever, HIV, Influenza A new subtype, Poliomyelitis, Rabies, Trichinellosis, West-Nile-Fever and Yellow fever
* [#125](https://github.com/ahdis/ch-elm/issues/125) HIV not an example for use case 3
* [#124](https://github.com/ahdis/ch-elm/issues/124) HIV: Observation.valueQuantity for specific Code
* [#122](https://github.com/ahdis/ch-elm/issues/122) Allow ZSR for Practitioner Orderer
* [#121](https://github.com/ahdis/ch-elm/issues/121) DocumentReference for Publish Response should not contain bundle

### 1.6.0 2024/10/31

* [#118](https://github.com/ahdis/ch-elm/issues/118) Observation.value depending on leading code, see [guidance](guidance.html#expecting-observation-profile)
* [#117](https://github.com/ahdis/ch-elm/issues/117) New Interpretation Valueset «avidity»
* Examples for Anthrax, Botulims, Brucellosis, CJD, Crimean-Congo, Ebola, Lassa fever, Marburg fever, MERS, Mpox, Paratyphoid fever, Plague, Q-fever, Rubella, SARS, Salmonellosis, Salmonellosis, Smallpox, Zika fever

### 1.5.0 2024/09/24

* [#115](https://github.com/ahdis/ch-elm/issues/115) reorganize FHIR document page and add examples for Chikungunya fever, Tick-borne encephalitis, Hepatitis A, Listeriosis and Rubella - reporting of a seroconversion, valuesets are also updated

### 1.4.0 2024/08/20

* [#111](https://github.com/ahdis/ch-elm/issues/111) added examples for Neisseria (primary and secondary lab), Measles Seroconversion,  Corynebacterium diphtheriae, Streptococcus pneumoniae,  Vibrio cholerae, Hepatite E, Haemophilus influenzae, Francisella tularensis, Dengue Titer and updated valuesets
* [#65](https://github.com/ahdis/ch-elm/issues/65): Update to the newest version hl7.fhir.eu.laboratory: 0.1.0 and ch.fhir.ig.ch-lab-report: 1.0.0-ballot 
* [#100](https://github.com/ahdis/ch-elm/issues/100): Fix Campylobacter example title
* [#99](https://github.com/ahdis/ch-elm/issues/99): CH ELM Patient adaptions
* [#98](https://github.com/ahdis/ch-elm/issues/98): Two new interpretation groups sero and titer
* [#97](https://github.com/ahdis/ch-elm/issues/97): Improvement error message
* [#89](https://github.com/ahdis/ch-elm/issues/89): add ServiceRequest.requisition for referencing original order id
* [#103](https://github.com/ahdis/ch-elm/issues/103): change patient id references with serial numbers
* [#110](https://github.com/ahdis/ch-elm/issues/110): change example names and description for meningo and dengue titer
* [#102](https://github.com/ahdis/ch-elm/issues/102): patient.street, patient.telecom only allowed for full name representation 
* [#104](https://github.com/ahdis/ch-elm/issues/104): remove practitioner-orderer.telecom constraint 0..1

### 1.3.1 2024/06/17 

* [#88](https://github.com/ahdis/ch-elm/issues/88): Update ValueSets for malaria, new snomed codes legionalla
* [#91](https://github.com/ahdis/ch-elm/issues/91):  extension line not required and not must support, updated examples, removed narratives
* [#92](https://github.com/ahdis/ch-elm/issues/92): Show validation warning  for wrong BER / UIDB
* [#93](https://github.com/ahdis/ch-elm/issues/93): patient name representation shall be incorrect (no distinction strict/non-strict for initials and vct)
* [#94](https://github.com/ahdis/ch-elm/issues/94): Validator Check: Ignore warning about Binding for path (.+) has no source
* [#95](https://github.com/ahdis/ch-elm/issues/95): Increase maximum size of E-Mail form 50 to 255

### 1.3.0 2024/05/16 

* [#74](https://github.com/ahdis/ch-elm/issues/74): Check for BER and UIDB format
* [#77](https://github.com/ahdis/ch-elm/issues/77): VCT and HIV Codes for patient (guidance)
* [#82](https://github.com/ahdis/ch-elm/issues/82): Adapt menu structure
* [#85](https://github.com/ahdis/ch-elm/issues/85): Laboratory reports for additional organisms (Hepatite B, Hepatite C, Legionella, Malaria, Mpox, Shigella)

### 1.2.0 2024/03/28 

* [#32](https://github.com/ahdis/ch-elm/issues/62): adding ValueSets/ConceptMaps for Interpretation Code
* [#68](https://github.com/ahdis/ch-elm/issues/68): Add slice for DocumentReference.contained for improving validation output
* [#71](https://github.com/ahdis/ch-elm/issues/71): Fix SARS-CoV-2 Strict validation
* [#72](https://github.com/ahdis/ch-elm/issues/72): Einbau ValueSet Specimen.type
* [#73](https://github.com/ahdis/ch-elm/issues/73): Change status of IG from Draft to Release for version 1.2.0
* [#75](https://github.com/ahdis/ch-elm/issues/75): PractitionerRole: Orderer -> update constraints
* [#78](https://github.com/ahdis/ch-elm/issues/78): Removed Observation code for example Bundle-6Doc-Influenza (http://loinc.org#100343-3)

### 1.1.0 2024/01/31

#### Added
* [#56](https://github.com/ahdis/ch-elm/issues/56): add a search box to the ig #56

#### Changed / Updated
* [#49](https://github.com/ahdis/ch-elm/issues/49): Update description of CS/VS CH ELM FOPH Patient Name Representation
* [#52](https://github.com/ahdis/ch-elm/issues/52): CH ELM Organization: BUR and UID as identifiers 0..1, no ZSR anymore
* [#6](https://github.com/ahdis/ch-elm/issues/6): Fix ig dependencies to published versions 
* [#60](https://github.com/ahdis/ch-elm/issues/60): Removal of rule that prevents a specimen code to be sent 
* [#61](https://github.com/ahdis/ch-elm/issues/61): postalCode / city required for Orderer (Practitioner and/or Organization)

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
