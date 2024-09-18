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
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification, then Observation.valueCodeableConcept must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification') implies (value.exists() and (value as CodeableConcept).exists() and (value as CodeableConcept).memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

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

Invariant: ch-elm-patient-name-representation-initial-or-vctcode-loinc
Description: "If Observation.code is mapped to initials or vctcode in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name family and given must have one character or - in case of a VCT patient - must be masked and the following elements must not be provided: patient.telecom, patient.address.line."
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code = 'initials-or-vctcode' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials') or subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientVCT')))"

Invariant: ch-elm-patient-name-representation-initial-or-vctcode-snomedct
Description: "If Observation.code is mapped to initials or vctcode in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name family and given must have one character or - in case of a VCT patient - must be masked and the following elements must not be provided: patient.telecom, patient.address.line."
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code = 'initials-or-vctcode' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials') or subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientVCT')))"

Invariant: ch-elm-interpretation-code-loinc
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code', then the interpretation code must be a member of the mapped ValueSet"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).exists() implies interpretation.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)"

Invariant: ch-elm-interpretation-code-snomedct
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code', then the interpretation code must be a member of the mapped ValueSet"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).exists() implies interpretation.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code)"

Invariant: ch-elm-observation-profile-loinc
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observationprofile', then the observation must be conform to the mapped profile"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observationprofile'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).exists() implies conformsTo('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observationprofile'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)"

Invariant: ch-elm-observation-profile-snomedct
Description: "If Observation.code is mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observationprofile', then the observation must be conform to the mapped profile"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observationprofile'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).exists() implies conformsTo('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-observationprofile'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code)"

Invariant: name-initials
Description: "a name with initials"
Severity: #error
Expression: "given.exists() and given.first().exists() and (''+given.first()).length() = 1 and family.exists() and (''+family).length() = 1"
