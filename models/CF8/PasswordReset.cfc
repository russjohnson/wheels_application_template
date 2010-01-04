<!---  PasswordReset --->
<!--- @@Created By: Russ Johnson on 2009-08-22. --->
<!--- @@Copyright: Copyright (c) 2009 Mad Piranha, Inc.. All rights reserved. --->
<!--- @@License: --->
<cfcomponent output="false" extends="Model">
	
	<cffunction name="init">
		<cfset belongsTo('user')>
	</cffunction>
	
</cfcomponent>