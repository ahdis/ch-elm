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
* code from ChElmResultsLaboratoryObservation (required)

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

Profile: ChElmObservationTxt
Parent: Observation
Id: ch-elm-observation-txt
Title: "CH ELM Observation Results: Text"
Description: "Text as observation result, see also 'Guidance - Laboratory Result'"
* valueString 1..1