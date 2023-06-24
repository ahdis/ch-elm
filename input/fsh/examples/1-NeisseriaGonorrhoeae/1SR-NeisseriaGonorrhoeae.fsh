Instance: 1SR-NeisseriaGonorrhoeae
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "1SR - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d4832dff-3e33-4c39-b5b3-2eb85f870e56"
* status = #active
* intent = #order
//* code = $loinc#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.text = "TBD"
* subject = Reference(1Pat-DM)
* specimen = Reference(1Spec-NeisseriaGonorrhoeae)


/*
Instance: Inline-Instance-for-IT-CDA2FHIR-17e2cad1-c3e3-4901-adb1-c35a0b82b883-10
InstanceOf: ServiceRequest
Usage: #inline
* id = "1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.9"
* identifier.value = "[NRE]"
* identifier.assigner.display = "Ministero delle Finanze"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #asap
* code = $loinc#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.text = "Microalbumin Massa/Volume in Urine"
* subject = Reference(urn:uuid:dc2b606f-3cf7-4711-a2ff-52da04b89e04)
* encounter = Reference(urn:uuid:195a7abc-d109-404a-9dc7-ad2e80bafc8a)
*/