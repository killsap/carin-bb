Profile: C4BBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit
Title: "C4BB Explanation Of Benefit"
Description: "Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four concrete EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician"
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
// 20210322 CAS: FHIR-30575

* ^abstract = true
//* identifier 1..* MS
//* identifier.type 1..1 MS
//* identifier.type from C4BBClaimIdentifierType (extensible)

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on value"
* identifier contains 
   uniqueclaimid 1..1  MS
* identifier[uniqueclaimid] ^short = "Unique Claim Identifier"
* identifier[uniqueclaimid].type = C4BBIdentifierType#uc
* identifier[uniqueclaimid].value ^short = "Unique Claim Identifier"
* identifier[uniqueclaimid].value 1..1 MS


//@Saul -- added status MS
* status MS
* use MS
* outcome MS

* type 1..1 MS
* type from $HL7ClaimType (required)
//   * claim MS   - igor sez we discussed removing MS
* use = #claim
* patient 1..1 MS
* provider only Reference(C4BBOrganization or C4BBPractitioner)   // based on BV2a comments 7/27
* patient only Reference (C4BBPatient)
* billablePeriod 1..1 MS
* billablePeriod.start 1..1 MS
* insurer 1..1 MS
* insurer only Reference(C4BBOrganization)
* provider 1..1 MS
* related 0..* MS
* related.relationship 1..1 MS
* related.relationship from C4BBRelatedClaimRelationshipCodes (required)
* related.reference 1..1 MS
* payee 0..1 MS
* payee obeys EOB-payee-other-type-requires-party
* payee.type 1..1 MS
* payee.type from C4BBPayeeType (required)
* payee.party 0..1 MS
* payee.party only Reference(C4BBOrganization or C4BBPatient or C4BBPractitioner or C4BBRelatedPerson)
* careTeam 0..* MS
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(C4BBOrganization or C4BBPractitioner)
* careTeam.role MS
* supportingInfo 0..* MS
* supportingInfo.category from C4BBSupportingInfoType (extensible)

//* supportingInfo.category 1..1 MS
//* supportingInfo.category from C4BBSupportingInfoType (required)
* insurance 1..* MS
* insurance.coverage 1..1 MS
* insurance.focal 1..1  MS
* insurance obeys EOB-insurance-focal
* insurance.coverage only Reference(C4BBCoverage)
//* adjudication.category from C4BBAdjudicationDiscriminator (required)   // per Igor
* item 1..* MS // Make all EoB profiles require EoB.item FHIR-34114
* item.adjudication.category 1..1 MS
//* item.adjudication.category from C4BBAdjudicationDiscriminator (required)  // Per Igor
* item.noteNumber MS
* item.sequence MS
//* total.category from C4BBAdjudicationDiscriminator (required)
* payment MS
* payment.type from C4BBPayerClaimPaymentStatusCode (required)
* payment.type MS
* processNote MS
* priority from http://hl7.org/fhir/ValueSet/process-priority  // Fix a bug in R4 EOB which points to a CodeSystem.   Eliminates an error on output
// CHANGE FOR NON-FINANCIAL
//* total 1..* MS


* insert EOBBaseProfileComments




Invariant:  EOB-insurance-focal
Description: "EOB.insurance:  at most one with focal = true"
//Expression: "insurance.select (focal = true).count() < 2"
// TODO Add Jira ticket
Expression: "select (focal = true).count() < 2"
Severity:   #error

Invariant: EOB-inst-careTeam-practitioner // rewritten with input from Lee Surprenant FHIR-28530
Description: "Institutional EOB: Careteam roles refer to a practitioner"
/*Expression: "(
role.where(coding.where(code in ('attending' | 'primary' | 'referring' | 'supervising')).exists()).exists() implies
role.where(coding.where(code in ('attending' | 'primary' | 'referring' | 'supervising')).exists()).exists().provider.all(resolve() is Practitioner)
)"
*/
// TODO Add Jira ticket
Expression: "(
role.where(coding.where(code in ('attending' | 'primary' | 'referring' | 'supervisor')).exists()).exists() implies
provider.all(resolve() is Practitioner)
)"
Severity: #error

