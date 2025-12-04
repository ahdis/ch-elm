Instance: 1-DocumentReferenceStrict
InstanceOf: PublishDocumentReferenceStrict
Usage: #example
Title: "Publish 1Doc-NeisseriaGonorrhoeae (Strict)"
Description: "Reporting Neisseria Gonorhoeae"
* contained = 1Doc-NeisseriaGonorrhoeae
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.language = #de-CH
* content.attachment.url = "#1Doc-NeisseriaGonorrhoeae" 

Instance: Publish-1Doc-NeisseriaGonorrhoeae
InstanceOf: PublishDocumentReference
Usage: #example
Title: "Publish 1Doc-NeisseriaGonorrhoeae"
Description: "Reporting Neisseria Gonorhoeae"
* contained = 1Doc-NeisseriaGonorrhoeae
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.language = #de-CH
* content.attachment.url = "#1Doc-NeisseriaGonorrhoeae" 

Instance: 1-DocumentReferenceResponseInProgress
InstanceOf: PublishDocumentReferenceResponse
Usage: #example
Title: "Publish Response for Neisseria Gonorhoeae in progress"
Description: "Reporting Neisseria Gonorhoeae"
* extension[chextelmstatus].extension[status].url = "status"
* extension[chextelmstatus].extension[status].valueCode = $task-status#in-progress
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-10T13:30:18.668+02:00"
* status = #current
* date = "2023-10-10T13:30:18.668+02:00"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.url = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"

Instance: 1-DocumentReferenceResponseCompleted
InstanceOf: PublishDocumentReferenceResponse
Usage: #example
Title: "Publish Response for Neisseria Gonorhoeae completed"
Description: "Reporting Neisseria Gonorhoeae"
* extension[chextelmstatus].extension[status].url = "status"
* extension[chextelmstatus].extension[status].valueCode = $task-status#completed
* meta.versionId = "2"
* meta.lastUpdated = "2023-10-10T13:30:23.00+02:00"
* status = #current
* date = "2023-10-10T13:30:18.668+02:00"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.url = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"

Instance: 1-OperationOutcome
InstanceOf: OperationOutcome
Usage: #inline
* issue[0].severity = #error
* issue[0].code = #not-supported
* issue[0].details.text = "unknown type of laboratory report"

Instance: 1-DocumentReferenceResponseFailed
InstanceOf: PublishDocumentReferenceResponse
Usage: #example
Title: "Publish Response for Neisseria Gonorhoeae failed"
Description: "Reporting Neisseria Gonorhoeae"
* contained[OperationOutcome] = 1-OperationOutcome
* extension[chextelmstatus].extension[status].url = "status"
* extension[chextelmstatus].extension[status].valueCode = $task-status#failed
* extension[chextelmstatus].extension[outcome].url = "outcome"
* extension[chextelmstatus].extension[outcome].valueReference.reference = "#1-OperationOutcome"
* meta.versionId = "2"
* meta.lastUpdated = "2023-10-10T13:30:25.00+02:00"
* date = "2023-10-10T13:30:18.668+02:00"
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.url = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"

Instance:   ex-findDocumentReferencesResponse
InstanceOf: FindDocumentReferencesResponse
Title:      "Example of a Find Document References Response Message"
Description: "Example of a Find Document References Bundle Search Set with a single DocumentReference"
Usage: #example
* type = #searchset
* link[0].relation = "self"
* link[0].url = "http://test.fhir.net/R4/fhir/DocumentReference?_lastUpdate=gt2023-10-02T08:00:00+02:00&elm-status=failed"
* total = 1
* timestamp = 2023-10-10T14:30:18.668+02:00
* entry[0].fullUrl = "http://test.fhir.net/R4/fhir/DocumentReference/1-DocumentReferenceResponseFailed"
* entry[0].resource = 1-DocumentReferenceResponseFailed