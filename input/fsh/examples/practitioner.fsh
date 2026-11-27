Instance: Pract-AndreaGasser
InstanceOf: ChElmPractitionerOrderer
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* name.family = "Gasser"
* name.given = "Andrea"
* telecom[email].system = #email
* telecom[email].value = "andrea.gasser@sanlab.ch"

Instance: Pract-MonikaGiacometti
InstanceOf: ChElmPractitionerOrderer
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234438"
* name.family = "Giacometti"
* name.given = "Monika"
* telecom[phone].system = #phone
* telecom[phone].value = "+41 79 111 44 55"
* telecom[email].system = #email
* telecom[email].value = "m.giacometti@ks-abc.ch"

Instance: PR-AndreaGasser
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #inline
* practitioner = Reference(Pract-AndreaGasser)
* organization = Reference(Org-SanLabFribourg)

Instance: PR-JeanneMoreau-HopitalRegionalSoleil
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #inline
* practitioner = Reference(Pract-JeanneMoreau)
* organization = Reference(Org-HopitalRegionalSoleil)

Instance: PR-MonikaGiacometti
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #inline
* practitioner = Reference(Pract-MonikaGiacometti)
* organization = Reference(Org-KantonsspitalABC)
