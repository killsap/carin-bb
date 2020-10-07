<table border="1"><tr><td><b>Field</b></td><td><b>Value</b></td></tr>
<tr><td>resourceType</td><td>
"ExplanationOfBenefit"
</td></tr>
<tr><td>id</td><td>
"EOBProfessional2UPMC"
</td></tr>
<tr><td>meta.profile[0]</td><td>"http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician"</td></tr>
<tr><td>meta.lastUpdated</td><td>
"2019-12-12T09:14:11+00:00"
</td></tr>
<tr><td>meta.source</td><td>
"Organization/Organization1UPMC"
</td></tr>
<tr><td>type.coding[0].code</td><td>
#professional
</td></tr>
<tr><td>type.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/claim-type"
</td></tr>
<tr><td>type.text</td><td>
"Professional"
</td></tr>
<tr><td>use</td><td>
"claim"
</td></tr>
<tr><td>identifier[0].type.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType"
</td></tr>
<tr><td>identifier[0].type.coding[0].code</td><td>
#uc
</td></tr>
<tr><td>identifier[0].type.text</td><td>
"Claim Number"
</td></tr>
<tr><td>identifier[0].system</td><td>
"https://www.upmchealthplan.com/fhir/EOBIdentifier"
</td></tr>
<tr><td>identifier[0].value</td><td>
01234567801-GNXYZ1230000010000010001
</td></tr>
<tr><td>status</td><td>
"active"
</td></tr>
<tr><td>patient.reference</td><td>
"Patient/Patient1UPMC"
</td></tr>
<tr><td>billablePeriod.start</td><td>
"2020-04-04T00:00:00-04:00"
</td></tr>
<tr><td>billablePeriod.end</td><td>
"2020-04-04T00:00:00-04:00"
</td></tr>
<tr><td>created</td><td>
"2020-04-29T00:00:00-04:00"
</td></tr>
<tr><td>insurer.reference</td><td>
"Organization/Organization1UPMC"
</td></tr>
<tr><td>insurer.display</td><td>
"UPMC Health Plan"
</td></tr>
<tr><td>provider.reference</td><td>
"Organization/Organization2UPMC"
</td></tr>
<tr><td>payee.type.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/payeetype"
</td></tr>
<tr><td>payee.type.coding[0].code</td><td>
#provider
</td></tr>
<tr><td>payee.type.text</td><td>
"Provider"
</td></tr>
<tr><td>payee.party.reference</td><td>
"Organization/Organization2UPMC"
</td></tr>
<tr><td>outcome</td><td>
"complete"
</td></tr>
<tr><td>supportingInfo[0].sequence</td><td>
1
</td></tr>
<tr><td>supportingInfo[0].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType"
</td></tr>
<tr><td>supportingInfo[0].category.coding[0].code</td><td>
#billingnetworkcontractingstatus
</td></tr>
<tr><td>supportingInfo[0].code.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus"
</td></tr>
<tr><td>supportingInfo[0].code.coding[0].code</td><td>
#contracted
</td></tr>
<tr><td>supportingInfo[0].code.coding[0].display</td><td>
"Contracted"
</td></tr>
<tr><td>supportingInfo[0].code.text</td><td>
"Indicates the provider was contracted for the service"
</td></tr>
<tr><td>diagnosis[0].sequence</td><td>
1
</td></tr>
<tr><td>diagnosis[0].diagnosisCodeableConcept.coding[0].system</td><td>
"http://hl7.org/fhir/sid/icd-10-cm"
</td></tr>
<tr><td>diagnosis[0].diagnosisCodeableConcept.coding[0].code</td><td>
#X11.111
</td></tr>
<tr><td>diagnosis[0].diagnosisCodeableConcept.text</td><td>
"Description for X11.111"
</td></tr>
<tr><td>diagnosis[0].type[0].coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/ex-diagnosistype"
</td></tr>
<tr><td>diagnosis[0].type[0].coding[0].code</td><td>
#principal
</td></tr>
<tr><td>diagnosis[0].type[0].text</td><td>
"principal"
</td></tr>
<tr><td>procedure[0].sequence</td><td>
1
</td></tr>
<tr><td>procedure[0].type[0].coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/ex-procedure-type"
</td></tr>
<tr><td>procedure[0].type[0].coding[0].code</td><td>
#primary
</td></tr>
<tr><td>procedure[0].type[0].text</td><td>
"Primary procedure"
</td></tr>
<tr><td>procedure[0].date</td><td>
"2020-04-04T00:00:00-04:00"
</td></tr>
<tr><td>procedure[0].procedureCodeableConcept.coding[0].system</td><td>
"http://www.cms.gov/Medicare/Coding/ICD10"
</td></tr>
<tr><td>procedure[0].procedureCodeableConcept.coding[0].code</td><td>
#11111
</td></tr>
<tr><td>procedure[0].procedureCodeableConcept.text</td><td>
"Description for 11111"
</td></tr>
<tr><td>insurance[0].focal</td><td>
"true"
</td></tr>
<tr><td>insurance[0].coverage.reference</td><td>
"Coverage/Coverage2UPMC"
</td></tr>
<tr><td>item[0].sequence</td><td>
1
</td></tr>
<tr><td>item[0].productOrService.coding[0].system</td><td>
"http://www.ama-assn.org/go/cpt"
</td></tr>
<tr><td>item[0].productOrService.coding[0].code</td><td>
#11111
</td></tr>
<tr><td>item[0].servicedPeriod.start</td><td>
"2020-04-04T00:00:00-04:00"
</td></tr>
<tr><td>item[0].servicedPeriod.end</td><td>
"2020-04-04T00:00:00-04:00"
</td></tr>
<tr><td>item[0].locationCodeableConcept.coding[0].system</td><td>
"https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set"
</td></tr>
<tr><td>item[0].locationCodeableConcept.coding[0].code</td><td>
#02
</td></tr>
<tr><td>item[0].locationCodeableConcept.text</td><td>
"Telehealth"
</td></tr>
<tr><td>item[0].adjudication[0].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication"
</td></tr>
<tr><td>item[0].adjudication[0].category.coding[0].code</td><td>
#memberliability
</td></tr>
<tr><td>item[0].adjudication[0].category.coding[0].display</td><td>
"Member liability"
</td></tr>
<tr><td>item[0].adjudication[0].category.text</td><td>
"The amount of the member's liability."
</td></tr>
<tr><td>item[0].adjudication[0].amount.value</td><td>
0
</td></tr>
<tr><td>item[0].adjudication[0].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[1].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>item[0].adjudication[1].category.coding[0].code</td><td>
#submitted
</td></tr>
<tr><td>item[0].adjudication[1].category.coding[0].display</td><td>
"Submitted Amount"
</td></tr>
<tr><td>item[0].adjudication[1].category.text</td><td>
"The total submitted amount for the claim or group or line item."
</td></tr>
<tr><td>item[0].adjudication[1].amount.value</td><td>
59
</td></tr>
<tr><td>item[0].adjudication[1].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[2].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>item[0].adjudication[2].category.coding[0].code</td><td>
#copay
</td></tr>
<tr><td>item[0].adjudication[2].category.coding[0].display</td><td>
"CoPay"
</td></tr>
<tr><td>item[0].adjudication[2].category.text</td><td>
"Patient Co-Payment"
</td></tr>
<tr><td>item[0].adjudication[2].amount.value</td><td>
0
</td></tr>
<tr><td>item[0].adjudication[2].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[3].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>item[0].adjudication[3].category.coding[0].code</td><td>
#eligible
</td></tr>
<tr><td>item[0].adjudication[3].category.coding[0].display</td><td>
"Eligible Amount"
</td></tr>
<tr><td>item[0].adjudication[3].category.text</td><td>
"Amount of the change which is considered for adjudication."
</td></tr>
<tr><td>item[0].adjudication[3].amount.value</td><td>
59
</td></tr>
<tr><td>item[0].adjudication[3].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[4].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>item[0].adjudication[4].category.coding[0].code</td><td>
#deductible
</td></tr>
<tr><td>item[0].adjudication[4].category.coding[0].display</td><td>
"Deductible"
</td></tr>
<tr><td>item[0].adjudication[4].category.text</td><td>
"Amount deducted from the eligible amount prior to adjudication."
</td></tr>
<tr><td>item[0].adjudication[4].amount.value</td><td>
0
</td></tr>
<tr><td>item[0].adjudication[4].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[5].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>item[0].adjudication[5].category.coding[0].code</td><td>
#benefit
</td></tr>
<tr><td>item[0].adjudication[5].category.coding[0].display</td><td>
"Benefit Amount"
</td></tr>
<tr><td>item[0].adjudication[5].category.text</td><td>
"Amount payable under the coverage"
</td></tr>
<tr><td>item[0].adjudication[5].amount.value</td><td>
59
</td></tr>
<tr><td>item[0].adjudication[5].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[6].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication"
</td></tr>
<tr><td>item[0].adjudication[6].category.coding[0].code</td><td>
#noncovered
</td></tr>
<tr><td>item[0].adjudication[6].category.coding[0].display</td><td>
"Noncovered"
</td></tr>
<tr><td>item[0].adjudication[6].category.text</td><td>
"The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
</td></tr>
<tr><td>item[0].adjudication[6].amount.value</td><td>
0
</td></tr>
<tr><td>item[0].adjudication[6].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[7].category.coding[0].code</td><td>
#outofnetwork
</td></tr>
<tr><td>item[0].adjudication[7].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus"
</td></tr>
<tr><td>total[0].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>total[0].category.coding[0].code</td><td>
#submitted
</td></tr>
<tr><td>total[0].category.coding[0].display</td><td>
"Submitted Amount"
</td></tr>
<tr><td>total[0].category.text</td><td>
"The total submitted amount for the claim or group or line item."
</td></tr>
<tr><td>total[0].amount.value</td><td>
59
</td></tr>
<tr><td>total[0].amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[1].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>total[1].category.coding[0].code</td><td>
#eligible
</td></tr>
<tr><td>total[1].category.coding[0].display</td><td>
"Eligible Amount"
</td></tr>
<tr><td>total[1].category.text</td><td>
"Amount of the change which is considered for adjudication."
</td></tr>
<tr><td>total[1].amount.value</td><td>
59
</td></tr>
<tr><td>total[1].amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[2].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>total[2].category.coding[0].code</td><td>
#deductible
</td></tr>
<tr><td>total[2].category.coding[0].display</td><td>
"Deductible"
</td></tr>
<tr><td>total[2].category.text</td><td>
"Amount deducted from the eligible amount prior to adjudication."
</td></tr>
<tr><td>total[2].amount.value</td><td>
0
</td></tr>
<tr><td>total[2].amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[3].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>total[3].category.coding[0].code</td><td>
#copay
</td></tr>
<tr><td>total[3].category.coding[0].display</td><td>
"CoPay"
</td></tr>
<tr><td>total[3].category.text</td><td>
"Patient Co-Payment"
</td></tr>
<tr><td>total[3].amount.value</td><td>
0
</td></tr>
<tr><td>total[3].amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[4].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication"
</td></tr>
<tr><td>total[4].category.coding[0].code</td><td>
#noncovered
</td></tr>
<tr><td>total[4].category.coding[0].display</td><td>
"Noncovered"
</td></tr>
<tr><td>total[4].category.text</td><td>
"The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
</td></tr>
<tr><td>total[4].amount.value</td><td>
0
</td></tr>
<tr><td>total[4].amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[5].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>total[5].category.coding[0].code</td><td>
#benefit
</td></tr>
<tr><td>total[5].category.coding[0].display</td><td>
"Benefit Amount"
</td></tr>
<tr><td>total[5].category.text</td><td>
"Amount payable under the coverage"
</td></tr>
<tr><td>total[5].amount.value</td><td>
59
</td></tr>
<tr><td>total[5].amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[6].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication"
</td></tr>
<tr><td>total[6].category.coding[0].code</td><td>
#memberliability
</td></tr>
<tr><td>total[6].category.coding[0].display</td><td>
"Member liability"
</td></tr>
<tr><td>total[6].category.text</td><td>
"The amount of the member's liability."
</td></tr>
<tr><td>total[6].amount.value</td><td>
0
</td></tr>
<tr><td>total[6].amount.currency</td><td>
#USD
</td></tr>
</table>