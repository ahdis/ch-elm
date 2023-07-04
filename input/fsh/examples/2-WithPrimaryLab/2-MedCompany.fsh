Instance: 2PR-MedCompany
InstanceOf: ChElmPractitionerRoleReportingLab
Usage: #example
Title: "2PR - Martina Reporter @ MedCompany"
Description: "Example for a CH ELM PractitionerRole (Reporting Lab)."
* practitioner = Reference(2Pract-MedCompany)
* organization = Reference(2Org-MedCompany)


Instance: 2Pract-MedCompany
InstanceOf: ChElmPractitioner
Usage: #example
Title: "2Pract - Martina Reporter"
Description: "Example for a CH ELM Practitioner (Reporting Lab)."
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000201041"
* name.family = "Reporter"
* name.given = "Martina"




Instance: 2Org-MedCompany
InstanceOf: ChElmOrganizationReportingLab
Usage: #example
Title: "2Org - MedCompany"
Description: "Example for a CH ELM Organization: Reporting Lab."
* extension[department].valueString = "Abt. 2"
* name = "MedCompany"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* identifier[FOPH].system = "http://fhir.ch/ig/ch-elm/NamingSystem/LabCodeFOPH"
* identifier[FOPH].value = "54322"
* address[0].line = "Poststr. 4"
* address[=].postalCode = "8006"
* address[=].city = "Zürich"
* telecom[email].system = #email
* telecom[email].value = "info@medcompany.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "044 444 44 00"
