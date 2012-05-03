<cffunction name="$validationExists" mixin="model" returntype="boolean" access="public" output="false" hint="Checks to see if a validation has been created for a property.">
	<cfargument name="property" type="string" required="true">
	<cfargument name="validation" type="string" required="true">
	<cfargument name="when" type="string" required="false" default="">
	<cfscript>
		var loc = {};
		loc.returnValue = false;

		for (loc.when in variables.wheels.class.validations)
		{
			if (!Len(arguments.when) || ListFindNoCase(arguments.when, LCase(loc.when)))
			{
				if (StructKeyExists(variables.wheels.class.validations, loc.when))
				{
					loc.eventArray = variables.wheels.class.validations[loc.when];
					loc.iEnd = ArrayLen(loc.eventArray);
					for (loc.i = 1; loc.i lte loc.iEnd; loc.i++)
					{
						if (StructKeyExists(loc.eventArray[loc.i].args, "property") && loc.eventArray[loc.i].args.property == arguments.property and loc.eventArray[loc.i].method == "$#arguments.validation#")
						{
							return true;
						}
					}
				}
			}
		}
	</cfscript>
	<cfreturn false />
</cffunction>