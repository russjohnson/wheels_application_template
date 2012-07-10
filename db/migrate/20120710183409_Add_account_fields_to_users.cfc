<!---
		|----------------------------------------------------------------------------------------------|
	| Parameter  | Required | Type    | Default | Description                                      |
		|----------------------------------------------------------------------------------------------|
	| name       | Yes      | string  |         | existing table name                              |
		|----------------------------------------------------------------------------------------------|

		EXAMPLE:
			t = changeTable(name='employees');
			t.string(columnNames="fullName", default="", null=true, limit="255");
			t.change();
--->
<cfcomponent extends="plugins.dbmigrate.Migration" hint="Add account fields to users">
	<cffunction name="up">
		<cfscript>
			t = changeTable('users');
			t.integer('accountid');
			t.string('roles');    
			t.change();

			addIndex(table='users',columnNames='accountid',unique=false);
		</cfscript>
	</cffunction>
	<cffunction name="down">
		<cfscript>
			removeIndex(table='users',indexName='users_accountid');
			removeColumn(table='users',columnName='accountid');
			removeColumn(table='users',columnName='roles');
		</cfscript>
	</cffunction>
</cfcomponent>
