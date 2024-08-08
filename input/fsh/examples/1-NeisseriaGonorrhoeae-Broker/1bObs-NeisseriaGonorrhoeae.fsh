Instance: 1bObs-NeisseriaGonorrhoeae
InstanceOf: ChElmObservationResultsLaboratoryStrict
Usage: #example
Title: "1bObs - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Observation Results: Laboratory"
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#697-3 "Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture"
* subject = Reference(Pat-001)
* effectiveDateTime = "2023-07-14T11:10:00+02:00"
* performer = Reference(1bOrg-Labor)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(1bSpec-Specimen)
