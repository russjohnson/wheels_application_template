<!---
	This file is used to configure specific settings for the "design" environment.
	A variable set in this file will override the one in "config/settings.cfm".
	Example: <cfset set(dataSourceName="devDB")>
--->
<cfscript>
    set(dataSourceName="cfwheels_boilerplate");
    
    application.domain = "wheels_template.dev";
</cfscript>

