CH ELM defines a RESTful web API based on FHIR to enable a laboratory to send and verify the processing of its reports. 

### Scope
The Send Report transaction provides a report from the laboratory to the FOPH.

After providing the report the laboratory shall verify through the API that the report has been successfully processed. 

### Actor Roles
**Actor:** Laboratory   
**Role:** Sends a report in the CH ELM document format and metadata to the FOPH and verifies that the report has been successfully processed.

**Actor:** FOPH   
**Role:** Accepts the report from the Document Source and processes the report in a later stage. 

<div>{% include PublishDocumentReference-seq.svg %}</div>

<br clear="all">

**Figure: Report Interactions**

### Referenced Standards
Release 4 of the [HL7® FHIR®](https://hl7.org/fhir/r4/index.html) standard.

### Send Report transaction

The Send report transaction passes a DocumentReference message from the laboratory to the FOPH, providing the report directly as a FHIR Bundle.

####  Send Report Message
This message uses the HTTP POST method on the DocumentReference endpoint to convey the metadata and the document as a FHIR DocumentReference.
See also the [CapabilityStatement](CapabilityStatement-ch-elm-documentrecipient.html) of the server.

##### Trigger Events

This method is invoked when the laboratory needs to submit one document to the FOPH. 

##### Message Semantics

The laboratory shall initiate a FHIR “create” action by sending an HTTP POST request method composed of a FHIR [Publish DocumentReference](StructureDefinition-PublishDocumentReference.html), with the document referenced in the `DocumentReference.content.attachment.url` element and provided as contained bundle. 

The media type of the HTTP body shall be either `application/fhir+json` or `application/fhir+xml`.

The message is sent to the DocumentReference at the base URL as defined in FHIR. See [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html) for the definition of “HTTP” access methods and “base”.

```http
POST http://[base]/DocumentReference HTTP/1.1
Content-Type: application/fhir+json
Accept: application/fhir+json

{
  "resourceType" : "DocumentReference",
  "contained" : [
    {
      "resourceType" : "Bundle",
      "id" : "1Doc-NeisseriaGonorrhoeae",
      "meta" : {
        "profile" : [
          "http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document",
          "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
        ]
      },
      "identifier" : {
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
      },
      "type" : "document"       
      // snip the rest of the bundle
    }
  ],
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
    }
  ],
  "status" : "current",
  "content" : [
    {
      "attachment" : {
        "language" : "de-CH",
        "url" : "#1Doc-NeisseriaGonorrhoeae"
      }
    }
  ]
}
```

###### DocumentReference Resources

DocumentReference needs to follow the [Publish DocumentReference Profile](StructureDefinition-PublishDocumentReference.html) Resource metadata requirements. See [example](DocumentReference-Publish-1Doc-NeisseriaGonorrhoeae.json.html).

When resources are `contained` they shall be contained using the FHIR contained method (see [http://hl7.org/fhir/R4/references.html#contained](http://hl7.org/fhir/R4/references.html#contained) ).

##### Expected Actions

The FOPH shall accept both media types `application/fhir+json` and `application/fhir+xml`.

On receipt of the  Publish Request Message, the FOPH shall extract the document from the DocumentReference.content.attachment.url and respond with one of the HTTP codes defined in the response [http://hl7.org/fhir/R4/http.html#ops](http://hl7.org/fhir/R4/http.html#ops). 


If the FOPH encounters any errors or if any validation fails, the FOPH shall return an error using a FHIR OperationOutcome.


####  Send Report Response Message

After sending the report (FHIR document) to the FOPH, an HTTP Status code is returned appropriate to the processing outcome, conforming to the create transaction specification requirements as specified in [http://hl7.org/fhir/R4/http.html#create](http://hl7.org/fhir/R4/http.html#create). 

If the FHIR document has passed the validation-process the returned response message body contains a DocumentReference-Resource with the FOPH-generated DocumentReference-ID and the status code [in-progress](https://fhir.ch/ig/ch-elm/DocumentReference-1-DocumentReferenceResponseInProgress.json.html). The DocumentReference-ID can be used to track the status of the document during the FOPH processing-steps. In case of a processing-issue, the status-code changes to [failed](https://fhir.ch/ig/ch-elm/DocumentReference-1-DocumentReferenceResponseFailed.json.html), if the document-processing is successful, the status-code changes to [completed](https://fhir.ch/ig/ch-elm/DocumentReference-1-DocumentReferenceResponseCompleted.json.html) (see also chapter [Response message - Message semantics](#message-semantics-3)).

“If the FHIR document is not valid, the returned response message body contains an OperationOutcome-Resource with information about the validation-errors. (The OperationOutcome contains neither a DocumentReference-ID nor a status-code).



##### Trigger Events

This message shall be sent when a success or error condition needs to be communicated. Success is only indicated once the document is received and validated to the FOPH Actor configuration. 

##### Message Semantics

To enable the laboratory to know the outcome of processing the transaction, and the identities assigned to the resources by the FOPH, the FOPH shall return the DocumentReference as created conforming to [Publish DocumentReference Response](StructureDefinition-PublishDocumentReferenceResponse.html). 

##### Expected Actions

The FOPH processes the results according to application-defined rules. 
	
*Important*: The laboratory shall afterwards check the status of the processing, see next message.

### Verifying processing state

The laboratory shall verify through the API that the reports have been successfully processed. The laboratory can either query the DocumentReference by id or query it with different search parameters.

#### Request Message

This message uses the search method parameterized query to obtain DocumentReference Resources from the FOPH. 

##### Trigger Events

When the laboratory needs to discover DocumentReference Resources matching various metadata parameters, it issues a request message. 

##### Message Semantics

The laboratory executes an HTTP search against the FOPHs DocumentReference URL. The search tar follows the FHIR HTTP specification, addressing the DocumentReference Resource [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html):

```
[base]/DocumentReference?<query>
```

If the id of the DocumentReference resource is known, it can be directly accessed by id instead of a query.

```
[base]/DocumentReference/id
```

This URL `[base]` is configurable by the FOPH and is subject to the following constraints: 

The `<query>` represents a series of encoded name-value pairs representing the filter for the query as well as control parameters to modify the behavior of the FOPH such as response format, or pagination.

The laboratory can use GET searches. 

###### Query Search Parameters

The laboratory may supply, and the FOPH shall be capable of processing, all query parameters listed below. All query parameter values shall be appropriately encoded per RFC3986 “percent” encoding rules. Note that percent encoding does restrict the character set to a subset of ASCII characters which is used for encoding all other characters used in the URL.

The parameters described below are optional. The FOPH must implement the parameters described below. The FOPH may choose to support additional query parameters beyond the subset listed below. Any additional query parameters supported shall be supported according to the core FHIR specification. Such additional parameters are considered out of scope for this transaction. Any additional parameters not supported should be ignored. See [http://hl7.org/fhir/R4/search.html#errors](http://hl7.org/fhir/R4/search.html#errors). 

**date**:
This parameter, of type date, specifies the time when the DocumentReference was created. See [http://hl7.org/fhir/R4/search.html#date](http://hl7.org/fhir/R4/search.html#date) for use of the date search type.

**_lastUpdate**:
The search parameter _lastUpdated can be used to select resources based on the last time they were changed. See [http://hl7.org/fhir/R4/search.html#lastUpdated](http://hl7.org/fhir/R4/search.html#lastUpdated]) for use of the _lastUpdate search type.

for date and _lastUpdate the following [prefixes](http://hl7.org/fhir/R4/search.html#prefix) for parameter are supported: eq,ne,gt,ge,lt, le

**identifier**:
This parameter, of type token, specifies an identifier for this DocumentReference and/or the contained document. The search results represent the results of a search on DocumentReference.identifier. 

**elm-status**:
This [parameter](SearchParameter-SearchParameter-ch-elm-status.html), of type token, specifies the status of the processing of the report at the FOPH. It can be either in-progress, failed or completed, see [ValueSet](ValueSet-ch-elm-status.html). Only one status per query is supported, you cannot query for multiple (e.g. failed, complete).

###### Managing Returned Resources 

**Sorting**

The client can indicate which order to return the results by using the parameter [_sort](http://hl7.org/fhir/R4/search.html#_sort), which can contain a comma-separated list of sort rules in priority order.
The following support parameters can be specified: **identifier**, **date**, **elm-status**, **_lastUpdated**. A prefix of '-' indicates decreasing order; in its absence, 
the parameter is applied in increasing order.

**Paging**

The parameter *_count* is defined as an instruction to the server regarding how many resources should be returned in a single [page](http://hl7.org/fhir/R4/search.html#count).

If _count has the value 0, this shall be treated the same as _summary=count: the server returns a bundle that reports the total number of resources that match in Bundle.total, but with no entries, and no prev/next/last links.

FOPH allows with the parameter page to directly query a specific page in the search result. The client can also follow the first, next, prev, last link in the Bundle search response.

###### Populating Expected Response Format

The FHIR standard provides encodings for responses as either XML or JSON. 


###### Example DocumentReference Search for error messages since a specific date

###### Example 
```
GET http://[base]/DocumentReference?_lastUpdate=gt2023-10-02T08:00:00+02:00&elm-status=failed
```

##### Actions

The FOPH shall process the query to discover the DocumentReference entries that match the search parameters given. 

#### Response Message

The FOPH returns a HTTP Status code appropriate to the processing as well as a Bundle of the matching DocumentReference Resources for the query, DocumentReference resource if the DocumentReference was accessed by id.

##### Trigger Events

The FOPH completed processing of the request message. 

##### Message Semantics

Based on the query results, the FOPH will either return an error or success. Guidance on handling Access Denied related to use of 200, 403 and 404 can be found in [ITI TF-2x: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations). 

When the FOPH needs to report an error, it shall use HTTP error response codes and should include a FHIR OperationOutcome with more details on the failure. See FHIR [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html) and [http://hl7.org/fhir/R4/operationoutcome.html](http://hl7.org/fhir/R4/operationoutcome.html).

If the query is processed successfully, whether or not any DocumentReference Resources are found, the HTTP status code shall be 200. The response message shall be a Bundle Resource containing zero or more DocumentReference Resources. 

The response shall adhere to the FHIR Bundle constraints [specified](StructureDefinition-FindDocumentReferencesResponse.html). 

[Example search response](Bundle-ex-findDocumentReferencesResponse.json.html).

###### DocumentReference Resource Contents

The response message body contains a DocumentReference-Resource with a reference to the contained OperationOutcome-Resource (validation messages) and a status-code indicating the status of the document processing: in-progress, failed, completed. The status “failed” indicates that the document could not be processed due to further conformity issues. Please note, that failed FHIR-documents are NOT inserted in our database and have to be corrected and re-submitted.

Example of such responses:
[in-progress](DocumentReference-1-DocumentReferenceResponseInProgress.json.html), [failed](DocumentReference-1-DocumentReferenceResponseFailed.json.html), [completed](DocumentReference-1-DocumentReferenceResponseCompleted.json.html).


####  Expected Actions

The laboratory shall process the results. It is in the responsibility of the laboratory to resubmit the failed responses. 

### Security Considerations

mTLS shall be used.
<div markdown="5" class="dragon">
During the pilot a TLS client certificate will be provided by the FOPH.
</div>
<p>&nbsp;</p>

### Endpoints

The following endpoints are defined:

**Integration System**: 
https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir

**Production System**: 
https://ws.infreport.bag.admin.ch/ch-elm/v1/fhir
