Alias: $testscript-operation-codes = http://terminology.hl7.org/CodeSystem/testscript-operation-codes

RuleSet: Fixture(id, reference) 
* fixture.id = "{id}"
* fixture.autocreate = false
* fixture.autodelete = false
* fixture.resource = Reference({reference})

RuleSet: ActionOperationValidate(profile, fixtureId) 
* test.action[+].operation.type = $testscript-operation-codes#validate
* test.action[=].operation.description = "validate"
* test.action[=].operation.contentType = #application/fhir+json
* test.action[=].operation.encodeRequestUrl = true
* test.action[=].operation.params = "profile={profile}"
* test.action[=].operation.sourceId = "{fixtureId}"

RuleSet: ActionAssertResponseCodeOk 
* test.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test.action[=].assert.direction = #response
* test.action[=].assert.responseCode = "200"
* test.action[=].assert.warningOnly = false

RuleSet: ActionAssertFhirPath(description, fhirPath, value) 
* test.action[+].assert.description = "{description}"
* test.action[=].assert.expression = "{fhirPath}"
* test.action[=].assert.value = {value}
* test.action[=].assert.warningOnly = false

RuleSet: ActionAssertFhirPathTrue(description, fhirPath)
* insert ActionAssertFhirPath({description}, [[{fhirPath}]], [["true"]])


Instance: Test92-WarningBerUidGln
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test92-WarningBerUidGln"
* name = "Test92WarningBerUidGln"
* description = "Test92: Verify that warnings for incorrect BER, UID and GLN are raised"
* status = #active
* insert Fixture(inputdata, [[Binary/Test92-Bundle-WarningBerUidGln]])
* test.name = "Test92"
* test.description = "Test92: Verify that warnings for incorrect BER, UID and GLN are raised"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have no errors., [[issue.where(severity='error' or severity='fatal').count()=0]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: gln-modulus-10, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: gln-modulus-10:')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: gln-startswith76, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: gln-startswith76:')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: ber-length, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: ber-length')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: ber-modulus-11, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: ber-modulus-11')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: uidb-length, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: uidb-length')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: uidb-modulus-11, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: uidb-modulus-11')).count() = 1]])


Instance: Test93-Error-FullName-Influenca
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test93-Error-FullName-Influenca"
* name = "Test93ErrorFullNameInfluenca"
* description = "Test script to verify error if full name is provided by Influenca (must be initials)"
* status = #active
* insert Fixture(inputdata, [[Binary/Test93-DocumentReference-Error-FullName-Influenca]])
* test.name = "Test93"
* test.description = "Test script to verify error if full name is provided by Influenca (must be initials)"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/PublishDocumentReference, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have at least one error, [[issue.where(severity='error' or severity='fatal').count()>0]])
* insert ActionAssertFhirPathTrue(Check slicing fails, [[issue.where(severity='error' and diagnostics.startsWith('Slice \\'DocumentReference.contained:document\\': a matching slice is required, but not found')).count() > 0]])