Invariant: EOB-inst-careTeam-organization    // rewritten with input from Lee Surprenant  FHIR-28530
Description: "Institutional EOB: Careteam roles refer to an organization"
// TODO Add Jira ticket
/*
Expression:   "(
role.where(coding.where(code in ('rendering' )).exists()).exists() implies
role.where(coding.where(code in ('rendering' )).exists()).exists().provider.all(resolve() is Organization)
)"
*/
Expression:   "(
role.where(coding.where(code in ('rendering' )).exists()).exists() implies
provider.all(resolve() is Organization)
)"
Severity: #error

Invariant: EOB-careteam-qualification
Description: "Care Team Rendering physician's qualifications are from Healthcare Provider Taxonomy Value Set"
//Expression: "where(role.where(coding.code in ('rendering')).exists().not() or qualification.memberOf('http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.114222.4.11.1066')).exists()" // FHIR-35889
//Expression: "where(role.where(coding.code in ('rendering')).exists().not() or qualification.where(coding.system = 'http://nucc.org/provider-taxonomy')).exists()"
Expression: "where(role.where(coding.code in ('rendering')).exists().not() or qualification.memberOf('http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.114222.4.11.1066')).exists()"
/* Expression: "(
#role.where(coding.where(code in ('rendering' )).exists()).exists() implies
role.where(coding.where(code in ('rendering' )).exists()).exists().qualification.memberOf('http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.114222.4.11.1066')
)"
*/
Severity: #error

Invariant: EOB-pharm-careTeam-practitioner
Description: "Pharmacy EOB: Careteam roles refer to a practitioner"
// TODO Add Jira Ticket
/*
Expression: "(
role.where(coding.where(code in ('primary' | 'prescribing' )).exists()).exists() implies
role.where(coding.where(code in ('primary' | 'prescribing' )).exists()).exists().provider.all(resolve() is Organization)
)"
*/
Expression: "(
role.where(coding.where(code in ('primary' | 'prescribing' )).exists()).exists() implies
provider.all(resolve() is Organization)
)"
Severity: #error

Invariant: EOB-pharm-careTeam-organization
Description: "Pharmacy EOB: Careteam roles refer to an organization"
// TODO Add Jira Ticket
/*
Expression: "(
role.where(coding.where(code in ('rendering' )).exists()).exists() implies
role.where(coding.where(code in ('rendering' )).exists()).exists().provider.all(resolve() is Organization)
)"
*/
Expression: "(
role.where(coding.where(code in ('rendering' )).exists()).exists() implies
provider.all(resolve() is Organization)
)"
Severity: #error

Invariant: EOB-prof-careTeam-practitioner
Description: "Professional EOB:  Careteam roles refer to a practitioner"
// TODO Add Jira Ticket
/*
Expression: "(
role.where(coding.where(code in ('rendering' | 'primary' | 'referring' | 'supervising')).exists()).exists() implies
role.where(coding.where(code in ('rendering' | 'primary' | 'referring' | 'supervising' )).exists()).exists().provider.all(resolve() is Practitioner)
)"
*/
Expression: "(
role.where(coding.where(code in ('rendering' | 'primary' | 'referring' | 'supervisor')).exists()).exists() implies
provider.all(resolve() is Practitioner)
)"
Severity: #error



Invariant: EOB-prof-all-transportation-supportinginfo-linked-to-line
Description: "Professional EOB: SupportingInfo repetitions with with transportation category code must be referred to by one or more repetitions of item.informationSequence"
Expression: "supportingInfo.where(category.memberOf('http://hl7.org/fhir/us/carin-bb/ValueSet/C4BBTransportationServiceCategories')).sequence.subsetOf(%context.item.informationSequence)"
Severity: #error



Invariant: EOB-institutional-item-or-header-adjudication
Description: "Institutional EOB:  Should have adjudication with adjudicationamounttype slice at the item or header level, but not both"
Expression: "adjudication.where(category.memberOf('http://hl7.org/fhir/us/carin-bb/ValueSet/C4BBAdjudication')).exists() != item.adjudication.where(category.memberOf('http://hl7.org/fhir/us/carin-bb/ValueSet/C4BBAdjudication')).exists()"
Severity: #error


