Instance: 1cPR-KsAbc
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #example
Title: "1PR - Monika Giacometti @ Kantonsspital ABC"
Description: "Example for a CH ELM PractitionerRole: Orderer where the organization is not known, only the prtactitioner"
* practitioner = Reference(1cPract-KsAbc)

Instance: 1cPract-KsAbc
InstanceOf: ChElmPractitionerOrderer
Usage: #example
Title: "1Pract - Giacometti"
Description: "Example for a CH ELM Practitioner: Orderer where only the name, plz and city is known"
* name.family = "Giacometti"
* name.given.extension[dataabsentreason].valueCode = #unknown
* address.postalCode = "3000"
* address.city = "Bern"
