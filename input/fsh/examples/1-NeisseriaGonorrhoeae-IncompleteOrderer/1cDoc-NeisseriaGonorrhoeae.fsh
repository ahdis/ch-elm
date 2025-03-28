Instance: 1cDoc-NeisseriaGonorrhoeae
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "1 Doc - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Document: Laboratory Report (where the 'Lab' is the same as the 'Author')"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* type = #document
* timestamp = "2023-07-14T16:00:00+02:00"

* entry[Composition].fullUrl = "http://test.fhir.ch/r4/Composition/1Comp-NeisseriaGonorrhoeae"
* entry[Composition].resource = 1Comp-NeisseriaGonorrhoeae
* entry[DiagnosticReport].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/1cDR-NeisseriaGonorrhoeae"
* entry[DiagnosticReport].resource = 1cDR-NeisseriaGonorrhoeae
* entry[Patient].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-001"
* entry[Patient].resource = Pat-001
* entry[Observation].fullUrl = "http://test.fhir.ch/r4/Observation/1Obs-NeisseriaGonorrhoeae"
* entry[Observation].resource = 1Obs-NeisseriaGonorrhoeae
* entry[Specimen][0].fullUrl = "http://test.fhir.ch/r4/Specimen/1Spec-Specimen"
* entry[Specimen][=].resource = 1Spec-Specimen
* entry[ServiceRequest][0].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/1cSR-Order"
* entry[ServiceRequest][=].resource = 1cSR-Order

* entry[PractitionerRole][0].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/1cPR-KsAbc"
* entry[PractitionerRole][=].resource = 1cPR-KsAbc

* entry[Practitioner][0].fullUrl = "http://test.fhir.ch/r4/Practitioner/1cPract-KsAbc"
* entry[Practitioner][=].resource = 1cPract-KsAbc

* entry[Organization][0].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[Organization][=].resource = 1Org-Labor
