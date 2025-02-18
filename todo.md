TODO
====

2. component.code - mapped observation.code zu valueset (antibiotika valueset oder pathogen valueset)
    http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-code
    http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-component-code
    + die jeweiligen ValueSets müssen zu Verfügung gestellt werden


    Die neuen ValueSets canonical müssen in diesem Codesystem gelistet sein
    http://fhir.ch/ig/ch-elm/CodeSystem/ch-elm-results-component-vs


    ---> Should it be two ValueSets (one for antibiotic and one for gene) or should it be depending on the pathogen? 
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

-> tow modeling, should we make the modeling more detailed or do we need concept maps?

4. component.interpretation - mapped observation.code zu interpretation code value set

   could this be mapped directly to the two valuesets:

   susc: susceptible/resistant  http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-res-sus
   genotyping: present / absent (are the snomed codes right?) ttp://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pre-abs

   if yes then we don't need the following concept maps:
     http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-interpretation-code
     http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-interpretation-code