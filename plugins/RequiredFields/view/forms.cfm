<cffunction name="$getFieldLabel" mixin="controller" returntype="string" access="public" output="false">
	<cfargument name="objectName" type="any" required="true">
	<cfargument name="property" type="string" required="true">
	<cfargument name="label" type="string" required="true">
	<cfscript>
		var loc = {};
		
		loc.coreGetFieldLabel = core.$getFieldLabel;
		loc.label = loc.coreGetFieldLabel(argumentCollection=arguments);
		
		if (IsSimpleValue(arguments.objectName))
		{ 
			loc.object = Evaluate(arguments.objectName);
			if (loc.object.isNew())
			{
				loc.when = "onCreate,onSave";
			}
			else {
				loc.when = "onUpdate,onSave";
			}
			
			if (( IsObject(loc.object) && Len(loc.label) && loc.object.$validationExists(arguments.property, "validatesPresenceOf")
			&& ( !StructKeyExists(arguments, "required") || (StructKeyExists(arguments, "required") && arguments.required) ) )
			|| ( StructKeyExists(arguments, "required") && arguments.required ))
			{
				loc.label = $appendRequiredFieldIndicator(loc.label);
			}
		}
		else if (StructKeyExists(arguments, "required") && arguments.required)
		{
			loc.label = $appendRequiredFieldIndicator(loc.label);
		}
	</cfscript>
	<cfreturn loc.label>
</cffunction>

<cffunction name="$appendRequiredFieldIndicator" mixin="controller" returntype="string" hint="Adds return value to label and returns it.">
	<cfargument name="label" type="string" required="true" hint="Label to modify.">
	<cfscript>
		var loc = { label=arguments.label };
		
		loc.label &= " ";
		if(Len(application.requiredFields.containerElement)) {
			loc.label &= '<#application.requiredFields.containerElement#';
			if(Len(application.requiredFields.containerClass)) {
				loc.label &= ' class="#application.requiredFields.containerClass#"';
			}
			loc.label &= '>';
		}
		loc.label &= application.requiredFields.indicatorText;
		if (Len(application.requiredFields.containerElement))
		{
			loc.label &= '</#application.requiredFields.containerElement#>';
		}
	</cfscript>
	<cfreturn loc.label>
</cffunction>