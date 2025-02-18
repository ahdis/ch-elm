Profile: ChElmObservationResultsLaboratory
Parent: ChLabObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory
Title: "CH ELM Observation Results: Laboratory"
Description: "This CH ELM base profile constrains the Observation resource for the purpose of laboratory test reports."
* obeys ch-elm-expecting-specimen-specification
* obeys ch-elm-expecting-organism-specification
* obeys ch-elm-interpretation-code-loinc
* obeys ch-elm-interpretation-code-snomedct
* obeys ch-elm-patient-name-representation-initial-loinc
* obeys ch-elm-patient-name-representation-initial-snomedct
* obeys ch-elm-patient-name-representation-initial-or-vctcode-loinc
* obeys ch-elm-patient-name-representation-initial-or-vctcode-snomedct
* obeys ch-elm-patient-name-representation-hiv-code-loinc
* obeys ch-elm-patient-name-representation-hiv-code-snomedct
* obeys ch-elm-observation-profile-loinc
* obeys ch-elm-observation-profile-snomedct
* . ^short = "CH ELM Observation Results: Laboratory"
* status = #final
* code from ChElmResultsLaboratoryObservation (extensible)
* code only ChElmCodeableConcept
* subject only Reference(ChElmPatient)
* subject 1..
* effective[x] 1..
* effectiveDateTime 1..
* effectiveDateTime obeys ch-elm-dateTime

* valueString ^short = "String if required by leading code, see also 'Guidance - Laboratory Result'" 
* valueQuantity ^short = "Quantity if required by leading code, see also 'Guidance - Laboratory Result'"
* valueRatio ^short = "Ratio if required by leading code, see also 'Guidance - Laboratory Result'"
* valueCodeableConcept ^short = "Positive/Negative or code for an additional organism specification, see also 'Guidance - Laboratory Result'"
* valueCodeableConcept only ChElmCodeableConcept
* valueCodeableConcept from ChElmResultsCodedValuesLaboratory (preferred) // not required, because the additional organism codes come from other valuesets

* performer 1..1
* performer only Reference(ChElmOrganizationLab)
* specimen only Reference(ChElmSpecimen)
* specimen 1..
* interpretation 0..1
* interpretation only ChElmCodeableConcept
* interpretation ^short = "see also 'Guidance - Laboratory Result'"
* dataAbsentReason 0..1
* dataAbsentReason ^short = "see also 'Guidance - Laboratory Result'"

Profile: ChElmObservationResultsLaboratoryStrict
Parent: ChElmObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory-strict
Title: "CH ELM Observation Results: Laboratory (strict)"
Description: "CH ELM profile for the Observation resource with a stricter validation mechanism than the base profile via binding strength reinforcement for the leading code element."
* code from ChElmResultsLaboratoryObservationComplete (required)

Profile: ChElmObservationResultsLaboratoryMicrobiology
Parent: ChElmObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory-microbiology
Title: "CH ELM Observation Results for Microbiology studies (set)"
Description: "This CH ELM profile constrains the Observation resource for the purpose of laboratory test reports."
* interpretation 1..1
* valueString ^short = "String if required by leading code, see also 'Guidance - Laboratory Result'" 
* valueQuantity ^short = "Quantity if required by leading code, see also 'Guidance - Laboratory Result'"
* valueCodeableConcept ^short = "Positive/Negative or code for an additional organism specification, see also 'Guidance - Laboratory Result'"
* valueCodeableConcept only ChElmCodeableConcept
* valueCodeableConcept from ChElmResultsCodedValuesLaboratory (preferred) // not required, because the additional organism codes come from other valuesets

Profile: ChElmObservationResultsLaboratoryMicrobiologyStrict
Parent: ChElmObservationResultsLaboratoryMicrobiology
Id: ch-elm-observation-results-laboratory-microbiolgy-strict
Title: "CH ELM Observation Results for Microbiology studies (set) strict"
Description: "CH ELM profile for the Observation resource with a stricter validation mechanism than the base profile via binding strength reinforcement for the leading code element."
* code from ChElmResultsLaboratoryObservation (required)

