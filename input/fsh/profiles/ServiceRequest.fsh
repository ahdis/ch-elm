Profile: ChElmServiceRequestLaboratoryOrder
Parent: ChLabServiceRequestLaboratoryOrder
Id: ch-elm-servicerequest-laboratory-order
Title: "CH ELM ServiceRequest: Laboratory Order"
Description: "This CH ELM base profile constrains the ServiceRequest resource for the purpose of laboratory orders."
* . ^short = "CH ELM ServiceRequest: Laboratory Order"

* identifier 1..

* code 1..
* code only ChElmCodeableConcept

* basedOn only Reference(ChElmServiceRequestLaboratoryOrder)

* subject only Reference(ChElmPatient)

* specimen only Reference(ChElmSpecimen)

* requester 1..
* requester only Reference(ChElmPractitionerRole)
