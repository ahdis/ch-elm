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

* valueQuantity 0..1
* valueCodeableConcept 0..1
* valueCodeableConcept only ChElmCodeableConcept
* valueCodeableConcept from ChElmResultsCodedValuesLaboratory (preferred) // not required, because the additional organism codes come from other valuesets
* valueCodeableConcept ^short = "Positive/Negative or code for an additional organism specification, see also 'Guidance - Laboratory Result'"

* performer 1..1
* performer only Reference(ChElmOrganizationLab)
* specimen only Reference(ChElmSpecimen)
* specimen 1..
* interpretation 1..1
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

Profile: ChElmObservationPq
Parent: Observation
Id: ch-elm-observation-pq
* valueQuantity 1..1

Profile: ChElmObservationRto
Parent: Observation
Id: ch-elm-observation-rto
* valueRatio 1..1

Profile: ChElmObservationTxt
Parent: Observation
Id: ch-elm-observation-txt
* valueString 1..1