Instance: Test94-Ignore-Source-Warning
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test94-Ignore-Source-Warning"
* name = "Test94IgnoreSourceWarning"
* description = "Test script to verify that warning Binding for path (.+) has no source, so can't be checked"
* status = #active
* insert Fixture(inputdata, [[DocumentReference/Publish-1Doc-NeisseriaGonorrhoeae]])
* test.name = "Test94"
* test.description = "Test script to verify that warning Binding for path (.+) has no source, so can't be checked"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/PublishDocumentReference, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have no errors., [[issue.where(severity='error' or severity='fatal').count()=0]])
* insert ActionAssertFhirPathTrue(Check slicing fails, [[issue.where(severity='information' and diagnostics.matches('Binding for path (.+) has no source, so can\\'t be checked')).count() = 0]])

Instance: Test95-Ignore-Observation-Interpretation-Codes-Warning
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test95-Ignore-Observation-Interpretation-Codes-Warning"
* name = "Test95IgnoreObservationInterpretationCodesWarning"
* description = "Test script to verify that warning None of the codings provided are in the value set 'Observation Interpretation Codes' is ignored"
* status = #active
* insert Fixture(inputdata, [[Bundle/15Doc-Measles-Seroconversion]])
* test.name = "Test95"
* test.description = "Test script to verify that warning None of the codings provided are in the value set 'Observation Interpretation Codes' is ignored"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have no errors., [[issue.where(severity='error' or severity='fatal').count()=0]])
* insert ActionAssertFhirPathTrue(Check warning ignored, [[issue.where(severity='warning' and diagnostics.matches('None of the codings provided are in the value set \\'Observation Interpretation Codes\\'(.+)')).count() = 0]])

Instance: Test96-Ignore-Slice-Patient-Eu-Lab-Information
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test96-Ignore-Slice-Patient-Eu-Lab-Information"
* name = "Test96IgnoreObservationInterpretationCodesInformation"
* description = "Test script to verify that Information This element does not match any known slice defined in the profile http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab is ignored"
* status = #active
* insert Fixture(inputdata, [[DocumentReference/Publish-2Doc-ChlamydiaTrachomatis-Vct]])
* test.name = "Test96"
* test.description = "Test script to verify that Information This element does not match any known slice defined in the profile http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab is ignored"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/PublishDocumentReference, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have no errors., [[issue.where(severity='error' or severity='fatal').count()=0]])
* insert ActionAssertFhirPathTrue(Check information ignored, [[issue.where(severity='information' and diagnostics.matches('This element does not match any known slice defined in the profile http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab(.+)')).count() = 0]])

Instance: Test97-CoaxiellaNoRatio
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test97-CoaxiellaNoRatio"
* name = "Test97CoaxiellaNoRatio"
* description = "Test97: Verify that error for missing ratio is raised"
* status = #active
* insert Fixture(inputdata, [[Binary/Test97-Bundle-CoaxiellaNoRatio]])
* test.name = "Test97"
* test.description = "Test97: Verify that error for missing ratio is raised"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have errors., [[issue.where(severity='error' or severity='fatal').count()>0]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: ch-elm-observation-profile-loinc, [[issue.where(diagnostics.matches('Constraint failed: ch-elm-observation-profile-loinc')).count() > 0]])

Instance: Test98-HivInvalidCode
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test98-HivInvalidCode"
* name = "Test98HivInvalidCode"
* description = "Test98: Verify that error for invalid hiv code is raised"
* status = #active
* insert Fixture(inputdata, [[Binary/Test98-Bundle-HivInvalidCode]])
* test.name = "Test98"
* test.description = "Test98: Verify that error for invalid hiv code is raised"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have errors., [[issue.where(severity='error' or severity='fatal').count()>0]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: ch-elm-hiv-check, [[issue.where(diagnostics.matches('Constraint failed: ch-elm-hiv-check')).count() > 0]])

Instance: Test99-CoaxiellaZeroDenominator
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test99-CoaxiellaZeroDenominator"
* name = "Test99CoaxiellaZeroDenominator"
* description = "Test99: Verify that error for denominator not positive is raised"
* status = #active
* insert Fixture(inputdata, [[Binary/Test99-Bundle-CoaxiellaZeroDenominator]])
* test.name = "Test99"
* test.description = "Test99: Verify that error for denominator not positive is raised"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have errors., [[issue.where(severity='error' or severity='fatal').count()>0]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: ch-elm-observation-profile-loinc, [[issue.where(diagnostics.matches('Constraint failed: ch-elm-observation-profile-loinc')).count() > 0]])

Instance: Test100-Kosovo
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test100-Kosovo"
* name = "Test100Kosovo"
* description = "Test100: Verify that XK iso country code is allowed for Kosovo"
* status = #active
* insert Fixture(inputdata, [[Binary/Test100-Bundle-Kosovo]])
* test.name = "Test100Kosovo"
* test.description = "Test100: Verify that XK iso country code is allowed for Kosovo"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have errors., [[issue.where(severity='error' or severity='fatal').count()=0]])

Instance: Test101-InvalidCountryCode
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test101-InvalidCountryCode"
* name = "Test101InvalidCountryCode"
* description = "Test101: Verify that XX raises an error for invalid country code"
* status = #active
* insert Fixture(inputdata, [[Binary/Test101-Bundle-InvalidCountryCode]])
* test.name = "Test101InvalidCountryCode"
* test.description = "Test101: Verify that XX raises an error for invalid country code"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have errors., [[issue.where(severity='error' or severity='fatal').count()>0]])
