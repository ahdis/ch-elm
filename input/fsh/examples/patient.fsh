Instance: Pat-006
InstanceOf: ChElmPatient
Usage: #example
Title: "Pat - Ernst Karl Tanner"
Description: "Example for a CH ELM Patient - full name (and full address)"
* gender = #male
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567897"
* name.family = "Tanner"
* name.given = "Ernst Karl"
* birthDate = "1966-08-22"
* address[home].use = #home
* address[home].line = "Tannenstrasse 10a"
* address[home].line.extension[streetName].valueString = "Tannenstrasse"
* address[home].line.extension[houseNumber].valueString = "10a"
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH


Instance: Pat-005
InstanceOf: ChElmPatientInitials
Usage: #example
Title: "Pat - ET"
Description: "Example for a CH ELM Patient - initials"
* gender = #male
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567897"
* name.family = "T"
* name.given = "E"
* birthDate = "1966-08-22"
* address[home].use = #home
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH

Instance: Pat-VCT
InstanceOf: ChElmPatientVCT
Usage: #example
Title: "Pat - VCT"
Description: "Example for a CH ELM Patient with VCT Code"
* gender = #male
* name.extension[vctcode].valueString = "kste12345"
* birthDate = "1966-08-22"
* address[home].use = #home
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH

Instance: Pat-004
InstanceOf: ChElmPatientHIV
Usage: #example
Title: "Pat - E5"
Description: "Example for a CH ELM Patient - special case HIV/AIDS"
* gender = #male
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567897"
* name.extension[hivcode].valueString = "E5"
* name.given.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.given.extension.valueCode = #masked
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension.valueCode = #masked
* birthDate = "1966-08-22"
* address[home].use = #home
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH 



Instance: Pat-007
InstanceOf: ChElmPatient
Usage: #example
Title: "Pat - Lilly Liechtenstein"
Description: "Example for a CH ELM Patient - IDN Liechtenstein"
* identifier[IDN].system = "urn:oid:2.16.438.10.20.10.10.1.2.1"
* identifier[IDN].value = "1234567890123"
* name.family = "Liechtenstein"
* name.given[0] = "Lilly"
* gender = #female
* birthDate = "2000-09-14"
* address[home].state = "FL"
* address[home].country = "LI"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#LI


Instance: Pat-002
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.family = "F"
* name.given = "H"
* gender = #female
* birthDate = "1985-10-17"
* address.use = #home
* address.city = "Derendingen"
* address.state = "SO"
* address.postalCode = "4552"
* address.country = "CH"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH


Instance: Pat-003
InstanceOf: ChElmPatient
Usage: #example
Title: "Pat - Antoine Dupont"
Description: "Example for a CH ELM Patient - full name"
* gender = #female
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567866"
* name.family = "Dupont"
* name.given = "Antoine"
* birthDate = "1981-02-07"
* telecom.system = #phone
* telecom.value = "+41 76 222 55 22"
* address[home].use = #home
* address[home].line = "Rue de la république 10"
* address[home].line.extension[streetName].valueString = "Rue de la république"
* address[home].line.extension[houseNumber].valueString = "10"
* address[home].postalCode = "1227"
* address[home].city = "Carouge"
* address[home].state = "GE"
* address[home].country = "CH"
* address[home].country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH
