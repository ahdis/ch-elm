Profile: ChElmServiceRequestLaboratoryOrder
Parent: ChLabReportServiceRequest
Id: ch-elm-servicerequest-laboratory-order
Title: "CH ELM ServiceRequest: Laboratory Order"
Description: "This CH ELM base profile constrains the ServiceRequest resource for the purpose of laboratory orders."
* . ^short = "CH ELM ServiceRequest: Laboratory Order"
* identifier 1..1
* identifier.value 1..
* identifier.value ^maxLength = 100
* requisition MS
* requisition ^short = "Original order identifier"
* status = #completed
* intent = #order
* code 1..
* code only ChElmCodeableConcept
* code from ChElmResultsLaboratoryObservation (preferred)
* subject only Reference(ChElmPatient)
* specimen 1..1
* specimen only Reference(ChElmSpecimen)
* requester 1..
* requester only Reference(ChElmPractitionerRoleOrderer)
