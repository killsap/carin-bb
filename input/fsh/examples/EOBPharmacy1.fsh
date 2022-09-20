Instance: EOBPharmacy1
InstanceOf: C4BBExplanationOfBenefitPharmacy
Description: "EOB Pharmacy Example 1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitPharmacy|2.0.0)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[uniqueclaimid].type = $C4BBIdentifierTypeCS#uc
* identifier[uniqueclaimid].value = "AW123412341234123412341234123412"
* identifier[uniqueclaimid].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#pharmacy
* type.text = "Pharmacy"
* use = #claim
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient2)
* billablePeriod.start = "2019-10-30"
* billablePeriod.end = "2019-10-31"
* provider = Reference(ProviderOrganization1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
* adjudication[billingnetworkstatus].category = C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[billingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork

* total[adjudicationamounttype][0].category = $C4BBAdjudicationCS#paidtoprovider
* total[adjudicationamounttype][0].category.text = "Payment Amount"
* total[adjudicationamounttype][0].amount.value = 620.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][1].category.text = "Submitted Amount"
* total[adjudicationamounttype][1].amount.value = 2650.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = $C4BBAdjudicationCS#paidbypatient
* total[adjudicationamounttype][2].category.text = "Patient Pay Amount"
* total[adjudicationamounttype][2].amount.value = 0.00
* total[adjudicationamounttype][2].amount.currency = #USD
//* adjudication[benefitpaymentstatus].category = C4BBAdjudication#other
* item[0].productOrService = $FDANationalDrugCode#0777-3105-02 "Prozac, 100 CAPSULE in 1 BOTTLE (0777-3105-02) (package)"
* item[0].sequence = 1
* item[0].servicedDate = "2019-07-02"
* item[0].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][0].amount.value = 1000.00
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][1].category = $HL7AdjudicationCS#benefit
* item[0].adjudication[adjudicationamounttype][1].amount.value = 20.00
* item[0].adjudication[adjudicationamounttype][1].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][2].category = $C4BBAdjudicationCS#discount
* item[0].adjudication[adjudicationamounttype][2].amount.value = 900.00
* item[0].adjudication[adjudicationamounttype][2].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][3].category = $C4BBAdjudicationCS#memberliability
* item[0].adjudication[adjudicationamounttype][3].amount.value = 80.00
* item[0].adjudication[adjudicationamounttype][3].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][4].category = $C4BBAdjudicationCS#paidtoprovider
* item[0].adjudication[adjudicationamounttype][4].amount.value = 20.00
* item[0].adjudication[adjudicationamounttype][4].amount.currency = #USD
* supportingInfo[brandgenericindicator].category = C4BBSupportingInfoType#brandgenericindicator
* supportingInfo[brandgenericindicator].sequence = 2
* supportingInfo[brandgenericindicator].code = $NCPDPBrandGenericIndicator#2
* supportingInfo[rxoriginCode].category = C4BBSupportingInfoType#rxorigincode
* supportingInfo[rxoriginCode].code = $NCPDPPrescriptionOriginCode#1
* supportingInfo[rxoriginCode].sequence = 3
* supportingInfo[refillNum].category = C4BBSupportingInfoType#refillnum
* supportingInfo[refillNum].valueQuantity.value = 0.0
* supportingInfo[refillNum].sequence = 4

* supportingInfo[refillsAuthorized].category = C4BBSupportingInfoType#refillsauthorized
* supportingInfo[refillsAuthorized].valueQuantity.value = 0.0
* supportingInfo[refillsAuthorized].sequence = 5

* supportingInfo[dawcode].category = C4BBSupportingInfoType#dawcode
* supportingInfo[dawcode].code = $NCPDPDispensedAsWrittenOrProductSelectionCode#7
* supportingInfo[dawcode].sequence = 6
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2019-10-31
* supportingInfo[clmrecvddate].sequence = 7
* supportingInfo[dayssupply].category = C4BBSupportingInfoType#dayssupply
* supportingInfo[dayssupply].sequence = 8
* supportingInfo[dayssupply].valueQuantity.value =  30.0
* supportingInfo[compoundcode].category = C4BBSupportingInfoType#compoundcode
* supportingInfo[compoundcode].code = $NCPDPCompoundCode#Dummy
* supportingInfo[compoundcode].sequence = 9
