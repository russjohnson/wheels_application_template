<cfparam name="application.pluginManager.requirePassword" type="boolean" default="true">
<cfparam name="params.reloadPassword" type="string" default="">

<cfoutput>

<!--- Setting doesn't exist OR setting does exist and is set to enforce the reload password --->
<cfif application.pluginManager.requirePassword>
	<!--- Disclaimer text --->
	<cfsavecontent variable="disclaimerText">
		<cfinclude template="disclaimer.cfm">
	</cfsavecontent>
	
	<!--- No reloadPassword has been set, tell the user to set it or how to not require it at all --->
	<cfif get("reloadPassword") is "">
		<cfset isAccessBlocked = true>
		<h2>Enter Wheels Reload Password</h2>
		<p><strong>You haven't set your <code>reloadPassword</code> yet.</strong></p>
		#disclaimerText#
	<!--- no password supplied, or wrong password was supplied --->
	<cfelseif
		params.reloadPassword is ""
		or params.reloadPassword is not get("reloadPassword")
	>
		<cfset isAccessBlocked = true>
		<h2>Enter Wheels Reload Password</h2>
		<cfif params.reloadPassword is not "">
			<p><strong>Invalid password. Verify you are using your Wheels <code>reloadPassword</code> and try again.</strong></p>
		</cfif>
		<cfinclude template="passwordForm.cfm">
		#disclaimerText#
	</cfif>
</cfif>

</cfoutput>