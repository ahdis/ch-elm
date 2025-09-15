Profile: ChElmServiceRequestLaboratoryOrder
Parent: ChLabReportServiceRequest
Id: ch-elm-servicerequest-laboratory-order
Title: "CH ELM ServiceRequest: Laboratory Order"
Description: "This CH ELM base profile constrains the ServiceRequest resource for the purpose of laboratory orders."
* . ^short = "CH ELM ServiceRequest: Laboratory Order"
* identifier 1..1
* identifier.value 1..
* identifier.value ^maxLength = 100
* basedOn only Reference(ChElmServicePreviousRequestLaboratoryOrder)
* requisition MS
* requisition ^short = "Original order identifier, use basedOn ServiceRequest identifier if additional order information is provided"
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


Profile: ChElmServicePreviousRequestLaboratoryOrder
Parent: ChLabReportServiceRequest
Id: ch-elm-servicerequest-previous-laboratory-order
Title: "CH ELM ServiceRequest: Laboratory Order"
Description: "This CH ELM base profile constrains the ServiceRequest resource for the purpose of the previous laboratory order."
* . ^short = "CH ELM ServiceRequest: Laboratory Order"
* status = #completed
* intent = #order
* identifier.extension contains $data-absent-reason named dataabsentreason 0..1
* subject only Reference(ChElmPatient)
* requester 1..
* requester only Reference(ChElmPractitionerRoleOrderer)
