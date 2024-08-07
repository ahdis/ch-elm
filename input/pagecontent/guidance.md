The website of the Federal Office of Public Health (FOPH) ([EN](https://www.bag.admin.ch/bag/en/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [DE](https://www.bag.admin.ch/bag/de/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [FR](https://www.bag.admin.ch/bag/fr/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [IT](https://www.bag.admin.ch/bag/it/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html)) provides further documentation on infectious diseases requiring notification. The most important points for the implementation of this FHIR exchange format are included here.

*Please visit the FOPH website to access the most recent documents in the desired language (EN, DE, FR, IT) for each topic.*

### Key Facts
The reporting obligation is the key systemic element for the surveillance of communicable diseases in Switzerland. Notifiable laboratory findings must comply with the legal provisions regarding reporting criteria, reporting deadlines and reporting data in accordance with the Ordinance of the FDHA on the Reporting of Observations of Communicable human diseases (SR 818.101.126) ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)).

### Personal Data (Patient Name)
Depending on the organism (leading code), the requirement for how the patient's name (e.g. Ernst Karl Tanner) is reported varies. There are different [patient name schemas](CodeSystem-ch-elm-foph-patient-name-representation.html) to be used:
* **Full Name**
   * Organism: SARS-CoV-2, Legionella spp., etc.
   * [Example](Patient-Pat-ErnstKarlTanner.json.html): Ernst Karl Tanner (Patient.name.family = Tanner, Patient.name.given = Ernst, Karl)
* **Initials**
   * Organism: Organism: Neisseria gonorrhoeae, Chlamydia trachomatis, etc
   * [Example](Patient-Pat-ET.json.html): ET (Patient.name.family = T, Patient.name.given = E)
* **VCT Code**
   * Organism: Neisseria gonorrhoeae, Chlamydia trachomatis, Treponema pallidum
   * [Example](Patient-Pat-VCT.json.html): kste12345 (Patient.name.extension = kste12345, Patient.name.family/Patient.name.given = masked)
* **HIV Code**
   * Organism: In the case of HIV/AIDS, under initials, enter the first letter and the number of letters of the first name. If this is longer than 9 letters, the number is 0. In the case of multi-part first names with a hyphen or in two words, only the first part is used.
   * [Example](Patient-Pat-004.json.html): E5 (Patient.name.extension = E5, Patient.name.family/Patient.name.given = masked)
* **Conditional**
   * The patient's identification cannot determined directly based on the leading code. Consult the implementation guideline for further information.

The complete overview of which characteristics are used for which organisms can be found in the ConceptMap [CH ELM Results To FOPH Patient Name Representation](ConceptMap-ch-elm-results-to-foph-patient-name-representation.html) and in the Ordinance of the FDHA on the Reporting of Observations of Communicable human diseases (SR 818.101.126) ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)).   

### Laboratory Study Types
The laboratory report is currently either of the type [organism detection](#organism-detection) (LOINC 18725-2 Microbiology studies (set)) or [resistance detection](#resistance-detection) (LOINC 18769-0 Microbial susceptibility tests Set). These types are defined in the [ValueSet CH ELM Lab Study Types](ValueSet-ch-elm-lab-study-types.html) and are represented in the `Composition.section.code` element of the respective document. 

#### Organism Detection
* `Composition.section.code` = LOINC 18725-2 Microbiology studies (set)
* `Observation.value` = Positive/Negative ([CH ELM Results Coded Values Laboratory](ValueSet-ch-elm-results-coded-values-laboratory.html))
* `Observation.interpretation` = Positive/Negative ([CH ELM Observation Interpretation Codes](ValueSet-ch-elm-observation-interpretation-codes.html))

[Example](Bundle-1Doc-NeisseriaGonorrhoeae.html): Laboratory report for Neisseria gonorrhoeae

#### Resistance Detection
* `Composition.section.code` = LOINC 18769-0 Microbial susceptibility tests Set
* `Observation.interpretation` = Resistant/Susceptible ([CH ELM Observation Interpretation Codes](ValueSet-ch-elm-observation-interpretation-codes.html))

### Laboratory Result

#### Leading Code
The performed laboratory test is represented by a so called leading code from the valueset [ValueSet CH ELM Results Laboratory Observation](ValueSet-ch-elm-results-laboratory-observation.html) containing codes from the LOINC and SNOMED codesystem. The leading code reflects a 4-axis model and laboratories are requested to choose the code that corresponds to the specific parameters of the performed laboratory test. Ideally, the chosen code covers all 4 axes.

[Example Neisseria gonorrhoeae](Bundle-1Doc-NeisseriaGonorrhoeae.html): The leading LOINC code [697-3 Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture](https://loinc.org/697-3/) covering all 4 axes:

* **Organism**: Neisseria gonorrhoeae
* **Detection**: organism growth
* **Detection method**: organism specific culture
* **Collection material**: urethra

Note: The Specimen.type.text element in this case contains a fixed text as value: “Material declared by Observation.code or non-mandatory”.

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

[Example Carbapenemase-producing Enterobacteriaceae (CPE)](Bundle-3Doc-CPE.html): The leading code (Observation.code = LOINC 85827-4) is completed by an additional code for the organism (Observation.valueCodeableConcept = SNOMED CT 56415008).

1. Check if Observation.code is a member of the ConceptMap [CH ELM Expecting Organism Specification To Results Completion Vs](ConceptMap-ch-elm-expecting-organism-specification-to-results-completion-vs.html) (Source Code)
   * NO: Observation.code does cover all axes, see section [Leading Code](#leading-code)
   * YES: An additional code for the organism must be specified, continue with step 2
      * Example Carbapenemase-producing Enterobacteriaceae (CPE): LOINC 85827-4 is a member of the ConceptMap 
2. The mapping shows from which ValueSet the code for Observation.valueCodeableConcept has to come from (Target Code)   
   * Example Carbapenemase-producing Enterobacteriaceae (CPE): http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-cpe-org
3. Define Observation.valueCodeableConcept with a code from the ValueSet from step 2
   * Example Carbapenemase-producing Enterobacteriaceae (CPE): Observation.valueCodeableConcept = SNOMED CT 56415008 from [ValueSet CH ELM Results CPE Org](ValueSet-ch-elm-results-cpe-org.html)     

{% include img.html img="expecting-organism-specification.png" caption="Fig. 8: Schematic illustration of the mechanism for the expecting organism specification (for simplicity, only the relevant elements are shown)" width="100%" %}  

##### Interpretation Codes
Depending on the leading code different interpretation codes are allowed. The [ConceptMap](ConceptMap-ch-elm-results-to-interpretation-code.html) specifies which values from which ValueSet
are allowed (e.g. for Neisseria gonorrhoeae the [ValueSet: CH ELM Interpretation Codes Positive ](ValueSet-ch-elm-interpretation-codes-pos.html) is specified, which allows only a positive interpretation code to be specified).

### Multiplex Cases
The exchange format defines the [FHIR document](document.html) for reporting to the FOPH so that **one document per organism per patient** is submitted. 