Invariant: adjudication-has-amount-type-slice
Description: "If Adjudication is present, it must have at least one adjudicationamounttype slice"
Expression: "(adjudication.exists().not() or adjudication.where(category.memberOf('http://hl7.org/fhir/us/carin-bb/ValueSet/C4BBAdjudication')).exists())"
Severity: #error

// 20211110 CAS: https://jira.hl7.org/browse/FHIR-32850
/*
Invariant: EOB-out-inst-item-productorservice
Description: "Outpatient Institutional EOB:  Item productOrService required. Data absent reason of Not Applicable is not allowed."
Expression: "coding.where(code = 'not-applicable' and system = 'http://terminology.hl7.org/CodeSystem/data-absent-reason').exists().not()"
Severity: #error
*/

// 20210203 CAS: https://jira.hl7.org/browse/FHIR-33024
Invariant: EOB-vision-item-productorservice
Description: "Vision EOB: Item productOrService not required in item.productOrService if and only if type is vision."
// TODO Add Jira Ticket
//Expression: "ExplanationOfBenefit.type.coding.where(code = 'vision' and system='http://terminology.hl7.org/CodeSystem/claim-type').exists() or ExplanationOfBenefit.item.productOrService.coding.where(code = 'not-applicable' and system = 'http://terminology.hl7.org/CodeSystem/data-absent-reason').exists().not()"
Expression: "type.coding.where(code = 'vision' and system='http://terminology.hl7.org/CodeSystem/claim-type').exists() or item.productOrService.coding.where(code = 'not-applicable' and system = 'http://terminology.hl7.org/CodeSystem/data-absent-reason').exists().not()"
Severity: #error


// 20210203 CAS: https://jira.hl7.org/browse/FHIR-30370 - NUBC Point Of Origin - newborns
Invariant: EOB-inst-pointoforigin
Description: "Where Admission Type and Point of Origin slices exist, if Type of Admission code is Newborn, Point of Origin must be from Point of Origin - Newborn CodeSystem  or Type of Admission is not Newborn and Point of Origin must be from Point of Origin Nonnewborn CodeSystem."
//Expression: "(supportingInfo.where(code.coding.system = 'https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit' and code.coding.code = '4').exists() and supportingInfo.where(code.coding.system='AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn').exists()).not() and (supportingInfo.where(code.coding.system = 'https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit' and code.coding.code != '4').exists() and supportingInfo.where(code.coding.system = 'https://www.nubc.org/CodeSystem/PointOfOriginNewborn').exists() ).not()"
Expression: "(supportingInfo.where(code.coding.where(system = 'https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit').exists() and code.coding.where(code = '4').exists()).exists() and supportingInfo.where(code.coding.where(system='AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn').exists()).exists()).not() and (supportingInfo.where(code.coding.where(system = 'https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit').exists() and code.coding.where(code = '4').exists().not()).exists() and supportingInfo.where(code.coding.where(system = 'https://www.nubc.org/CodeSystem/PointOfOriginNewborn').exists()).exists() ).not()"
Severity: #error


Invariant: EOB-payee-other-type-requires-party
Description: "Base EOB: if payee type is other, payee party is required"
Expression: "type.coding.where(code = 'other' and system = 'http://terminology.hl7.org/CodeSystem/payeetype').exists() implies party.exists()"
Severity: #error





// Rulesets
RuleSet: ItemAdjudicationInvariant
* item obeys adjudication-has-amount-type-slice

/* removed - FHIR-38063 - Update Invariants to support contracting and benefit payment status move to EOB.adjudication
RuleSet: AdjudicationInvariant
* obeys adjudication-has-amount-type-slice
*/
RuleSet: EOBHeaderItemAdjudicationInvariant
* obeys EOB-institutional-item-or-header-adjudication

RuleSet: AdjudicationSlicing
* adjudication ^slicing.rules = #open
* adjudication ^slicing.discriminator.path = "category"
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value"
* adjudication ^slicing.discriminator.type = #value
* adjudication.category 1..1 MS
* adjudication.category from C4BBAdjudicationCategoryDiscriminator (extensible)

