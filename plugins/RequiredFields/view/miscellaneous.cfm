<cffunction name="$tag" returntype="string" access="public" output="false" hint="Creates a HTML tag with attributes.">
	<cfscript>
		var loc = { coreTag=core.$tag };
		
		loc.myTag = loc.coreTag(argumentCollection=arguments);
		loc.myTag = Replace(loc.myTag, ' required="true"', "");
		loc.myTag = Replace(loc.myTag, ' required="false"', "");
		return loc.myTag;
	</cfscript>
</cffunction>