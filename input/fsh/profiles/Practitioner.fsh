Profile: ChElmPractitionerOrderer
Parent: ChLabPractitioner
Id: ch-elm-practitioner-orderer
Title: "CH ELM Practitioner: Orderer"
Description: "This CH ELM base profile constrains the Practitioner resource for the orderer."
* . ^short = "CH ELM Practitioner: Orderer"
* identifier ..1 MS
* identifier[GLN] ..1 MS
* identifier[ZSR] 0..0
* name ..1
* name.given ..1 MS
* name.given ^maxLength = 100
* name.family MS
* name.family ^maxLength = 100
* telecom[email] ..1 MS
* telecom[email].value ^example.label = "CH ELM"
* telecom[email].value ^example.valueString = "info@domain.ch"
* telecom[email].value ^maxLength = 50
* telecom[phone] ..1 MS
* telecom[phone].value ^example.label = "CH ELM"
* telecom[phone].value ^example.valueString = "+41 79 999 55 66"
* telecom[phone].value ^maxLength = 25
* address ..1 MS
* address.postalCode MS
* address.city MS

