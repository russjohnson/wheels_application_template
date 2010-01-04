<!---
    This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->

<cfcomponent extends="Wheels" output="false">
    <cffunction name="init" output="false">
        <cfset filters(through="theme", except="switchTheme")>
    </cffunction>
    
    <cffunction name="theme" output="false">
        <cfif not structKeyExists(session, 'theme')>
            <cfset session.theme = "drastic-dark">
        </cfif>
    </cffunction>
</cfcomponent>