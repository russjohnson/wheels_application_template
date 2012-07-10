<!---
    |----------------------------------------------------------------------------------------------------------------------------|
	| Parameter     | Required | Type    | Default | Description                                                                 |
    |----------------------------------------------------------------------------------------------------------------------------|
	| table         | Yes      | string  |         | table name                                                                  |
	| columnNames   | Yes      | string  |         | one or more column names to index, comma separated                          |
	| unique        | No       | boolean |  false  | if true will create a unique index constraint                               |
	| indexName     | No       | string  |         | use for index name. Defaults to table name + underscore + first column name |
    |----------------------------------------------------------------------------------------------------------------------------|

    EXAMPLE:
      addIndex(table='members',columnNames='username',unique=true);
--->
<cfcomponent extends="plugins.dbmigrate.Migration" hint="Add indexes to users">
  <cffunction name="up">
    <cfscript>
		addIndex(table='users',columnNames='username',unique=true);
    addIndex(table='users',columnNames='email',unique=true);
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
	    removeIndex(table='users', indexName='users_username');
      addIndex(table='users',columnNames='users_email',unique=true);
    </cfscript>
  </cffunction>
</cfcomponent>
