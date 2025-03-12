ValueSet: ChElmResultsCodedValuesLaboratory
Id: ch-elm-results-coded-values-laboratory
Title: "CH ELM Results Coded Values Laboratory"
Description: "This CH ELM value set includes the codes for the laboratory test results (presence/absence)."
* ^status = #active
* ^experimental = false

* $sct#10828004	"Positive (qualifier value)"
* $sct#260385009 "Negative (qualifier value)"
/*
* $sct#442779003 "Borderline low (qualifier value)"
* $sct#442777001 "Borderline high (qualifier value)"
* $sct#371932001 "Borderline normal (qualifier value)"
* $sct#373068000 "Undetermined (qualifier value)"
*/


/* Via terminology service
ValueSet: ChElmResultsLaboratoryObservationComplete
Id: ch-elm-results-laboratory-observation-complete
Title: "CH ELM Results Laboratory Observation Complete"
Description: "Includes microbiology studies, microbial susceptibility tests, and genotyping ValueSets"
* ^status = #active
* ^experimental = false
* include codes from valueset $ch-elm-results-laboratory-observation
* include codes from valueset $ch-elm-results-laboratory-observation-geno
* include codes from valueset $ch-elm-results-laboratory-observation-susc
*/