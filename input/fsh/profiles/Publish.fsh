Profile:        PublishDocumentReference
Parent:         DocumentReference
Id:             PublishDocumentReference
Title:          "DocumentReference for sending the report"
Description:    """
A profile on the DocumentReference resource with publication constraints: 
- must be status current
- must have an identifier
- uses attachment.url to carry the document as a contained resource
- validation according to http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document
"""
* contained 1..
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains document 1..1 MS
* contained[document] ^type.profile = Canonical(ChElmDocument)
* modifierExtension 0..0
* identifier 1..1
* status 1..1
* status = http://hl7.org/fhir/document-reference-status#current
* docStatus 0..0
* date 0..1 MS
* authenticator 0..1
* relatesTo 0..* MS
* description 0..1
* securityLabel 0..* MS
* content 1..1
* content ^definition = "The document and format referenced"
* content.attachment 1..1
* content.attachment obeys ch-elm-resolveableurl
* content.attachment.language 0..1 MS
* content.attachment.url 1..1
* content.attachment.url ^short = "The document is referenced by this url, contained in the DocumentReference"
* content.attachment.creation 0..1 MS

Profile:        PublishDocumentReferenceStrict
Parent:         PublishDocumentReference
Id:             PublishDocumentReferenceStrict
Title:          "DocumentReference for sending the report with strict validation"
Description:    """
A profile on the DocumentReference resource with publication constraints: 
- must be status current
- must have an identifier
- uses attachment.url to carry the document as a contained resource
- strict validation according to http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict
"""
* contained[document] ^type.profile = Canonical(ChElmDocumentStrict)

ValueSet: ChElmStatus
Id: ch-elm-status
Title: "CH ELM Status"
Description: "This CH ELM value set includes the codes for the laboratory specialities."
* ^status = #active
* ^experimental = false

* $task-status#in-progress "In Progress"
* $task-status#failed "Failed"
* $task-status#completed "Completed"

Extension: ChExtElmStatus
Id: ch-ext-elm-status
Title: "Status of the processing of the document"
Description: "Extension to define the status of the processing of the document"

* ^context.type = #element
* ^context.expression = "DocumentReference"

* . ^definition = "Extension to define the status of the processing of the document"
* extension contains
    status 1..1 and
    outcome 0..1
* extension[status] only Extension
* extension[status] ^short = "Status of the processing of the document"
* extension[status].url only uri
* extension[status].valueCode 1..
* extension[status].valueCode only code
* extension[status].valueCode from $ch-elm-status (required)
* extension[status].valueCode ^short = "Code to indicate the status of the processing of the document"
* extension[outcome] ^short = "Timestamp of the authorship/data input"
* extension[outcome].url only uri
* extension[outcome].valueReference 1..
* extension[outcome].valueReference only Reference(OperationOutcome)
* extension[outcome].valueReference ^short = "reference to contained OperationOutcome if processing failed"
* extension[outcome].valueReference ^type.aggregation[0] = #contained
* url only uri

Profile:        PublishDocumentReferenceResponse
Parent:         DocumentReference
Id:             PublishDocumentReferenceResponse
Title:          "DocumentReference for  Publish Response"
Description:    """
A profile on the DocumentReference resource for the publication response: 
- must be status current
- must have an identifier
"""
* contained 0..1
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained contains OperationOutcome 0..1 MS
* contained[OperationOutcome] ^type.profile = Canonical(OperationOutcome)
* extension contains ChExtElmStatus named chextelmstatus 1..1
* modifierExtension 0..0
* identifier 1..1
* status 1..1
* status = http://hl7.org/fhir/document-reference-status#current
* docStatus 0..0
* date 1..1
* authenticator 0..1
* relatesTo 0..* MS
* description 0..1
* securityLabel 0..* MS

Instance: SearchParameter-ch-elm-status
InstanceOf: SearchParameter
Usage: #definition
* name = "elmstatus"
* description = "Status of the processing of the document referenced by the DocumentReference"
* status = #active
* code = #elm-status
* base = #DocumentReference
* type = #token
* expression = "DocumentReference.extension.where(url='http://fhir.ch/ig/ch-elm/StructureDefinition/ch-ext-elm-status').value"
* xpathUsage = #normal
* multipleAnd = true

Profile:        FindDocumentReferencesResponse
Parent:         Bundle
Id:             FindDocumentReferencesResponse
Title:          "Find Document References Response message"
Description:    "A profile on the Find Document References Response message"
* type = #searchset (exactly)
* total 1..
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry.fullUrl 1..
* entry contains DocumentReference 0..*
* entry[DocumentReference] ^short = "DocumentReference"
* entry[DocumentReference].resource 1..
* entry[DocumentReference].resource only PublishDocumentReferenceResponse