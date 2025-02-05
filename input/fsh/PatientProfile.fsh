Profile: C4BBPatient
Parent: USCorePatientProfile|6.1.0
Id: C4BB-Patient
Title: "C4BB Patient"
Description: "This profile builds upon the US Core Patient profile. It is used to convey information about the patient who received the services described on the claim."
* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|3.1.1"
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
//* insert Metaprofile-supportedProfile-slice
// 20210216 CAS: FHIR-30575 Pulled from block vote1a
//* meta.profile[supportedProfile] = Canonical(C4BBPatient|1.2.0)
* obeys patient-meta-profile-version

* identifier.type from C4BBPatientIdentifierType (extensible)
//* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value 
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this value"
* identifier contains 
   memberid 1..* MS and
//   medrecnum 0..* MS and
   uniquememberid 0..* MS
//   patacctnum 0..* MS 
* identifier[memberid] ^short = "Member ID"
* identifier[memberid].type = $IdentifierType#MB
//* identifier[memberid].type.coding 1..* MS
//* identifier[medrecnum].type = $IdentifierType#MR
//* identifier[medrecnum].type.coding 1..* MS
//* identifier[patacctnum].type = C4BBIdentifierType#pat
//* identifier[patacctnum].type.coding 1..* MS
//* identifier[uniquememberid].type.coding 1..* MS
* identifier[uniquememberid].type = C4BBIdentifierType#um
* identifier[uniquememberid] ^short = "Unique Member ID"

* birthDate MS
* gender MS
// * deceasedDateTime MS
// * deceasedBoolean MS
* deceased[x] MS 
* name MS
* meta.lastUpdated MS
//* address.district MS FHIR-35031
* address.country MS 

* identifier[memberid] ^comment = "Identifier for a member assigned by the Payer for a contract; it may be different for various lines of business; ie. QHP vs MA. If members receive ID cards, that is the identifier that should be provided. (1)."
* identifier[uniquememberid] ^comment = "Mastered person identifier that is a unique identifier for a member assigned by the Payer across all lines of business (191)"
//* identifier[medrecnum] ^comment = "Provider submitted medical record number that can be included on the claim. (109)"
//* identifier[patacctnum] ^comment = "Provider assigned patient account number that can be included on the claim. (109)"
* birthDate ^comment = "Date of birth of the member (70)"
* gender ^comment = "Gender of the member (71)"
* name ^comment = "The name of the patient (130)"
* deceasedDateTime ^comment = "deceasedDateTime - Date of death of the member (124) or deceasedBoolean - Indicates if the patient is deceased (150)"
//* deceasedDateTime ^comment = "Date of death of the member (124)"
//* deceasedBoolean ^comment = "Indicates if the patient is deceased (150)"
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last (163).  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service."
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest. CPCDS data element (190)"
* address.line ^comment = "Member's street name, number, direction & P.O. Box etc. (158)"
* address.city ^comment = "The city for the member's primary address (192)" 
//* address.district ^comment = "The county for the member's primary address (125)" FHIR-35031
* address.state ^comment = "The state for the member's primary address (126)" 
* address.postalCode ^comment = "This represents the member's 5 digit zip code (131)" 
* address.country ^comment = "The country for the member's primary address (127)"