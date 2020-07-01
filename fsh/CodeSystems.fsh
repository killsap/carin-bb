CodeSystem: ClaimInformationCategoryCS
Title: "Claim Information Category"
Description: "Claim Information Category - Used as the discriminator for supportingInfo" 
* #billingnetworkcontractingstatus	"billingnetworkcontractingstatus"       "Indicates the in network or out of network payment status of the claim."	
* #attendingnetworkcontractingstatus "attendingnetworkcontractingstatus"    "Indicates the in network or out of network payment status of the claim."	
* #sitenetworkcontractingstatus	"sitenetworkcontractingstatus"	            "Indicates the in network or out of network payment status of the claim."	
* #referringnetworkcontractingstatus	"referringnetworkcontractingstatus"	"Indicates the in network or out of network payment status of the claim."	
* #performingnetworkcontractingstatus	"performingnetworkcontractingstatus" "Indicates the in network or out of network payment status of the claim."		
* #prescribingnetworkcontractingstatus	"prescribingnetworkcontractingstatus"	"Indicates the in network or out of network payment status of the claim."	
* #clmrecvddate	"clmrecvddate"	                                            "The date the claim was received by the payer."	
* #typeofservice	"typeofservice"	                                        "High level classification of services into logical grouping."	
* #tob-typeoffacility	"tob-typeoffacility"	                            "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of facility."	
* #tob-billclassification	"tob-billclassification"                        "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The second digit classifies the type of care (service classification) being billed."		
* #tob-frequency	"tob-frequency"	                                        "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The third digit identifies the frequency of the bill for a specific course of treatment or inpatient confinement."	
* #admsrc	"admsrc"                                                        "Identifies the place where the patient was identified as needing admission to a facility. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15)."	
* #admtype	"admtype"	                                                    "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled."	
* #discharge-status	"discharge-status"                                      "Patient’s status as of the discharge date for a facility stay."		
* #ms-drg	"ms-drg"	                                                    "Diagnosis Related Group"	
* #placeofservice	"placeofservice"	                                    "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed."	
* #dayssupply	"dayssupply"	                                            "Number of days supply of medication dispensed by the pharmacy."	
* #dawcode	"dawcode"	                                                    "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication."	
* #refillnum	"refillnum"	                                                "The number fill of the current dispensed supply (0, 1, 2, etc.)."	
* #rxorigincode	"rxorigincode"	                                            "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy"	
* #brandgenericcode	"brandgenericcode"                                      "Whether the plan adjudicated the claim as a brand or generic drug."	

CodeSystem: PayerAdjudicationCategoryCS
Title: "Payer Adjudication Category"
Description: "Payer Adjudication Category"
* #in-network "In-network" "in-network"
* #out-of-network "Out-of-network" "out-of-network"
* #other "Other" "other"
* #contracted "Contracted" "contracted"
* #non-contracted "Non-contracted" "non-contracted"
* #subscriber "Subscriber" "subscriber"
* #provider "Provider" "provider"
* #paid "Paid" "paid"
* #denied "Denied"  "denied"
* #submitted "Submitted" "The total submitted amount for the claim or group or line item."
* #allowed "Allowed" "Allowed"
* #deductible "Deductible" "Amount deducted from the eligible amount prior to adjudication."
* #coinsurance "coinsurance" "The amount the insured individual pays, as a set percentage of the cost of covered medical services, as an out-of-pocket payment to the provider. Example: Insured pays 20% and the insurer pays 80%."
* #copay "copay" "Patient Co-Payment"
* #noncovered "Noncovered" "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* #priorpayerpaid "Prior payer paid" "The reduction in the payment amount to reflect the carrier as a secondary payor."
* #payment "Payment" "payment"
* #paidbypatient "Paid by patient" "The amount paid by the patient at the point of service."
* #paidtopatient "Paid to patient" "paid to patient"
* #paidtoprovider "Paid to provider" "The amount paid to the provider."
* #memberliability "Member liability" "The amount of the member's liability."
* #discount "Discount" "The amount of the discount"
* #drugcost "Drug cost" "Price paid for the drug excluding mfr or other discounts.  It typically is the sum of the following components: ingredient cost, dispensing fee, sales tax, and vaccine administration"


CodeSystem: PayerDiagnosisTypeCS
Title: "Payer Diagnosis Type"
Description: "Payer Diagnosis Type"
* #principal "principal" "principal"
* #secondary  "secondary"  "secondary"
* #external-cause-of-injury "external-cause-of-injury" "external-cause-of-injury"
* #patient-reason-for-visit "patient-reason-for-visit" "patient-reason-for-visit"
* #first-listed  "first-listed"  "first-listed"
* #admitting "admitting" "admitting"


CodeSystem: ClaimAdjudicationCategoryCS
Title: "Claim Adjudication Category"
Description: "Values for EOB.item.adjudication.category"
* #benefitPaymentStatusCode	"Benefit payment status code"	"Benefit payment status code"
* #paymentDenialCode	"Payment denial code"	"Payment Denial Code"
* #submittedamount	"submitted amount"	        "Undefined"
* #allowedamount	"allowed amount"            "Undefined"
* #deductibleamount	"deductible amount"	        "Undefined"
* #coinsuranceamount	"coinsurance amount"	"Undefined"
* #copayamount	"copay amount"	                "Undefined"
* #noncoveredamount	"noncovered amount"	        "Undefined"
* #cobamount	"cob amount"	                "Undefined"
* #paymentamount	"payment amount"            "Undefined"
* #patientpayamount	"patient pay amount"        "Undefined"
* #denialreason	"payment denial reason"         "Undefined"
* #innetworkbenefitpaymentstatus	"in network benefit payment status" "Undefined"
* #outofnetworkbenefitpaymentstatus	"out of network benefit payment status" "Undefined"
* #otherbenefitpaymentstatus	"other benefit payment status"	"Undefined"
* #allowedunits	"allowed units" "Undefined"

CodeSystem: IdentifierTypeCS
Title: "Identifier Type"
Description: "Identifier Type"
* #tax "Tax ID Number" "Tax ID Number"
* #npi "National Provider Identifier" "National Provider Identifier"
* #payerid "Payer ID" "Payer ID"
* #mb "Member ID" "Member ID"
* #mr "Medical Record Number" "Medical Record Number"
* #pt "Patient Account Number" "Patient Account Number"
* #um "Unique Member ID" "Unique Member ID"