Profile: ChElmObservationResultsLaboratorySusceptibility
Parent: ChElmObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory-susceptibility
Title: "CH ELM Observation Results for Microbial susceptibility tests"
Description: "This CH ELM profile constrains the Observation resource for the purpose of laboratory test reports."
* obeys ch-elm-component-code-susc-loinc
* obeys ch-elm-component-code-susc-snomedct
* obeys ch-elm-component-interpretation-code-susc-loinc
* obeys ch-elm-component-interpretation-code-susc-snomedct
* obeys ch-elm-component-observation-profile-susc-loinc
* obeys ch-elm-component-observation-profile-susc-snomedct
* component 1..*
* component.code  ^short = "see also 'Guidance - Laboratory Result'"
* component.code 1..1
* component.interpretation 1..1
* component.valueQuantity ^short = "Quantity if required by leading code, see also 'Guidance - Laboratory Result'"

Profile: ChElmObservationResultsLaboratorySusceptibilityStrict
Parent: ChElmObservationResultsLaboratorySusceptibility
Id: ch-elm-observation-results-laboratory-susceptibility-strict
Title: "CH ELM Observation Results for Microbial susceptibility tests (strict)"
Description: "CH ELM profile for the Observation resource with a stricter validation mechanism than the base profile via binding strength reinforcement for the leading code element."
* code from $ch-elm-results-laboratory-observation-susc (required)

Profile: ChElmObservationResultsLaboratoryGenotyping
Parent: ChElmObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory-genotyping
Title: "CH ELM Observation Results for Genotyping"
Description: "This CH ELM profile constrains the Observation resource for the purpose of laboratory test reports."
* obeys ch-elm-component-code-geno-loinc
* obeys ch-elm-component-code-geno-snomedct
* obeys ch-elm-component-interpretation-code-geno-loinc
* obeys ch-elm-component-interpretation-code-geno-snomedct
* component 1..*
* component.code  ^short = "see also 'Guidance - Laboratory Result'"
* component.code 1..1
* component.interpretation 1..1
* component.valueString ^short = "String if required by leading code, see also 'Guidance - Laboratory Result'" 
* component.valueQuantity ^short = "Quantity if required by leading code, see also 'Guidance - Laboratory Result'"

Profile: ChElmObservationResultsLaboratoryGenotypingStrict
Parent: ChElmObservationResultsLaboratoryGenotyping
Id: ch-elm-observation-results-laboratory-genotyping-strict
Title: "CH ELM Observation Results for Genotyping (strict)"
Description: "CH ELM profile for the Observation resource with a stricter validation mechanism than the base profile via binding strength reinforcement for the leading code element."
* code from $ch-elm-results-laboratory-observation-geno (required)

Profile: ChElmObservationVirl
Parent: Observation
Id: ch-elm-observation-pq-virl
Title: "CH ELM Observation Results: Viral Load"
Description: "Viral Load as observation result, see also 'Guidance - Laboratory Result'"
* valueQuantity 1..1
* valueQuantity.code = #1/mL 
* valueQuantity.system = "http://unitsofmeasure.org"

Profile: ChElmObservationRto
Parent: Observation
Id: ch-elm-observation-rto
Title: "CH ELM Observation Results: Ratio"
Description: "Ratio as observation result, see also 'Guidance - Laboratory Result'"
* valueRatio 1..1
* valueRatio.numerator 1..1
* valueRatio.numerator.value = 1
* valueRatio.numerator.system = "http://unitsofmeasure.org"
* valueRatio.numerator.code = #1
* valueRatio.denominator 1..1
* valueRatio.denominator.value 1..1
* valueRatio.denominator.code 1..1

Profile: ChElmObservationComponentConcentration
Parent: Observation
Id: ch-elm-observation-component-conc
Title: "CH ELM Observation Component Results: Concentration"
Description: "Ratio as observation.component result, see also 'Guidance - Laboratory Result'"
* component.valueQuantity 1..1
* component.valueQuantity.value 1..1
* component.valueQuantity.code = #mg/L 
* component.valueQuantity.system = "http://unitsofmeasure.org"
* component.valueQuantity.unit = #mg/L 

Profile: ChElmObservationComponentTxt
Parent: Observation
Id: ch-elm-observation-component-txt
Title: "CH ELM Observation Component Results: Text"
Description: "Text as observation.component result, see also 'Guidance - Laboratory Result'"
* component.valueString 0..1

Profile: ChElmObservationTxt
Parent: Observation
Id: ch-elm-observation-txt
Title: "CH ELM Observation Results: Text"
Description: "Text as observation result, see also 'Guidance - Laboratory Result'"
* valueString 1..1