Profile: CHElmHumanName
Parent: CHCoreHumanName
Id: ch-elm-humanname
Title: "Human Name"
Description: "Name with extensions for data-absent-reason"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains ChElmExtVctCode named vctcode 0..1 and ChElmExtHivCode named hivcode 0..1
* family.extension contains $data-absent-reason named dataabsentreason 0..1
* given.extension contains $data-absent-reason named dataabsentreason 0..1

Profile: ChElmPatient
Parent: ChLabPatient
Id: ch-elm-patient
Title: "CH ELM Patient"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory orders and test reports."
* obeys ch-elm-patient-address-require-countrycode
* . ^short = "CH ELM Patient"

* identifier ..1 MS

* identifier contains IDN 0..1 MS
* identifier[AHVN13] ..1 MS
* identifier[AHVN13] ^short = "OASI Number Switzerland"

* identifier[IDN] only IdnIdentifier
* identifier[IDN] ^short = "IDN Liechtenstein"
* identifier[IDN] ^patternIdentifier.system = "urn:oid:2.16.438.10.20.10.10.1.2.1"

* identifier[EPR-SPID] 0..0
* identifier[LocalPid] 0..0
* identifier[insuranceCardNumber] 0..0

* name 1..1
* name only CHElmHumanName
* name ^short = "Whether the personal data is transmitted by using initials, full name or a special combination is described under 'Guidance - Personal Data (Patient Name)'"
* name.family 1..
* name.family ^short = "masked when using HIV/VCT-extensions (see IG guidance)."
* name.family ^maxLength = 100
* name.given 1..1
* name.given ^short = "masked when using HIV/VCT-extensions (see IG guidance)."
* name.given ^maxLength = 100

* gender 1..

* birthDate 1..
* birthDate obeys ch-elm-dateTime

* address ..1 MS
* address ^slicing.discriminator[0].type = #value
* address ^slicing.discriminator[=].path = "use"
* address ^slicing.rules = #open
* address contains home ..1 MS
* address[home] ^short = "Residential address"
* address[home].use 1..
* address[home].use = #home
* address[home].line ..1
* address[home].line.extension[streetName].valueString ^maxLength = 100
* address[home].line.extension[houseNumber].valueString ^maxLength = 10
* address[home].postalCode MS
* address[home].postalCode ^maxLength = 10
* address[home].city MS
* address[home].city ^maxLength = 50
* address[home].state MS 
* address[home].state ^short = "sub-unit of country. canton-abbreviation is expected for a Swiss or Liechtenstein address." // kein Binding notwendig: constraint ch-addr-2 = For a Swiss address, a canton abbreviation from the value set 'eCH-0007 Canton Abbreviation' must be used.
* address[home].country MS
* address[home].country.extension contains $country-deprecated named country-deprecated 0..1
// * address[home].country.extension[countrycode] 1.. // we have to support the deprecated extension for backwards compatibility too
* address[home].country.extension[countrycode].valueCoding from $bfs-country-codes (required)
* address[home].country.extension[country-deprecated].valueCoding from $bfs-country-codes (required)

* telecom[phone] ..1
* telecom[phone].value ^example.label = "CH ELM"
* telecom[phone].value ^example.valueString = "+41 79 999 55 66"
* telecom[phone].value ^maxLength = 25

Profile: ChElmPatientVCT
Parent: ChElmPatient
Title: "CH ELM Patient VCT"
Description: "Patient representation via a VCT Code"
* . ^short = "CH ELM Patient VCT"
* identifier[AHVN13] 0..0
* identifier[IDN] 0..0
* name.extension[vctcode] 1.. 
* name.extension[hivcode] ..0
* name.family.extension[dataabsentreason] 1..
* name.family.extension[dataabsentreason].valueCode = #masked
* name.given.extension[dataabsentreason] 1..
* name.given.extension[dataabsentreason].valueCode = #masked
* address[home].line ..0
* telecom ..0

Profile: ChElmPatientHIV
Parent: ChElmPatient
Title: "CH ELM Patient HIV"
Description: "Patient representation for HIV"
* . ^short = "CH ELM Patient HIV"
* name.extension[vctcode] ..0 
* name.extension[hivcode] 1..
* name.family.extension[dataabsentreason] 1..
* name.family.extension[dataabsentreason].valueCode = #masked
* name.given.extension[dataabsentreason] 1..
* name.given.extension[dataabsentreason].valueCode = #masked
* address[home].line ..0
* telecom ..0

Profile: ChElmPatientInitials
Parent: ChElmPatient
Title: "CH ELM Patient Initials"
Description: "Patient representation via Initials"
* name obeys name-initials
* address[home].line ..0
* telecom ..0
