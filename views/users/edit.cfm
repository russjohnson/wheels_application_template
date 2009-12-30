<h1>Editing user</h1>

<cfoutput>

			#errorMessagesFor("user")#
	
			#startFormTag(action="update", key=params.key)#
		
				
						<p><label>Is Admin</label> <br />
							#checkBox(objectName='user', property='isAdmin')#</p>
					
						<p><label>Last Login</label> <br />
							#dateTimeSelect(objectName='user', property='lastLogin', dateOrder='year,month,day', monthDisplay='abbreviations')#</p>
					
						<p><label>Password</label> <br />
							#textField(objectName='user', property='password')#</p>
					
						<p><label>Email</label> <br />
							#textField(objectName='user', property='email')#</p>
					
						<p><label>Last Name</label> <br />
							#textField(objectName='user', property='lastName')#</p>
					
						<p><label>First Name</label> <br />
							#textField(objectName='user', property='firstName')#</p>
					
						<p><label>Username</label> <br />
							#textField(objectName='user', property='username')#</p>
					
				
				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
