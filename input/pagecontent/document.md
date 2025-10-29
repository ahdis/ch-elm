The CH ELM exchange format defines a FHIR document representing a coherent set of information specific to the transmission of laboratory data. This FHIR document is based on the [CH Lab report document](StructureDefinition-ch-elm-document.html) which is part of the [CH LAB-Report Project](index.html).

The exchange format expects a separate FHIR document per patient, organism and test performed.

The FHIR document consists of a bundle-resource of type "document" (the terms "FHIR document" and "Bundle" are synonymous in the context of the CH ELM project).

The bundle resource contains a consistent set of entries representing FHIR resources specific for the transmission of laboratory data:

<style>

   .first-table {
       width: 85%;  
       td:first-child {
       width: 1%;
       white-space: pre; 
}  
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    
    table, th, td {
         border: 1px solid silver;
         font-size: 12px;
         line-height: 1.4em;
         font-family: verdana;
         font-weight: normal;
         padding: 3px;
         vertical-align: top;
         overflow-wrap: break-word; 
    }

    th, td {
        text-align: left;
        vertical-align: top;
    }

    th {
        font-weight: bold;
        width: 25%; 
    }

    td {
        width: 25%; 
    }

</style>

<table class="first-table">
    <tr>
    <td colspan="2">{</td>
  </tr>
  <tr>
    <td colspan="2">"resourceType": "Bundle",</td>
  </tr>
<tr>
    <td colspan="2">"entry": [</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-composition.html">Composition</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>parameters like date, language, title, author, and referring to the different resources</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-diagnosticreport.html">DiagnosticReport</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>represents the laboratory report as a result of a lab order, with references to all other resources</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-patient.html">Patient</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the person from whom the specimen was taken</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-observation-results-laboratory.html">Observation</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>defines the analyzed organism with the laboratory test result-values, interpretation, and test execution date</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-specimen.html">Specimen</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the specimen material with collection date</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href="StructureDefinition-ch-elm-servicerequest-laboratory-order.html">ServiceRequest</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the lab order with the laboratory order ID, the requester, and performer of the laboratory test</td>
 </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-practitionerrole-orderer.html'>PractitionerRole</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the orderer of the laboratory test containing a practitioner and/or organization</td>
</tr>
<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-practitioner-orderer.html'>Practitioner</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the person ordering the laboratory test</td>
</tr>
<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-organization-orderer.html'>Organization</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;},</td>
    <td>the organization ordering the laboratory test</td>
</tr>
<tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;{<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"resourceType": "<a href='StructureDefinition-ch-elm-organization-lab.html'>Organization</a>"<br>&nbsp;&nbsp;&nbsp;&nbsp;}</td>
    <td>the performing laboratory</td>
</tr>
  <tr>
    <td colspan="6">]</td>
  </tr>
   <tr>
    <td colspan="7">}</td>
  </tr>
</table>

The FHIR document is generic and applicable for all types of organisms and reporting scenarios (use cases). For each resource within the FHIR document, a resource profile is defined to meet specific data needs depending on the context and use case.

### Resource profiles

Resource profiles are a way to customize and constrain FHIR resources to meet specific requirements depending on a particular context. These rules might restrict the allowable values for certain elements, specify additional mandatory elements, or define extensions to capture additional data beyond the standard FHIR resources. In the CH ELM Implementation Guide multiple profiles can exist based on the same FHIR resource.

Example: the FHIR resource «organization» is used to map the sender of the FHIR Document, the performing laboratory and the orderer of the laboratory test – each of which having its own profile.

The diagram [“Resource Overview”](profiles.html#overview) illustrates the connections between the individual resource-profiles of a FHIR document.

See the examples in chapter 2.2 to learn how to use the resource profiles for different use cases and data requirements.

### Example FHIR documents

#### Default scenario

##### Examples of basic FHIR documents (no additional codes for organism or specimen)

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
        <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Anthrax</td>
            <td>Bacillus anthracis Ag [Presence] in Specimen</td>
            <td>31726-3</td>
            <td>
                <a href="Bundle-38Doc-Anthrax.json.html">JSON</a>, 
                <a href="Bundle-38Doc-Anthrax.xml.html">XML</a>
            </td>
        </tr>       
        <tr>
            <td>Botulisms</td>
            <td>Clostridium botulinum toxin [Presence] in Specimen by Mouse bioassay</td>
            <td>33696-6</td>
            <td>
                <a href="Bundle-39Doc-Botulims.json.html">JSON</a>, 
                <a href="Bundle-39Doc-Botulims.xml.html">XML</a>
            </td>
        </tr>       
        <tr>
            <td>Brucellosis</td>
            <td>Brucella sp IgA Ab [Presence] in Serum</td>
            <td>101802-7</td>
            <td>
                <a href="Bundle-34Doc-Brucella.json.html">JSON</a>, 
                <a href="Bundle-34Doc-Brucella.xml.html">XML</a>
            </td>
        </tr>       
        <tr>
            <td>Campylobacteriosis</td>
            <td>Campylobacter coli+jejuni DNA [Presence] in Wound by NAA with probe detection</td>
            <td>103168-1</td>
            <td>
                <a href="Bundle-4Doc-Campylobacter.json.html">JSON</a>, 
                <a href="Bundle-4Doc-Campylobacter.xml.html">XML</a>
            </td>
        </tr>       
        <tr>
            <td>Chikungunya fever</td>
            <td>Chikungunya virus RNA [Presence] in Urine by NAA with probe detection</td>
            <td>86515-4</td>
             <td>
                <a href="Bundle-24Doc-Chikungunya.json.html">JSON</a>, 
                <a href="Bundle-24Doc-Chikungunya.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Cholera</td>
            <td>Vibrio cholerae toxin ctx gene [Presence] in Specimen by NAA with probe detection</td>
            <td>53942-9</td>
             <td>
                <a href="Bundle-20Doc-Vibrio-cholerae.json.html">JSON</a>, 
                <a href="Bundle-20Doc-Vibrio-cholerae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Covid-19</td>
            <td>SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory system specimen by NAA with probe detection</td>
            <td>94500-6</td>
            <td>
                <a href="Bundle-7Doc-SARSCoV2.json.html">JSON</a>, 
                <a href="Bundle-7Doc-SARSCoV2.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Crimean-Congo</td>
            <td>Crimean-Congo hemorrhagic fever virus RNA [Presence] in Serum by NAA with probe detection</td>
            <td>88192-0</td>
            <td>
                <a href="Bundle-40Doc-Crimean-Congo.json.html">JSON</a>, 
                <a href="Bundle-40Doc-Crimean-Congo.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Creutzfeldt-Jakob Disease (CJD)</td>
            <td>14-3-3 Ag [Presence] in Cerebral spinal fluid</td>
            <td>31989-7</td>
            <td>
                <a href="Bundle-35Doc-CJD.json.html">JSON</a>, 
                <a href="Bundle-35Doc-CJD.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Dengue - reporting of high-level titer result</td>
            <td>Dengue virus IgG Ab [Titer] in Serum</td>
            <td>6811-4</td>
            <td>
                <a href="Bundle-16Doc-Dengue-Titer.json.html">JSON</a>, 
                <a href="Bundle-16Doc-Dengue-Titer.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Ebola</td>
            <td>Ebola virus RNA [Presence] in Blood by NAA with probe detection</td>
            <td>86518-8</td>
            <td>
                <a href="Bundle-41Doc-Ebola.json.html">JSON</a>, 
                <a href="Bundle-41Doc-Ebola.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Diphtheria</td>
            <td>Corynebacterium diphtheriae DNA [Presence] in Specimen by NAA with probe detection</td>
            <td>67561-1</td>
             <td>
                <a href="Bundle-18Doc-C-diphtheriae.json.html">JSON</a>, 
                <a href="Bundle-18Doc-C-diphtheriae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Enterohemorrhagic E. coli</td>
            <td>Escherichia coli shiga-like toxin 1 [Presence] in Stool by Immunoassay</td>
            <td>51940-5</td>
             <td>
                <a href="Bundle-59Doc-EHEC.json.html">JSON</a>, 
                <a href="Bundle-59Doc-EHEC.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Gonorrhoea</td>
            <td>Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture</td>
            <td>697-3</td>
           <td>
                <a href="Bundle-1Doc-NeisseriaGonorrhoeae.json.html">JSON</a>, 
                <a href="Bundle-1Doc-NeisseriaGonorrhoeae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Haemophilus influenzae disease</td>
            <td>Haemophilus influenzae B DNA [Presence] in Blood by NAA with probe detection</td>
            <td>53607-8</td>
           <td>
                <a href="Bundle-22Doc-H-influenzae.json.html">JSON</a>, 
                <a href="Bundle-22Doc-H-influenzae.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Hepatitis A</td>
            <td>Hepatitis A virus IgM Ab [Presence] in Serum</td>
            <td>22314-9</td>
           <td>
                <a href="Bundle-26Doc-HepatiteA.json.html">JSON</a>, 
                <a href="Bundle-26Doc-HepatiteA.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Hepatitis B</td>
            <td>Hepatitis B virus core IgM Ab [Presence] in Serum</td>
            <td>31204-1</td>
            <td>
                <a href="Bundle-8Doc-HepatiteB.json.html">JSON</a>, 
                <a href="Bundle-8Doc-HepatiteB.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Hepatitis C</td>
            <td>Hepatitis C virus Ab [Presence] in Serum by Immunoblot</td>
            <td>5199-5</td>
            <td>
                <a href="Bundle-9Doc-HepatiteC.json.html">JSON</a>, 
                <a href="Bundle-9Doc-HepatiteC.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Hepatitis E</td>
            <td>Hepatitis E virus RNA [Presence] in Stool by NAA with probe detection</td>
            <td>91071-1</td>
           <td>
                <a href="Bundle-21Doc-HepatiteE.json.html">JSON</a>, 
                <a href="Bundle-21Doc-HepatiteE.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Influenza</td>
            <td>Influenza virus A RNA [Presence] in Nasopharynx by NAA with probe detection</td>
            <td>76078-5</td>
              <td>
                <a href="Bundle-6Doc-Influenza.json.html">JSON</a>, 
                <a href="Bundle-6Doc-Influenza.xml.html">XML</a>
            </td>
        </tr>
          <tr>
            <td>Lassa fever</td>
            <td>Lassa virus RNA [Presence] in Specimen by NAA with probe detection</td>
            <td>97646-4</td>
              <td>
                <a href="Bundle-42Doc-Lassa.json.html">JSON</a>, 
                <a href="Bundle-42Doc-Lassa.xml.html">XML</a>
            </td>
        </tr>
          <tr>
            <td>Listeriosis</td>
            <td>Listeria monocytogenes DNA [Presence] in Cerebral spinal fluid by NAA with non-probe detection</td>
            <td>82184-3</td>
              <td>
                <a href="Bundle-28Doc-Listeria-monocytogenes.json.html">JSON</a>, 
                <a href="Bundle-28Doc-Listeria-monocytogenes.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Malaria</td>
            <td>Plasmodium knowlesi DNA [Presence] in Blood by NAA with probe detection</td>
            <td>70568-1</td>
             <td>
                <a href="Bundle-11Doc-Malaria.json.html">JSON</a>, 
                <a href="Bundle-11Doc-Malaria.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Marburg fever</td>
            <td>Marburg virus RNA [Presence] in Blood by NAA with probe detection</td>
            <td>86574-1</td>
             <td>
                <a href="Bundle-43Doc-Marburg.json.html">JSON</a>, 
                <a href="Bundle-43Doc-Marburg.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Measles - reporting of a seroconversion</td>
            <td>Measles virus IgG and IgM [Interpretation] in Serum</td>
            <td>44012-3</td>
              <td>
                <a href="Bundle-15Doc-Measles-Seroconversion.json.html">JSON</a>, 
                <a href="Bundle-15Doc-Measles-Seroconversion.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>MERS</td>
            <td>Middle East respiratory syndrome coronavirus (MERS-CoV) RNA [Presence] in Respiratory system specimen by NAA with probe detection</td>
            <td>94501-4</td>
             <td>
                <a href="Bundle-44Doc-Mers-CoV.json.html">JSON</a>, 
                <a href="Bundle-44Doc-Mers-CoV.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Plague</td>
            <td>Yersinia pestis [Presence] in Specimen by Organism specific culture</td>
            <td>33685-9</td>
            <td>
                <a href="Bundle-46Doc-Yersinia-pestis.json.html">JSON</a>, 
                <a href="Bundle-46Doc-Yersinia-pestis.json.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Pneumococcal disease</td>
            <td>Streptococcus pneumoniae Ag [Presence] in Cerebral spinal fluid</td>
            <td>20489-1</td>
            <td>
                <a href="Bundle-19Doc-S-pneumoniae.json.html">JSON</a>, 
                <a href="Bundle-19Doc-S-pneumoniae.json.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Poliomyelitis</td>
            <td>Polio virus identified in Specimen by Organism specific culture</td>
            <td>73907-8</td>
            <td>
                <a href="Bundle-54Doc-Poliomyelitis.json.html">JSON</a>, 
                <a href="Bundle-54Doc-Poliomyelitis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Rabies</td>
            <td>Rabies virus neutralizing antibody [Presence] in Serum by Neutralization test</td>
            <td>70858-6</td>
            <td>
                <a href="Bundle-55Doc-Tollwut.json.html">JSON</a>, 
                <a href="Bundle-55Doc-Tollwut.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Rubella - reporting of a seroconversion</td>
            <td>Rubella virus IgG Ab [Interpretation] in Serum</td>
            <td>20458-6</td>
            <td>
                <a href="Bundle-29Doc-Rubella.json.html">JSON</a>, 
                <a href="Bundle-29Doc-Rubella.json.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Rubella - reporting of an avidity</td>
            <td>Rubella virus IgG Ab avidity [Ratio] in Serum by Immunoassay</td>
            <td>52986-7</td>
            <td>
                <a href="Bundle-32Doc-Rubella-avidity.json.html">JSON</a>, 
                <a href="Bundle-32Doc-Rubella-avidity.json.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>SARS</td>
            <td>SARS coronavirus RNA [Presence] in Specimen by NAA with probe detection</td>
            <td>41458-1</td>
            <td>
                <a href="Bundle-45Doc-Sars-CoV.json.html">JSON</a>, 
                <a href="Bundle-45Doc-Sars-CoV.json.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Smallpox</td>
            <td>Variola virus DNA [Presence] in Specimen by NAA with probe detection</td>
            <td>41856-6</td>
            <td>
                <a href="Bundle-47Doc-Variola.json.html">JSON</a>, 
                <a href="Bundle-47Doc-Variola.json.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Tick - borne encephalitis</td>
            <td>Tick - borne encephalitis virus RNA [Presence] in Specimen by NAA with probe detection</td>
            <td>97920-3</td>
             <td>
                <a href="Bundle-25Doc-Tick-borne-encephalitis.json.html">JSON</a>, 
                <a href="Bundle-25Doc-Tick-borne-encephalitis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Trichinellosis</td>
            <td>Trichinella spiralis [Presence] in Tissue by Light microscopy</td>
            <td>23499-7</td>
            <td>
                <a href="Bundle-56Doc-Trichinella-spiralis.json.html">JSON</a>, 
                <a href="Bundle-56Doc-Trichinella-spiralis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Tuberculosis</td>
            <td>Mycobacterium sp identified in Bronchial specimen by Organism specific culture</td>
            <td>9823-6</td>
            <td>
                <a href="Bundle-65Doc-Tuberculosis.json.html">JSON</a>, 
                <a href="Bundle-65Doc-Tuberculosis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Yellow fever</td>
            <td>Yellow fever virus IgM Ab [Presence] in Serum</td>
            <td>41216-3</td>
            <td>
                <a href="Bundle-51Doc-Gelbfieber.json.html">JSON</a>, 
                <a href="Bundle-51Doc-Gelbfieber.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Zika fever</td>
            <td>Zika virus IgM Ab [Presence] in Serum by Immunofluorescence</td>
            <td>82731-1</td>
             <td>
                <a href="Bundle-37Doc-Zika.json.html">JSON</a>, 
                <a href="Bundle-37Doc-Zika.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>


##### Example of a SNOMED CT code instead of a LOINC code in observation.code

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
      <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>SNOMED CT observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Carbapenemase-producing Enterobacteriaceae</td>
            <td>Carbapenemase-producing Enterobacteriaceae (organism)</td>
            <td>734351004</td>
              <td>
                <a href="Bundle-3Doc-CPE.json.html">JSON</a>, 
                <a href="Bundle-3Doc-CPE.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Syphilis</td>
            <td>Treponema pallidum (organism)</td>
            <td>72904005</td>
            <td>
                <a href="Bundle-5Doc-TreponemaPallidum.json.html">JSON</a>, 
                <a href="Bundle-5Doc-TreponemaPallidum.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>HIV</td>
            <td>Human immunodeficiency virus type I (organism)</td>
            <td>89293008</td>
            <td>
                <a href="Bundle-49Doc-HIV.json.html">JSON</a>, 
                <a href="Bundle-49Doc-HIV.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

##### Example of an organism specification

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
          <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Hanta fever</td>
            <td>Hantavirus RNA [Presence] in Blood by NAA with probe detection</td>
            <td>18725-2</td>
            <td>
                <a href="Bundle-52Doc-Hantavirus.json.html">JSON</a>, 
                <a href="Bundle-52Doc-Hantavirus.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Influenza A new subtype</td>
            <td>Influenza virus A hemagglutinin type RNA [Identifier] in Specimen by NAA with probe detection</td>
            <td>59423-4</td>
            <td>
                <a href="Bundle-53Doc-InfluenzaHxNy.json.html">JSON</a>, 
                <a href="Bundle-53Doc-InfluenzaHxNy.xml.html">XML</a>
            </td>
        </tr>        
        <tr>
            <td>Legionellosis</td>
            <td>Legionella sp Ag [Presence] in Urine</td>
            <td>32781-7</td>
            <td>
                <a href="Bundle-10Doc-Legionella.json.html">JSON</a>, 
                <a href="Bundle-10Doc-Legionella.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Paratyphoid fever</td>
            <td>Salmonella sp [Presence] in Stool by Culture</td>
            <td>82301-3</td>
             <td>
                <a href="Bundle-36Doc-Salmonella-paratyphi.json.html">JSON</a>, 
                <a href="Bundle-36Doc-Salmonella-paratyphi.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Salmonellosis</td>
            <td>Salmonella sp DNA [Presence] in Specimen by NAA with probe detection</td>
            <td>49612-5</td>
             <td>
                <a href="Bundle-30Doc-Salmonella-enteritidis.json.html">JSON</a>, 
                <a href="Bundle-30Doc-Salmonella-enteritidis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Shigellosis</td>
            <td>Shigella sp [Presence] in Specimen by Organism specific culture</td>
            <td>46454-5</td>
             <td>
                <a href="Bundle-13Doc-Shigella.json.html">JSON</a>, 
                <a href="Bundle-13Doc-Shigella.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Tularaemia - with optional organism specification</td>
            <td>Francisella tularensis Ag [Presence] in Serum</td>
            <td>31828-7</td>
          <td>
                <a href="Bundle-23Doc-F-tularensis.json.html">JSON</a>, 
                <a href="Bundle-23Doc-F-tularensis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>West-Nile-Fever</td>
            <td>Virus identified in Specimen by Culture</td>
            <td>6584-7</td>
            <td>
                <a href="Bundle-57Doc-West-Nile.json.html">JSON</a>, 
                <a href="Bundle-57Doc-West-Nile.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

##### Example of a specimen specification

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
          <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Chlamydiosis</td>
            <td>Chlamydia trachomatis [Presence] in Specimen by Organism specific culture</td>
            <td>6349-5</td>
            <td>
                <a href="Bundle-2Doc-ChlamydiaTrachomatis.json.html">JSON</a>, 
                <a href="Bundle-2Doc-ChlamydiaTrachomatis.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Mpox</td>
            <td>Mpox virus DNA [Presence] in Specimen by NAA with probe detection</td>
            <td>100383-9</td>
             <td>
                <a href="Bundle-12Doc-Mpox.json.html">JSON</a>, 
                <a href="Bundle-12Doc-Mpox.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

##### Example of a VCT Patient with specimen specification

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
          <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Chlamydiosis</td>
            <td>Chlamydia trachomatis [Presence] in Specimen by Organism specific culture</td>
            <td>6349-5</td>
           <td>
                <a href="Bundle-2Doc-ChlamydiaTrachomatis-Vct.json.html">JSON</a>, 
                <a href="Bundle-2Doc-ChlamydiaTrachomatis-Vct.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

##### Example of quantity, ratio or text observation values (non-coded)

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
          <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>HIV</td>
            <td>HIV 1 RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection</td>
            <td>62469-2</td>
           <td>
                <a href="Bundle-50Doc-HIV-viremia.json.html">JSON</a>, 
                <a href="Bundle-50Doc-HIV-viremia.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Mpox</td>
            <td>Mpox virus clade [Type] in Specimen by Sequencing</td>
            <td>101003-2</td>
           <td>
                <a href="Bundle-48Doc-Mpox-Clade.json.html">JSON</a>, 
                <a href="Bundle-48Doc-Mpox-Clade.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Q-fever</td>
            <td>Coxiella burnetii phase 2 IgG Ab [Titer] in Serum</td>
            <td>9709-7</td>
           <td>
                <a href="Bundle-58Doc-Coxiella.json.html">JSON</a>, 
                <a href="Bundle-58Doc-Coxiella.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Salmonellosis</td>
            <td>Salmonella sp antigenic formula [Identifier] in Isolate by Agglutination   </td>
            <td>56475-7</td>
           <td>
                <a href="Bundle-33Doc-Salmonella-valueString.json.html">JSON</a>, 
                <a href="Bundle-33Doc-Salmonella-valueString.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>


#### Broker scenario

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Gonorrhoea</td>
            <td>Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture</td>
            <td>697-3</td>
             <td>
                <a href="Bundle-1bDoc-NeisseriaGonorrhoeae.json.html">JSON</a>, 
                <a href="Bundle-1bDoc-NeisseriaGonorrhoeae.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

#### Example withh minimal practitioner orderer information (only name, plz, city)

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Gonorrhoea</td>
            <td>Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture</td>
            <td>697-3</td>
             <td>
                <a href="Bundle-1cDoc-NeisseriaGonorrhoeae.json.html">JSON</a>, 
                <a href="Bundle-1cDoc-NeisseriaGonorrhoeae.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

#### Scenario for confirmation tests

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Meningococcal disease - initial observation by primary laboratory</td>
            <td>Microscopic observation [Identifier] in Cerebral spinal fluid by Gram stain</td>
            <td>14357-8</td>
            <td>
                <a href="Bundle-17Doc-Neisseria.json.html">JSON</a>, 
                <a href="Bundle-17Doc-Neisseria.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Meningococcal disease - confirmation test by reference laboratory</td>
            <td>Neisseria meningitidis [Presence] in Cerebral spinal fluid by Organism specific culture</td>
            <td>86581-6</td>
            <td>
                <a href="Bundle-14Doc-Neisseriameningitidis-confirmationtest.json.html">JSON</a>, 
                <a href="Bundle-14Doc-Neisseriameningitidis-confirmationtest.xml.html">XML</a>
            </td>
        </tr>
        <tr>
            <td>Meningococcal disease - confirmation test by reference laboratory with additional original order information</td>
            <td>Neisseria meningitidis [Presence] in Cerebral spinal fluid by Organism specific culture</td>
            <td>86581-6</td>
            <td>
                <a href="Bundle-14Doc-Neisseriameningitidis-confirmationtest-originalorder.json.html">JSON</a>, 
                <a href="Bundle-14Doc-Neisseriameningitidis-confirmationtest-originalorder.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

#### Microbial susceptibility tests set

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Tuberculosis</td>
            <td>Mycobacterial susceptibility panel by Method for Slow-growing mycobacteria</td>
            <td>29579-0</td>
            <td>
                <a href="Bundle-61Doc-Tb-Susceptibility.json.html">JSON</a>, 
                <a href="Bundle-61Doc-Tb-Susceptibility.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>

#### Genotyping

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Tuberculosis</td>
            <td>Mycobacterium tuberculosis complex resistance panel by Molecular genetics method</td>
            <td>94053-6</td>
            <td>
                <a href="Bundle-63Doc-Tb-Genotyping.json.html">JSON</a>, 
                <a href="Bundle-63Doc-Tb-Genotyping.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>


#### HIV recency

<table class="grid">
    <colgroup> 
        <col style="width:25%" /> 
        <col style="width:50%" /> 
        <col style="width:15%" /> 
        <col style="width:10%" /> 
    </colgroup> 
    <thead>
           <tr>
            <th>Disease</th>
            <th>observation.code display</th>
            <th>LOINC observation.code<br />(leading code)</th>
            <th>FHIR Document</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>HIV recency</td>
            <td>HIV 1 and 2 IgG Ab [Identifier] in Serum or Plasma by Immunoblot</td>
            <td>77685-6</td>
            <td>
                <a href="Bundle-66Doc-HivRecency.json.html">JSON</a>, 
                <a href="Bundle-66Doc-HivRecency.xml.html">XML</a>
            </td>
        </tr>
    </tbody>
</table>