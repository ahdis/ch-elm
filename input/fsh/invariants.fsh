Invariant: ch-elm-dateTime
Description: "At least the format YYYY-MM-DD is required."
Severity: #error
Expression: "$this.toString().length() >= 10"

Invariant: ch-elm-doc-identifier
Description: "The identifier must be an UUID."
Severity: #error
Expression: "startsWith('urn:uuid:')"

Invariant: ch-elm-practrole
Description: "Must have at least a practitioner or an organization. Practitioner or organization must have at least a postalCode and a city defined."
Severity: #error
Expression: "(practitioner.exists() and practitioner.resolve().address.city.exists() and practitioner.resolve().address.postalCode.exists()) or (organization.exists() and organization.resolve().address.city.exists() and organization.resolve().address.postalCode.exists())"

Invariant: ch-elm-practrole-organizaton-name-exists
Description: "Must provide an organization name in case there is no practitioner."
Severity: #error
Expression: "practitioner.exists().not() implies (organization.exists() and organization.resolve().name.exists())"

Invariant: ch-elm-expecting-specimen-specification
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification, then Specimen.type must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-results-completion-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification') implies (specimen.resolve().exists() and specimen.resolve().type.exists() and specimen.resolve().type.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-results-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

Invariant: ch-elm-leading-code
Description: "The ServiceRequest.code and the Observation.code are in general equal."
Severity: #warning
Expression: "entry.resource.ofType(ServiceRequest).code = entry.resource.ofType(Observation).code"

Invariant: ch-elm-expecting-organism-specification
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification, then Observation.valueCodeableConcept must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs for Microbiology studies"
Severity: #error
Expression: "(%rootResource.is(FHIR.Bundle) and %rootResource.entry[0].resource.section[0].code.coding.code = '18725-2') implies (code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification') implies (value.exists() and (value as CodeableConcept).exists() and (value as CodeableConcept).memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)))"

Invariant: ch-elm-resolveableurl
Description: "Must resolve to the contained bundle."
Severity: #error
Expression: "url.exists() and url.resolve()"

Invariant: ch-elm-patient-name-representation-initial-loinc
Description: "If Observation.code is mapped to initials in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given must have one character and the following elements must not be provided: patient.telecom, patient.address.line"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code = 'initials' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials')))"

Invariant: ch-elm-patient-name-representation-initial-snomedct
Description: "If Observation.code is mapped to initials in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given must have one character and the following elements must not be provided: patient.telecom, patient.address.line"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code = 'initials' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials')))"

Invariant: ch-elm-patient-name-representation-hiv-code-loinc
Description: "If Observation.code is mapped to hiv-code in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient representation must follow profile resource profile: CH ELM Patient HIV"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code = 'hiv-code' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientHIV')))"

Invariant: ch-elm-patient-name-representation-hiv-code-snomedct
Description: "If Observation.code is mapped to hiv-code in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient representation must follow profile resource profile: CH ELM Patient HIV"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code = 'hiv-code' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientHIV')))"

Invariant: ch-elm-patient-name-representation-initial-or-vctcode-loinc
Description: "If Observation.code is mapped to initials or vctcode in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name family and given must have one character or - in case of a VCT patient - must be masked and the following elements must not be provided: patient.telecom, patient.address.line."
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code = 'initials-or-vctcode' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials') or subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientVCT')))"

Invariant: ch-elm-patient-name-representation-initial-or-vctcode-snomedct
Description: "If Observation.code is mapped to initials or vctcode in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name family and given must have one character or - in case of a VCT patient - must be masked and the following elements must not be provided: patient.telecom, patient.address.line."
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code = 'initials-or-vctcode' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials') or subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientVCT')))"

Invariant: ch-elm-interpretation-code-loinc
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code', then the interpretation code must be a member of the mapped ValueSet for Microbiology studies"
Severity: #error
Expression: "(%rootResource.is(FHIR.Bundle) and %rootResource.entry[0].resource.section[0].code.coding.first().code = '18725-2') implies ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).exists() implies interpretation.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

Invariant: ch-elm-interpretation-code-snomedct
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code', then the interpretation code must be a member of the mapped ValueSet for Microbiology studies"
Severity: #error
Expression: "(%rootResource.is(FHIR.Bundle) and %rootResource.entry[0].resource.section[0].code.coding.first().code = '18725-2') implies ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).exists() implies interpretation.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code))"