RuleSet: SupportingInfoSlicing
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this value"
* supportingInfo MS
// * supportingInfo.category MS  -- we will flag in each slice

RuleSet: TotalSlicing
* total ^slicing.rules = #open
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value"
* total  ^slicing.discriminator.type = #value
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS


RuleSet: ItemAdjudicationSlicing
* item.adjudication ^slicing.rules = #open
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value"
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication.category from C4BBAdjudicationCategoryDiscriminator (extensible)

RuleSet: EOBBaseProfileComments
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last (163). Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last"
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest. CPCDS data element (190)"
* identifier ^comment = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. (35)"
* identifier.type ^comment = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* status ^comment = "Claim processing status code (140).  Expected values are active or cancelled.  To comply with the CMS rule, draft EOBs are not required"
* type ^comment = "Specifies the type of claim. (e.g., inpatient institutional, outpatient institutional, physician, etc.) (16).  Defines the Claims profiles.  Values from Claim Type Codes are required; a data absent reason is not allowed"
* use ^comment = "Expected value is claim. The CMS rule applies to adjudicated claims; it does not require preauthorizations or predeterminations"
* patient ^comment = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1). The patient must be supplied to the insurer so that confirmation of coverage and service history may be considered as part of the authorization and/or adjudication. Additional required path:EOB.insurance.coverage(Coverage).beneficiary(Patient).identifier"
* billablePeriod.start ^comment = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’). (177)"
* billablePeriod.end ^comment = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’). (178)"
* created ^comment = "Date the claim was adjudicated (179)"
* insurer ^comment = "Code of the payer responsible for the claim (2, 5).  Same as insurance.coverage.organization.  Party responsible for reimbursing the provider"
* provider ^comment = "The identifier assigned to the Billing Provider. (94)"
* related ^comment = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112)"
* payee.type ^comment = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.party ^comment = "Recipient reference (121)"
* outcome ^comment = "Expected value is complete"
* item.noteNumber ^comment = "References number of the associated processNote entered"
* careTeam.provider ^comment = "The identifier assigned to the care team. (varies depending on the profile)"
* careTeam.role ^comment = "The functional role of a provider on a claim. (165)"
* careTeam.sequence ^comment = "careTeam.sequence values uniquely identify careTeam members.  They do not necessarily indicate any order in which the patient was seen by the careTeam or identify any level of significance of the careTeam to the patient, etc.  Client app implementations should not assign any significance to the sequence values"
* supportingInfo ^comment = "Defines data elements not available in the base EOB resource"
* supportingInfo.sequence ^comment = "Client app implementations should look-up supportingInfo elements based on category values instead of sequence values"
* insurance ^comment = "Identity of the payers responsible for the claim. (2, 141).  All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. An invariant is defined to enforce the following rule:  Will have multiple occurrences on secondary / tertiary, etc. claims.  Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'"
* insurance.focal ^comment = "A patient may (will) have multiple insurance policies which provide reimbursement for healthcare services and products. For example, a person may also be covered by their spouse's policy and both appear in the list (and may be from the same insurer). This flag will be set to true for only one of the listed policies and that policy will be used for adjudicating this claim. Other claims would be created to request adjudication against the other listed policies. An invariant is defined to enforce the following rule:  Will have multiple occurrences on secondary / tertiary, etc. claims.  Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'"
* insurance.coverage ^comment = "Same as insurance.coverage.organization.  Party responsible for reimbursing the provider. When focal = true, Coverage.payer--> Organization.identifier.  When focal = false, EOB.insurance.coverage.display = [name of other carrier]"
* item.sequence ^comment = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* payment.type ^comment = "Indicates whether the claim was paid or denied. (91)"
* payment.date ^comment = "The date the claim was paid. (107)"
* processNote.text ^comment = "Payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"

// 20210322 CAS: FHIR-30575
/*
RuleSet: Metaprofile-supportedProfile-slice
* meta.profile ^slicing.discriminator.type = #pattern
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.ordered = false
* meta.profile ^slicing.description = "Slice based on value"
* meta.profile contains supportedProfile 1..1
*/