TODO
====

2. component.code - mapped observation.code zu valueset (antibiotika valueset oder pathogen valueset)
    http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-code
    http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-component-code
    + die jeweiligen ValueSets müssen zu Verfügung gestellt werden


    Die neuen ValueSets canonical müssen in diesem Codesystem gelistet sein
    http://fhir.ch/ig/ch-elm/CodeSystem/ch-elm-results-component-vs


    ---> Should it be two ValueSets (one for antibiotic and one for gene) or should it be depending on the pathogen?
     
    --> is is depending on the pathogen.

    Current test is to add one for the antibiotic and one for the gene:

        http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-component-antibiotic
        http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-component-gene

    Then the ConceptMap would be a bit overkill, because we have all the mappings only the same, we could it do directly via ValueSet binding? TBD at the meeting
 
3. component.value

http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-observation-profile
http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-observation-profile
  + zusätlich ValueSets müssen zu Verfügung gestellt werden falls notwendig (Diskussion am Mittwoch)

bei antibiogram, bei susc: nie einen string: can it always be just a fix valueQuantity or absentReason?
bei genotyping kann es einen string haben, bei CPE setzt es einen einen component.code dann muss es einen valueString schicken

-> two modeling, need to create the concept maps

4. component.interpretation - mapped observation.code zu interpretation code value set

   susc: susceptible/resistant  http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-res-sus
   genotyping: present / absent (are the snomed codes right?) ttp://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pre-abs

  we need the concept maps:
     http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-interpretation-code
     http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-interpretation-code




### New Value Sets Table

| Study type | Pathogen | Code location | Description | Name |
|------------|----------|---------------|-------------|------|
| All | all | composition.section.code | List of all the study types | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-study-type |
| Antibiogram | all | observation.code | List of antibiogram pathogens | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-laboratory-observation-susc.html |
| Antibiogram | TB | observation.component.code | List of TB antibiotics | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-component-antibiotic-tb |
| Antibiogram | CPE | observation.component.code | List of CPE antibiotics | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-component-antibiotic-cpe |
| Antibiogram | TB | observation.component.interpretation | List of TB interpretations (susceptible, resistent) | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-res-sus |
| Antibiogram | CPE | observation.component.interpretation | List of CPE interpretations (resistent) | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-res |
| Genotyping | all | observation.code | List of genotyping pathogens | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-laboratory-observation-geno |
| Genotyping | TB | observation.component.code | List of TB mutations | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-component-gene-tb |
| Genotyping | CPE | observation.component.code | List of CPE mutations | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-component-gene-cpe |
| Genotyping | TB | observation.component.interpretation | List of TB interpretation (present, absent, not performed) as HL7 codes | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pres-abs-np |
| Genotyping | CPE | observation.component.interpretation | List of CPE interpretation (present, absent) as HL7 codes | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pres-abs |
| All | all | observation.code | List of all observation codes for all study types | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-laboratory-observation-complete |
| Microbiology | TB | observation.interpretation | List of interpretation for "standard" TB report (we need "not performed" as further interpretation) as HL7 codes | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pos-neg-np |

### New Concept Maps Table

| Study type | Description | Source | Target | Name |
|------------|-------------|---------|---------|------|
| Overall | Which study type is it & therefore where should the leading code come from | composition.section.code | observation.code | http://fhir.ch/ig/ch-elm/ConceptMap/study-type-to-results |
| Antibiogram | which antibiotica can be used given the pathogen | observation.code | observation.component.code | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-code |
| Antibiogram | When should a valueQuantity be reported | observation.code | observation.component.value (profile) | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-observation-profile |
| Antibiogram | Which interpretation can be used, given the pathogen | observation.code | observation.component.interpretation | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-interpretation-code |
| Genotyping | Which mutations can be used given the pathogen | observation.code | observation.component.code | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-component-code |
| Genotyping | Is an additional string necessary to report a mutation | observation.component.code | observation.component.valueString (profile | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-observation-profile |
| Genotyping | Which interpretation can be used, given the pathogen | observation.code | observation.component.interpretation | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-interpretation-code |