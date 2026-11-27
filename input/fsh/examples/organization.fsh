Instance: Organization-OrdererWithBERUIDB
InstanceOf: ChElmOrganizationOrderer
Usage: #example
Title: "Org: Orderer with BER and UIDB"
Description: "Example for a CH ELM Organization: Orderer"
* name = "Praxis Dr. Hauser"
* address.line = "Hauptstrasse 10"
* address.line.extension[streetName].valueString = "Hauptstrasse"
* address.line.extension[houseNumber].valueString = "10"
* address.city = "Solothurn"
* address.postalCode = "4500"
* identifier[UIDB].system = "urn:oid:2.16.756.5.35"
* identifier[UIDB].value = "CHE109322551"
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A62088168"

Instance: Org-HopitalRegionalSoleil
InstanceOf: ChElmOrganizationOrderer
Usage: #inline
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A99086638"
* name = "hôpital régional soleil"
* address.line = "rue des alpes 35"
* address.line.extension[streetName].valueString = "rue des alpes"
* address.line.extension[houseNumber].valueString = "35"
* address.city = "Genève"
* address.postalCode = "1202"

Instance: Org-KantonsspitalABC
InstanceOf: ChElmOrganizationOrderer
Usage: #inline
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A99684215"
* name = "Kantonsspital ABC"
* address.line = "Aortastrasse 22"
* address.line.extension[streetName].valueString = "Aortastrasse"
* address.line.extension[houseNumber].valueString = "22"
* address.line.extension[postOfficeBoxNumber].valueString = "Postfach 18"
* address.city = "Bern"
* address.postalCode = "3000"

Instance: Org-NationalesZentrumFurMeningokokken
InstanceOf: ChElmOrganizationLab
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002131193"
* name = "Nationales Zentrum für Meningokokken"

Instance: Org-SanLabFribourg
InstanceOf: ChElmOrganizationOrderer
Usage: #inline
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A99179004"
* name = "SanLab"
* address.line = "rue de l'église 10"
* address.line.extension[streetName].valueString = "rue de l'église"
* address.line.extension[houseNumber].valueString = "10"
* address.city = "Fribourg"
* address.postalCode = "1700"

Instance: Org-SanLab
InstanceOf: ChElmOrganizationLab
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* name = "SanLab"
