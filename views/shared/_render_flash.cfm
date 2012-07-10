<cfoutput>
	<cfif flashKeyExists('error')>
			#flash('error')#
	<cfelseif flashKeyExists('success')>
			<p>#flash('success')#</p>
	<cfelseif flashKeyExists('warning')>
			<p>#flash('warning')#</p>
	<cfelseif flashKeyExists('info')>
			<p>#flash('info')#</p>
	</cfif>
</cfoutput>