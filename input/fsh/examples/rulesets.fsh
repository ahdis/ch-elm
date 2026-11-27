RuleSet: Entry(type, name)
* entry[+].fullUrl = "http://test.fhir.ch/r4/{type}/{name}"
* entry[=].resource = {name}

RuleSet: LabReportCompositionType
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
