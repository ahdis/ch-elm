The website of the Federal Office of Public Health (FOPH) ([EN](https://www.bag.admin.ch/en/infectious-diseases-requiring-notification), [DE](https://www.bag.admin.ch/de/infektionskrankheiten-melden), [FR](https://www.bag.admin.ch/fr/declaration-des-maladies-infectieuses), [IT](https://www.bag.admin.ch/it/dichiarazione-di-malattie-infettive)) provides further documentation on infectious diseases requiring notification. The most important points for the implementation of this FHIR exchange format are included here.

*Please visit the FOPH website to access the most recent documents in the desired language (EN, DE, FR, IT) for each topic.*

### Key Facts
The reporting obligation is the key systemic element for the surveillance of communicable diseases in Switzerland. Notifiable laboratory findings must comply with the legal provisions regarding reporting criteria, reporting deadlines and reporting data in accordance with the Ordinance of the FDHA on the Reporting of Observations of Communicable human diseases (SR 818.101.126) ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)).

### Personal Data (Patient)
Depending on the organism (leading code), the requirement for how the patient’s personal data, such as name or address, (e.g. Ernst Karl Tanner, Tannenstrasse 10a, 3000 Bern) is reported varies. There are different [patient schemas](CodeSystem-ch-elm-foph-patient-name-representation.html) to be used:
* **Full Name**
   * Organism: SARS-CoV-2, Legionella spp., etc.
   * see Profile [CH ELM Patient](StructureDefinition-ch-elm-patient.html) 
   * [Example](Patient-Pat-006.json.html): Ernst Karl Tanner (Patient.name.family = Tanner, Patient.name.given = Ernst, Karl, Patient.address)
* **Initials**
   * Organism: Organism: Neisseria gonorrhoeae, Chlamydia trachomatis, etc
   * see Profile [CH ELM Patient Initials](StructureDefinition-ChElmPatientInitials.html) 
   * [Example](Patient-Pat-005.json.html): ET (Patient.name.family = T, Patient.name.given = E, no telecom and no street address)
* **VCT Code**
   * Organism: Neisseria gonorrhoeae, Chlamydia trachomatis, Treponema pallidum
   * see Profile [CH ELM Patient VCT](StructureDefinition-ChElmPatientVCT.html) 
   * [Example](Patient-Pat-VCT.json.html): kste12345 (Patient.name.extension = kste12345, Patient.name.family/Patient.name.given = masked, no telecom and no street address)
* **HIV Code**
   * Organism: HIV/AIDS
   * Basic principle: Take the first letter of the first name and add the number of letters of the first name. E.g. Samuel -> S6. This value need to be provided in the [CH ELM Extension: HIV code](SStructureDefinition-ch-elm-ext-hiv-code.html) and Patient.name.family, Patient.name.given need to be masked.
   * Special cases:
     - If there are more than 9 letters, put 0. E.g. Christopher -> C0
     - Multi-part given name with a hyphen, use only the first part. E.g. Hans-Jakob -> H4
     - Multi-part given name in two words, use only the first part. E.g. Maria Eva -> M5
     - If the first name has only one letter, use the letter followed by 1. E.g. S -> S1
     - If the first name is “0”, then use “01”
     - If the first name is missing, then use “0”
   * see Profile [CH ELM Patient HIV](StructureDefinition-ChElmPatientHIV.html) 
   * [Example](Patient-Pat-004.json.html): E5 (Patient.name.extension = E5, Patient.name.family/Patient.name.given = masked, no telecom and no street address)
* **Conditional**
   * The patient's identification cannot determined directly based on the leading code. Consult the implementation guideline for further information.

The complete overview of which characteristics are used for which organisms can be found in the ConceptMap [CH ELM Results To FOPH Patient Name Representation](ConceptMap-ch-elm-results-to-foph-patient-name-representation.html) and in the Ordinance of the FDHA on the Reporting of Observations of Communicable human diseases (SR 818.101.126) ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)).   

### Laboratory Study Types

