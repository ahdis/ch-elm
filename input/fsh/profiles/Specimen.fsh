Profile: ChElmSpecimen
Parent: ChLabSpecimen
Id: ch-elm-specimen
Title: "CH ELM Specimen: Laboratory"
Description: "This CH ELM base profile constrains the Specimen resource for the purpose of laboratory test reports."
* . ^short = "CH Lab Specimen: Laboratory"

* type 1.. // Req. EU LAB
* type ^short = "The mechanism to declare the collection material is described under 'Guidance - Laboratory Result'"
* type.coding only ChElmCoding
* type.coding ..1
* type.text = "Material declared by Observation.code or non-mandatory"

* subject 1..
* subject only Reference(ChElmPatient)

* collection MS
* collection.collectedDateTime obeys ch-elm-dateTime
* collection.collectedDateTime MS
