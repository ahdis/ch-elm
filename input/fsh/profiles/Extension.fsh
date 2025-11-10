Extension: ChElmExtDepartment
Id: ch-elm-ext-department
Title: "CH ELM Extension: Department"
Description: "This CH ELM extension enables the representation of a department (name) of an organization directly in the resource Organization itself."
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* . ^short = "CH ELM Extension: Department"
* value[x] 1..
* value[x] only string
* valueString ^short = "Name of the department"
* valueString ^maxLength = 100

Extension: ChElmExtVctCode
Id: ch-elm-ext-vct-code
Title: "CH ELM Extension: VCT code"
Description: "This CH ELM extension enables to provide the VCT Code."
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* . ^short = "CH ELM Extension: VCT Code"
* value[x] 1..
* value[x] only string
* valueString ^short = "Name of the VCT Code"
* valueString ^maxLength = 20

Extension: ChElmExtHivCode
Id: ch-elm-ext-hiv-code
Title: "CH ELM Extension: HIV code"
Description: "This CH ELM extension enables to provide the HIV Code."
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* . ^short = "CH ELM Extension: HIV Code"
* obeys ch-elm-hiv-check
* value[x] 1..
* value[x] only string
* valueString ^short = "Name of the HIV code"
* valueString ^maxLength = 2