The Laboratory Study Type indicates which type of test has been performed. It is indicated via the **composition.section.code** and allows for distinction between FHIR documents containing organism detection results from documents containing genotype-, susceptibility- or HIV recency results. The composition.section.code also defines which valueset has to be used for the observation.code (leading code). The available composition.section.codes are defined in the valueset [CH ELM Lab Study Types](ValueSet-ch-elm-lab-study-types.html).

The table below lists the composition.section.code with references to FHIR ex-ample documents and the depending observation.code-valuesets:

| Laboratory Study Type | composition.section.code | Example | valueset to be used for the observation.code (leading code) |
| --- | --- | --- | --- |
| Organism detection (non-genotype/non-susceptiblity) | LOINC 18725-2  <br>(Microbiology studies (set)) | [1Doc - Neisseria Gonorrhoeae](Bundle-1Doc-NeisseriaGonorrhoeae.html) | [CH ELM Results Laboratory Observation](ValueSet-ch-elm-results-laboratory-observation.html) |
| Susceptibility/Resistance detection | LOINC 18769-0  <br>(Microbial susceptibility tests Set) | [61Doc - Tuberculosis Susceptibility](Bundle-61Doc-Tb-Susceptibility.json.html) | [CH ELM Results Laboratory Observation Susceptibility](ValueSet-ch-elm-results-laboratory-observation-susc.html) |
| Genotype/mutation detection | Snomed 726528006  <br>(Genotyping (qualifier value)) | [63Doc - Tuberculosis Genotyping](Bundle-63Doc-Tb-Genotyping.json.html) | [CH ELM Results Laboratory Observation Genotyping](ValueSet-ch-elm-results-laboratory-observation-geno.html) |
| HIV recency determination | LOINC 18727-8 <br>(Serology studies (set)) | [66Doc - HivRecency](Bundle-66Doc-HivRecency.json.html) | always use the observation.code LOINC 77685-6 "HIV 1 and 2 IgG Ab [Identifier] in Serum or Plasma by Immunoblot" |

It is not possible to mix organism-detection results, genotype/susceptibility and HIV-recency results within the same FHIR document. Use separate FHIR documents for each laboratory study type with its corresponding composition.section.code.

**Important**: in the CH ELM Lab Project, almost every FHIR document is expected as of Lab Study Type “Microbiology studies (set)” (LOINC 18725-2). Only laboratories performing genotype, susceptibility or HIV-recency tests send their results as Lab Study Type “Genotyping”, “Microbial Susceptibility tests Set” or “Serology studies (set)”.

### Laboratory Result

#### Leading Code
The performed laboratory test is represented by a so called leading code from the valueset [ValueSet CH ELM Results Laboratory Observation](ValueSet-ch-elm-results-laboratory-observation.html) containing codes from the LOINC and SNOMED codesystem. The leading code reflects a 4-axis model and laboratories are requested to choose the code that corresponds to the specific parameters of the performed laboratory test. Ideally, the chosen code covers all 4 axes.

