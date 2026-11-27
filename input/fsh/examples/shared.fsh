// Patients, organizations and practitioners referenced by the example Bundles

Instance: Org-A99684215ABC
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "A99684215"
* name = "A99684215 ABC"
* address.line = "Aortastrasse 22"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Aortastrasse"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "22"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address.line.extension[=].valueString = "Postfach 18"
* address.city = "Bern"
* address.postalCode = "3000"

Instance: Org-HopitalRegionalSoleil
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "A99086638"
* name = "hôpital régional soleil"
* address.line = "rue des alpes 35"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "rue des alpes"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "35"
* address.city = "Genève"
* address.postalCode = "1202"

Instance: Org-KantonsspitalABC
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "A99684215"
* name = "Kantonsspital ABC"
* address.line = "Aortastrasse 22"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Aortastrasse"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "22"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address.line.extension[=].valueString = "Postfach 18"
* address.city = "Bern"
* address.postalCode = "3000"

Instance: Org-NationalesZentrumFurMeningokokken
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601002131193"
* name = "Nationales Zentrum für Meningokokken"

Instance: Org-PraxisDrHauser
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "A74966168"
* name = "Praxis Dr. Hauser"
* address.line = "Hauptstrasse 10"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Hauptstrasse"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "10"
* address.city = "Solothurn"
* address.postalCode = "4500"

Instance: Org-SanLab-2
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "A99684215"
* name = "SanLab"
* address.line = "rue de l'église 10"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "rue de l'église"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "10"
* address.city = "Fribourg"
* address.postalCode = "1700"

Instance: Org-SanLab
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601002331470"
* name = "SanLab"

Instance: Pat-49Doc-HIV
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.extension.url = "http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-ext-hiv-code"
* name.extension.valueString = "H5"
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension.valueCode = #masked
* name.given.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.given.extension.valueCode = #masked
* gender = #female
* birthDate = "1981-02-07"
* address.use = #home
* address.city = "Carouge"
* address.state = "GE"
* address.postalCode = "1227"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-AD
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.family = "D"
* name.given = "A"
* gender = #female
* birthDate = "1981-02-07"
* address.use = #home
* address.city = "Carouge"
* address.state = "GE"
* address.postalCode = "1227"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-AntoineDupont-2
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.family = "Dupont"
* name.given = "Antoine"
* telecom.system = #phone
* telecom.value = "+41 76 222 55 22"
* gender = #female
* birthDate = "1981-02-07"
* address.use = #home
* address.line = "rue de la république 10"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "rue de la république"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "10"
* address.city = "Carouge"
* address.state = "GE"
* address.postalCode = "1227"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-AntoineDupont-3
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567866"
* name.family = "Dupont"
* name.given = "Antoine"
* telecom.system = #phone
* telecom.value = "41762225522"
* gender = #female
* birthDate = "1981-02-07"
* address.use = #home
* address.line = "Rue de la république 10"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Rue de la république"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "10"
* address.city = "Carouge"
* address.state = "GE"
* address.postalCode = "1227"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-AntoineDupont
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.family = "Dupont"
* name.given = "Antoine"
* gender = #female
* birthDate = "1981-02-07"
* address.use = #home
* address.line = "rue de la république 10"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "rue de la république"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "10"
* address.city = "Carouge"
* address.state = "GE"
* address.postalCode = "1227"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-DelematMonika
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7562295883070"
* name.family = "Monika"
* name.given = "Delemat"
* gender = #male
* birthDate = "1960-08-22"
* address.use = #home
* address.line = "Bahnhofstrasse 27"
* address.city = "Bern"
* address.state = "BE"
* address.postalCode = "3000"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-DM
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7562295883070"
* name.family = "M"
* name.given = "D"
* gender = #male
* birthDate = "1960-08-22"
* address.use = #home
* address.city = "Bern"
* address.state = "BE"
* address.postalCode = "3000"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-ErnstKarlTanner
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.family = "Tanner"
* name.given = "Ernst Karl"
* gender = #male
* birthDate = "1966-08-22"
* address.use = #home
* address.line = "Tannenstrasse 10a"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Tannenstrasse"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "10a"
* address.city = "Bern"
* address.state = "BE"
* address.postalCode = "3000"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-HerberFrimousse
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561733446723"
* name.family = "Frimousse"
* name.given = "Herber"
* gender = #female
* birthDate = "1985-10-17"
* address.use = #home
* address.line = "Bahnhofstrasse 27"
* address.city = "Derendingen"
* address.state = "SO"
* address.postalCode = "4552"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-HF
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561733446723"
* name.family = "F"
* name.given = "H"
* gender = #female
* birthDate = "1985-10-17"
* address.use = #home
* address.city = "Derendingen"
* address.state = "SO"
* address.postalCode = "4552"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-HildetterFrida
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561733446723"
* name.family = "Frida"
* name.given = "Hildetter"
* gender = #female
* birthDate = "1985-10-17"
* address.use = #home
* address.line = "Bahnhofstrasse 27"
* address.city = "Derendingen"
* address.state = "SO"
* address.postalCode = "4552"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: Pat-MeierDonna
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561733446723"
* name.family = "Donna"
* name.given = "Meier"
* gender = #female
* birthDate = "1985-10-17"
* address.use = #home
* address.line = "Bahnhofstrasse 27"
* address.city = "Derendingen"
* address.state = "SO"
* address.postalCode = "4552"
* address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* address.country = "CH"

Instance: PR-AndreaGasser
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(Pract-AndreaGasser)
* organization = Reference(Org-SanLab-2)

Instance: PR-JeanneMoreau-2
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(Pract-JeanneMoreau-2)
* organization = Reference(Org-HopitalRegionalSoleil)

Instance: PR-MonikaGiacometti-2
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(Pract-MonikaGiacometti)
* organization = Reference(Org-A99684215ABC)

Instance: PR-MonikaGiacometti
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(Pract-MonikaGiacometti)
* organization = Reference(Org-KantonsspitalABC)

Instance: PR-PeterHauser-2
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(Pract-PeterHauser-2)
* organization = Reference(Org-PraxisDrHauser)

Instance: Pract-AndreaGasser
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601002331470"
* name.family = "Gasser"
* name.given = "Andrea"
* telecom.system = #email
* telecom.value = "andrea.gasser@sanlab.ch"

Instance: Pract-JeanneMoreau-2
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000121219"
* name.family = "Moreau"
* name.given = "Jeanne"
* telecom[0].system = #phone
* telecom[=].value = "+41 79 111 88 99"
* telecom[+].system = #email
* telecom[=].value = "jm@hr-soleil.ch"

Instance: Pract-MonikaGiacometti
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234438"
* name.family = "Giacometti"
* name.given = "Monika"
* telecom[0].system = #phone
* telecom[=].value = "+41 79 111 44 55"
* telecom[+].system = #email
* telecom[=].value = "m.giacometti@ks-abc.ch"

Instance: Pract-PeterHauser-2
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000000514"
* name.family = "Hauser"
* name.given = "Peter"
* telecom[0].system = #phone
* telecom[=].value = "+41 79 222 33 44"
* telecom[+].system = #email
* telecom[=].value = "peter.hauser@hauserpraxis.ch"
