<h4 class="x_MsoNormal">Notes on Fields</h4>
<ul>
<li class="x_MsoNormal">Payers may decide to provide either the data that was in effect as of the date of service or the current data<strong>.&nbsp;</strong></li>
<li class="x_MsoNormal">.identifier[NPI]:&nbsp; Value is conditional depending on the Referring Resource.&nbsp; Populate Service Facility NPI with the value 'NPI has not been assigned' if an NPI has not been assigned to the Service Location Organization</li>
<li class="x_MsoNormal">.address:&nbsp; Enter address of the location where the services were rendered.&nbsp; If the location is a component of the Billing Provider, do not populate this data element</li>
<li class="x_MsoNormal">.meta.lastUpdated:&nbsp;Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last.  Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service. </li>
<li class="x_MsoNormal">The numbers, e.g. (1), following the data element descriptions correlate to the MapID in the <a href="CPCDSDataDictionary.docx">CPCDS Data Dictionary</a> and the <a href="CPCDStoFHIRProfilesMapping.xlsx">Mapping Worksheet</a>&nbsp;as described&nbsp;<a href="Common_Payer_Consumer_Data_Set.html">here.</a></li>
</ul>
<p>&nbsp;</p>