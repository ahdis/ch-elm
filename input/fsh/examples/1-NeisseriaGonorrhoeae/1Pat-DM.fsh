Instance: Pat-001
InstanceOf: ChElmPatient
Usage: #example
Title: "1Pat - DM"
Description: "Example for a CH ELM Patient (only with initials)"
* gender = #male
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7562295883070"
* name.family = "M"
* name.given = "D"
* birthDate = "1960-08-22"
// * telecom[phone].system = #phone
// * telecom[phone].value = "+41 79 999 55 66"
* address[home].use = #home
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH