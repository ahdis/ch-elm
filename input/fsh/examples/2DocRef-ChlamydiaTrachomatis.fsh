Instance: 2-DocumentReferenceStrict
InstanceOf: PublishDocumentReferenceStrict
Usage: #example
Title: "Publish 2Doc-ChlamydiaTrachomatis (Strict)"
Description: "Reporting Chlamydia Trachomatis"
* contained = 2Doc-ChlamydiaTrachomatis
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* content.attachment.language = #de-CH
* content.attachment.url = "#2Doc-ChlamydiaTrachomatis" 

Instance: 2-DocumentReference
InstanceOf: PublishDocumentReference
Usage: #example
Title: "Publish 2Doc-ChlamydiaTrachomatis"
Description: "Reporting Chlamydia Trachomatis"
* contained = 2Doc-ChlamydiaTrachomatis
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* content.attachment.language = #de-CH
* content.attachment.url = "#2Doc-ChlamydiaTrachomatis" 

Instance: 2-DocumentReferenceVctStrict
InstanceOf: PublishDocumentReferenceStrict
Usage: #example
Title: "Publish 2Doc-ChlamydiaTrachomatis with Patient VCT Code (Strict)"
Description: "Reporting Chlamydia Trachomatis"
* contained = 2Doc-ChlamydiaTrachomatis-Vct
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1301332d-6012-443f-9690-929132b2e155"
* content.attachment.language = #de-CH
* content.attachment.url = "#2Doc-ChlamydiaTrachomatis-Vct" 

Instance: Publish-2Doc-ChlamydiaTrachomatis-Vct
InstanceOf: PublishDocumentReference
Usage: #example
Title: "Publish 2Doc-ChlamydiaTrachomatis with Patient VCT Code"
Description: "Reporting Chlamydia Trachomatis"
* contained = 2Doc-ChlamydiaTrachomatis-Vct
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1cf9f2c3-7d6f-4b82-86ea-77b048bb4fdc"
* content.attachment.language = #de-CH
* content.attachment.url = "#2Doc-ChlamydiaTrachomatis-Vct" 