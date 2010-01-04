<cfcomponent extends="Controller" output="false">
    
    <cffunction name="init" output="false">
    </cffunction>
    
    <cffunction name="index" output="false">
    </cffunction>
    
    <cffunction name="format" output="false">
        <cfset renderPage(layout='format_layout')>
    </cffunction>
    
    <cffunction name="switchTheme" output="false">
        <cfset session.theme = params.theme>
        <cfset redirectTo(route='home')>
    </cffunction>
    
</cfcomponent>