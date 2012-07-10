<!---
	If you leave these settings commented out, Wheels will set the data source name to the same name as the folder the application resides in.
	<cfset set(dataSourceName="")>
	<cfset set(dataSourceUserName="")>
	<cfset set(dataSourcePassword="")> 
--->

<cfscript>
    set(URLRewriting="on");

    // form defaults for bootstrap
    set(functionName='textField', labelPlacement='before', prependToLabel='<div class="control-group">', labelClass='control-label', class='input-xlarge', prepend='<div class="controls">', append='</div></div>');
    set(functionName='textFieldTag', labelPlacement='before', prependToLabel='<div class="control-group">', labelClass='control-label', class='input-xlarge', prepend='<div class="controls">', append='</div></div>');
    set(functionName='passwordField', labelPlacement='before', prependToLabel='<div class="control-group">', labelClass='control-label', class='input-xlarge', prepend='<div class="controls">', append='</div></div>');

    set(functionName='flash', prepend='<div class="alert"><button class="close" data-dismiss="alert">x</button>', append='</div>');
</cfscript>