Invariant: ch-elm-observation-profile-loinc
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observation-profile', then the observation must be conform to the mapped profile for Microbiology studies"
Severity: #error
Expression: "(%rootResource.is(FHIR.Bundle) and %rootResource.entry[0].resource.section[0].code.coding.first().code = '18725-2') implies ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observation-profile'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).exists() implies conformsTo('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observation-profile'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

Invariant: ch-elm-observation-profile-snomedct
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observation-profile', then the observation must be conform to the mapped profile for Microbiology studies"
Severity: #error
Expression: "(%rootResource.is(FHIR.Bundle) and %rootResource.entry[0].resource.section[0].code.coding.first().code = '18725-2') implies ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observation-profile'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).exists() implies conformsTo('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observation-profile'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code))"

Invariant: ch-elm-component-code-susc-loinc
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-component-code, then the component.code code must be a member of the mapped ValueSet for Susceptibility testing"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-component-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).exists() implies component.code.all(memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-component-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

Invariant: ch-elm-component-code-susc-snomedct
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-component-code, then the component.code code must be a member of the mapped ValueSet for Susceptibility testing"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-component-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).exists() implies component.code.all(memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-susc-to-component-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code))"

Invariant: ch-elm-component-code-gene-loinc
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-gene-to-component-code, then the component.code code must be a member of the mapped ValueSet for genotyping testing"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-gene-to-component-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).exists() implies component.code.all(memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-gene-to-component-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

Invariant: ch-elm-component-code-gene-snomedct
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-gene-to-component-code, then the component.code code must be a member of the mapped ValueSet for genotyping testing"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-gene-to-component-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).exists() implies component.code.all(memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-gene-to-component-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code))"


Invariant: name-initials
Description: "a name with initials"
Severity: #error
Expression: "given.exists() and given.first().exists() and (''+given.first()).length() = 1 and family.exists() and (''+family).length() = 1"

Invariant: ch-elm-practioner-zsr-check-length
Description: "invalid ZSR number, cannot be processed, must be exactly one letter and 6 digits long"
Severity: #warning
Expression: "identifier.where(system='urn:oid:2.16.756.5.30.1.123.100.2.1.1').exists() implies identifier.where(system='urn:oid:2.16.756.5.30.1.123.100.2.1.1').value.matches('^[A-Z][0-9]{6}$').allTrue()"

Invariant: ch-elm-practioner-zsr-check-digit
Description: "invalid ZSR number, cannot be processed, must pass the modulus 26 check - https://confluence.sasis.ch/display/PublicZSR/ZSR+Webservice+FAQ"
Severity: #warning
Expression: "identifier.where(system='urn:oid:2.16.756.5.30.1.123.100.2.1.1').exists() implies identifier.where(system='urn:oid:2.16.756.5.30.1.123.100.2.1.1').value.select(((substring(1,1).toInteger()*6)+(substring(2,1).toInteger()*5)+(substring(3,1).toInteger()*4)+(substring(4,1).toInteger()*3)+(substring(5,1).toInteger()*2)+(substring(6,1).toInteger()))mod(26)=iif(substring(0,1)='A',1,iif(substring(0,1)='B',2,iif(substring(0,1)='C',3,iif(substring(0,1)='D',4,iif(substring(0,1)='E',5,iif(substring(0,1)='F',6,iif(substring(0,1)='G',7,iif(substring(0,1)='H',8,iif(substring(0,1)='I',9,iif(substring(0,1)='J',10,iif(substring(0,1)='K',11,iif(substring(0,1)='L',12,iif(substring(0,1)='M',13,iif(substring(0,1)='N',14,iif(substring(0,1)='O',15,iif(substring(0,1)='P',16,iif(substring(0,1)='Q',17,iif(substring(0,1)='R',18,iif(substring(0,1)='S',19,iif(substring(0,1)='T',20,iif(substring(0,1)='U',21,iif(substring(0,1)='V',22,iif(substring(0,1)='W',23,iif(substring(0,1)='X',24,iif(substring(0,1)='Y',25,iif(substring(0,1)='Z',26,-1))))))))))))))))))))))))))).allTrue()"