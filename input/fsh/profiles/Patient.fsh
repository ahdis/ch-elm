Profile: ChElmPatient
Parent: ChLabPatient
Id: ch-elm-patient
Title: "CH ELM Patient"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory orders and test reports."
* . ^short = "CH ELM Patient"
* gender 
* identifier[AHVN13] 1..
* name 1..
* name ^short = "Whether the personal data is transmitted by using initials, full name or a special combination can be seen from the table on p.66 of this document: 
https://www.bag.admin.ch/dam/bag/de/dokumente/mt/msys/leitfaden-zur-meldepflicht-2023.pdf.download.pdf/meldepflicht-leitfaden-2023-de.pdf"
* name.text ^short = "For usage in the case of HIV/AIDS see guidance"
* name.family 1..
* name.family ^short = "In the case of HIV/AIDS masked and provide a specific value (see guidance)"
* name.given 1..
* name.given ^short = "In the case of HIV/AIDS masked and provide a specific value (see guidance)"
* birthDate 1..
* birthDate obeys ch-elm-dateTime
* address ^slicing.discriminator[0].type = #value
* address ^slicing.discriminator[=].path = "use"
* address ^slicing.rules = #open
* address contains home 1..1
* address[home] ^short = "Residential address"
* address[home].use 1..
* address[home].use = #home
* address[home].postalCode 1..
* address[home].city 1..
* address[home].state 1..
* address[home].country 1..
* address[home].country.extension[countrycode] 1..

* telecom[email].value ^example.label = "CH ELM"
* telecom[email].value ^example.valueString = "info@domain.ch"

* telecom[phone].value ^example.label = "CH ELM"
* telecom[phone].value ^example.valueString = "+41 79 999 55 66"