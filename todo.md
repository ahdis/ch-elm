TODO
====


1. component.value currently profile mapping only for sucs, geno not yet done

http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-observation-profile

2. component.interpretation - mapped observation.code zu interpretation code value set

   genotyping: present / absent (are the snomed codes right?) ttp://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pre-abs


need to describe the requirements how to add component results for susc/geno  


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
| Genotyping | TB | observation.component.interpretation | List of TB interpretation (positive negative) as HL7 codes | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pos-neg |
| Genotyping | CPE | observation.component.interpretation | List of CPE interpretation (positive negative) as HL7 codes | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pos-neg |
| All | all | observation.code | List of all observation codes for all study types | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-results-laboratory-observation-complete |
| Microbiology | TB | observation.interpretation | List of interpretation for "standard" TB report as HL7 codes | http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-interpretation-codes-pos-neg |

### New Concept Maps Table

| Study type | Description | Source | Target | Name |
|------------|-------------|---------|---------|------|
| Overall | Which study type is it & therefore where should the leading code come from | composition.section.code | observation.code | http://fhir.ch/ig/ch-elm/ConceptMap/study-type-to-results |
| Antibiogram | which antibiotica can be used given the pathogen | observation.code | observation.component.code | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-code |
| Antibiogram | When should a valueQuantity be reported | observation.code | observation.component.value (profile) | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-observation-profile |
| Antibiogram | Which interpretation can be used, given the pathogen | observation.code | observation.component.interpretation | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-compoment-interpretation-code |
| Genotyping | Which mutations can be used given the pathogen | observation.code | observation.component.code | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-component-code |
| Genotyping | Which interpretation can be used, given the pathogen | observation.code | observation.component.interpretation | http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-geno-to-compoment-interpretation-code |