[Example Neisseria gonorrhoeae](Bundle-1Doc-NeisseriaGonorrhoeae.html): The leading LOINC code [697-3 Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture](https://loinc.org/697-3/) covering all 4 axes:

* **Organism**: Neisseria gonorrhoeae
* **Detection**: organism growth
* **Detection method**: organism specific culture
* **Collection material**: urethra

<span style="color:red;">Important note:</span>     
The [ValueSet CH ELM Results Laboratory Observation](ValueSet-ch-elm-results-laboratory-observation.html) is a selection of LOINC or SNOMED codes related to notifiable diseases and their legal basis. The ValueSet can be adapted according to laboratory-specific needs - please contact the FOPH in this regard.

#### Completion of the Leading Code
If the leading code does not cover all axes, the missing axis must be completed by an additional code. 

##### Expecting Specimen Specification
In some cases, the collection material must be explicitly specified.

[Example Chlamydia trachomatis](Bundle-2Doc-ChlamydiaTrachomatis.html): The leading code (Observation.code = LOINC 6349-5) is completed by an additional code for the collection material (Specimen.type = SNOMED CT 119393003).

1. Check if Observation.code is a member of the ConceptMap [CH ELM Expecting Specimen Specification To Results Completion Vs](ConceptMap-ch-elm-expecting-specimen-specification-to-results-completion-vs.html) (Source Code)
   * NO: Observation.code does cover all axes, see section [Leading Code](#leading-code)
   * YES: The collection material must be explicitly specified, continue with step 2
      * Example Chlamydia trachomatis: LOINC 6349-5 is a member of the ConceptMap 
2. The mapping shows from which ValueSet the code for Specimen.type has to come from (Target Code)
   * Example Chlamydia trachomatis: http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-geni-spec
3. Define Specimen.type with a code from the ValueSet from step 2
   * Example Chlamydia trachomatis: Speciment.type = SNOMED CT 119393003 from [ValueSet CH ELM Results Geni Spec](ValueSet-ch-elm-results-geni-spec.html)

{% include img.html img="expecting-specimen-specification.png" caption="Fig. 7: Schematic illustration of the mechanism for the expecting specimen specification (for simplicity, only the relevant elements are shown)" width="100%" %}   

##### Expecting Organism Specification
In some cases, an additional organism must be specified.
Example: [Salmonellosis](Bundle-30Doc-Salmonella-enteritidis.json.html). The leading code (Observation.code = LOINC 49612-5) is completed by an additional code for the organism (Observation.valueCodeableConcept = SNOMED CT 73525009).

1. Check if Observation.code is a member of the ConceptMap [CH ELM Expecting Organism Specification To Results Completion Vs](ConceptMap-ch-elm-expecting-organism-specification-to-results-completion-vs.html) (Source Code)
    * NO: Observation.code does cover all axes, see section [Leading Code](#leading-code)
    * YES: An additional code for the organism must be specified, continue with step 2
        * Example “Salmonella sp DNA \[Presence\] in Specimen by NAA with probe detection” LOINC 49612-5 is a member of the ConceptMap
2. The mapping shows from which ValueSet the code for Observation.valueCodeableConcept has to come from (Target Code)
    * Example “Salmonella sp DNA \[Presence\] in Specimen by NAA with probe detection”: <http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-sal-org>
3. Define Observation.valueCodeableConcept with a code from the ValueSet from step 2
    * Example “Salmonella sp DNA \[Presence\] in Specimen by NAA with probe detection”: Observation.valueCodeableConcept = SNOMED CT 73525009 from valueset [CH ELM Results Sal Org](ValueSet-ch-elm-results-sal-org.html)

{% include img.html img="expecting-organism-specification.png" caption="Fig. 8: Schematic illustration of the mechanism for the expecting organism specification (for simplicity, only the relevant elements are shown)" width="100%" %}  

##### Interpretation Codes
Depending on the leading code different interpretation codes are allowed. The [ConceptMap](ConceptMap-ch-elm-results-to-interpretation-code.html) specifies which values from which ValueSet
are allowed (e.g. for Neisseria gonorrhoeae the [ValueSet: CH ELM Interpretation Codes Positive ](ValueSet-ch-elm-interpretation-codes-pos.html) is specified, which allows only a positive interpretation code to be specified).

##### Expecting observation profile

In cases where certain test results like physical quantities, sequencing-/typing results etc. or a series of test values with their associated measuring units and interpretations are to be transmitted, a specific observation profile is expected depending on the leading code. The [ConceptMap](ConceptMap-ch-elm-results-to-observation-profile.html) defines which profile has to be considered.

#### Using comparators in valueQuantity

By default, valueQuantity elements are considered to be single measurements. For instance, in this example, valueQuantity.value: 65168 indicates that 65168 Copies/ml were measured.

It is also possible to use the valueQuantity element to report a threshold instead of a measurement by supplying a valueQuantity.comparator element. For instance, assuming that a laboratory measured more than 65000 Copies/ml, without knowing the exact quantity, the following syntax can be used:

```json
"valueQuantity" : {
    "value" : 65000,
    "comparator" : ">",
    "unit" : "{Copies}/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "1/mL"
  },
```


### Multiplex Cases
The exchange format defines the [FHIR document](document.html) for reporting to the FOPH so that **one document per organism per patient** is submitted. 

### Genotype and Susceptibility test results

For organisms of the _mycobacterium tuberculosis_ complex, resistance mutations (genotyping) and antibiotics susceptibility (antibiogram) results are reported by (specialized) laboratories.

Resistance and susceptibility tests cover multiple mutations/antibiotics and often generate multiple results that can be reported in the same document. Such documents differ from usual laboratory reports in two ways:

- First, the study type, as indicated by the composition.section.code, must be either “Microbial susceptibility tests Set” or “Genotyping (qualifier value)”, as indicated in section [5.3](#laboratory-study-types)
- Second, the observation resource must be completed with an observation.component entry that includes **one or many child-elements** of the following structure:

| “component” : \[ |     |     |
| --- |     |     | --- | --- |
|     | {   |     |
|     | code | code specifying the mutation or antibiotics |
|     | interpretation | indicates, whether a specific mutation (POS/NEG) or antibiotics-resistance was found (Susceptible/Resistant) |
|     | valueQuantity | if required, includes a quantity value like the applied antibiotics concentration. Otherwise indicate the dataAbsentReason-element. |
|     | dataAbsentReason | if no valueQuantity is required/present, then the dataAbsentReason element must be present |
|     | },  |     |
|     | {...} | repetition of the component-elements as required |
| \]  |     |     |

See the examples [61Doc - Tuberculosis Susceptibility](Bundle-61Doc-Tb-Susceptibility.html) and [63Doc - Tuberculosis Genotyping](Bundle-63Doc-Tb-Genotyping.html) for how to implement this FHIR resource.

Important points:

- the observation.code defines the organism. The allowed codes must be part of the valuesets [CH ELM Results Laboratory Observation Susceptibility](ValueSet-ch-elm-results-laboratory-observation-susc.html) or [CH ELM Results Laboratory Observation Genotyping](ValueSet-ch-elm-results-laboratory-observation-geno.html)
- the observation.interpretation is replaced by observation.component.interpretation
- the component.valueQuantity is mandatory for susceptibility test results indicating the applied antibiotics concentration
- the specimen can optionally be reported within specimen.type.code using a specimen code from the valueset [CH ELM Results Complete Spec](ValueSet-ch-elm-results-complete-spec.html)

### HIV recency test results

HIV recency determination is carried out by a few designated laboratories. The testing consists of seven band values that always must be reported together. The FHIR document structure therefore differs from usual laboratory reports in two ways:

- First, the study type, as indicated by the composition.section.code, must be “18727-8 Serology studies (set)” as indicated in section [5.3](#laboratory-study-types)
- Second, the observation resource must be completed with an observation.component entry that includes seven child-elements of the following structure:


| “component” : \[ |     |     |
| --- |     |     | --- | --- |
|     | {   |     |
|     | code | Snomed CT code specifying the measured serological band |
|     | valueQuantity | contains the measured band-value as decimal number and the unit-code "[arb'U]" |
|     | },  |     |
|     | {...} | repetition of the component-elements as required |
| \]  |     |     |
 
See the profile [CH ELM Observation Results for HIV Recency Testing](StructureDefinition-ch-elm-observation-results-hiv-recency-strict.html) and example [66Doc-HivRecency](Bundle-66Doc-HivRecency.json.html) for how to implement this FHIR resource.

Important points:

- for the observation.code always use LOINC 77685-6 "HIV 1 and 2 IgG Ab [Identifier] in Serum or Plasma by Immunoblot" (no dedicated valueset available)
- the FHIR elements observation.interpretation  and observation.component.interpretation can be omitted (the recency-interpretation is determined by FOPH internal algorithms)
- the component-array must contain exactly seven entries corresponding to the seven measured serological bands
- component.valueQuantity is mandatory
- the specimen can optionally be reported within specimen.type.code using a specimen code from the valueset [CH ELM Results Complete Spec](ValueSet-ch-elm-results-complete-spec.html)

### FOPH code system

An FOPH proprietary code system exists alongside standard systems such as LOINC and Snomed CT. The aim is to be able to provide temporary unambigu-ous codes in situations where standards don't offer appropriate alternatives. In particular, this system is meant to be used at the start of a pandemic, if no standard code exists. The codes and their interpretation will be communicated by FOPH when appropriate
