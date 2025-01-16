TODO
====

Beispiele gemäss PDF / Confluence eingebaut.

Abbildung Genotype value kann nicht optional sein (oder sonst dataAbsentReason) wegen EU Constraint

Beispiele für ValueSets wie unten und Constraints müssen noch weiter angepasst werden auf Component Ebene für suscepbility soiwe genotyping


1b) eine ConceptMap von source Observation.code zu Section.code (microbiology studies / microbial susceptibility tests / genotype)
    http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-lab-study-types

strict kann dann angepasst werden via memberOf?
 

2. component.code - mapped observation.code zu valueset (antibiotika valueset oder pathogen valueset)
    http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-antibiotic
    http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-gene
    + die jeweiligen ValueSets müssen zu Verfügung gestellt werden

        http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-antibiotic-myco
        http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-gene-myco
 
3. component.value

http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-observation-profile
http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-observation-profile
  + zusätlich ValueSets müssen zu Verfügung gestellt werden falls notwendig (Diskussion am Mittwoch)

bei antibiogram, bei susc: nie einen string

bei genotyping kann es einen string haben, bei CPE setzt es einen einen component.code dann muss es einen valueString schicken

-> besser zwei Modellierung
 

4. component.interpretation - mapped observation.code zu interpretation code value set
   http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-interpretation-code
   http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-interpretation-code