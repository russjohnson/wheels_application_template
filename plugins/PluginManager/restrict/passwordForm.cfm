<cfoutput>

<form action="rewrite.cfm" method="get">
	<div>
		<input type="hidden" name="controller" value="wheels" />
		<input type="hidden" name="action" value="wheels" />
		<input type="hidden" name="view" value="plugins" />
		<input type="hidden" name="name" value="pluginmanager" />
	</div>

	<p>
		<input type="password" name="reloadPassword" />
		<input type="submit" value="Launch Plugin" />
	</p>
</form>

</cfoutput>