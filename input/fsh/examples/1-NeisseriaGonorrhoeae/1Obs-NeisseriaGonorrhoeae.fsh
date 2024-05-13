Instance: 1Obs-NeisseriaGonorrhoeae
InstanceOf: ChElmObservationResultsLaboratoryStrict
Usage: #example
Title: "1Obs - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Observation Results: Laboratory"
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#697-3 "Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture"
* subject = Reference(1Pat-DM)
* effectiveDateTime = "2023-07-14T11:10:00+02:00"
* performer = Reference(1Org-Labor)
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(1Spec-Specimen)
