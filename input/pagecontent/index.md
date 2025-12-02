### Introduction
CH ELM is a project of the Swiss Federal Office of Public Health (FOPH), Communicable Diseases Division, to enable laboratories to send their observations of notifiable communicable infectious diseases to the FOPH electronically.
A report is created as a specialized Clinical Document based on the HL7® FHIR® standard. This [FHIR document](document.html) is sent to the FOPH by a [FHIR RESTful web API endpoint](api.html). CH ELM derives from the [Swiss implementation guides](https://fhir.ch/) and the [European laboratory project](https://hl7.eu/fhir/laboratory/) (see [graphical overview](#dependency-overview)).

The expected content of the FHIR document, based on the ordinance of the Federal Office of Public Health ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)), is defined in the [logical model](StructureDefinition-LaboratoryReport.html). A [mapping](StructureDefinition-LaboratoryReport-mappings.html#mappings-for-ch-elm-laboratory-report-to-fhir-hl7-org-fhir-r4) shows how to access the data from the FHIR document. In addition, further documentation for specific topics can be found on the [guidance](guidance.html) page and the [use cases](usecase.html) describe the different scenarios with respective examples for specific organisms.

<div markdown="1" class="stu-note">

The specification herewith documented is work in progress. No liability can be inferred from the use or misuse of this specification, or its consequences.

[Changelog](changelog.html) with significant changes, open and closed issues.

</div>

**Download**: You can download this implementation guide in [npm format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Implementation Support for Laboratories

This guide supports you as a laboratory in the following way:
- [Use cases](usecase.html) describe the different scenarios with respective example reports for specific organisms, e.g. for Neisseria gonorrhoeae in [xml](Bundle-1Doc-NeisseriaGonorrhoeae.xml.html) or [json](Bundle-1Doc-NeisseriaGonorrhoeae.json.html), you choose if you want to provide the FHIR laboratory report in xml or json format.
- What needs to be defined in the laboratory report is defined in [FHIR document](document.html), profiles define the constraints on FHIR resources which need to be included in the report, see the overview [here](profiles.html).
- The data elements defined by the ordinance of the Federal Office of Public Health (FOPH) for the report are defined in the [logical model](StructureDefinition-LaboratoryReport.html) and are then [mapped](StructureDefinition-LaboratoryReport-mappings.html#mappings-for-ch-elm-laboratory-report-to-fhir-hl7-org-fhir-r4) to the FHIR document structure.  
- Value sets for the [terminology](terminology.html) are provided as FHIR resources which you can directly import from the [npm package](package.tgz).   
- The [laboratory report](document.html) is sent to the FOPH by a [FHIR RESTful web API endpoint](api.html).
- Further documentation for specific topics can be found on [guidance](guidance.html) and/or by contacting the FOPH directly.

[FHIR R4](https://hl7.org/fhir/R4/index.html) has a huge implementation community and offers various libraries to support the implementation of FHIR based solutions, for creating the FHIR document or providing a client for doing the FHIR API calls. For java we recommend [hapi-fhir](https://hapifhir.io/), for .NET [firely-net-sdk](https://github.com/FirelyTeam/firely-net-sdk), but there are also multiple other [options](https://confluence.hl7.org/display/FHIR/Open+Source+Implementations). If you have questions about general FHIR questions do not hesitate to ask in [chat.fhir.org](https://chat.fhir.org/).

To check if your report is valid to the requirements of this implementation guide you can check it with the [FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator) providing this [package](package.tgz) as a parameter and specifying the profile `http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict`.

Since the FHIR API is standardized you can test your client also against a public FHIR test server like [hapi](https://hapi.fhir.org/baseR4/swagger-ui/). 

If you have general feedback this implementation guide you find at the bottom a "Propose a change" link where you can raise an issue.

### Must Support
For the CH ELM exchange format, the [mustSupport](https://www.hl7.org/fhir/profiling.html#mustsupport) flag set to `true` has the following meaning:   
If the sending application has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be omitted.

### IP Statements
HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependencies

#### Dependency Overview
This overview illustrates the relevant dependencies of CH ELM to the [Swiss implementation guides](https://fhir.ch/) and the [European laboratory project](https://hl7.eu/fhir/laboratory/).

{% include ig-dependencies.svg %}
*Fig. 1: Dependency Overview*

#### Dependency Table
{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}