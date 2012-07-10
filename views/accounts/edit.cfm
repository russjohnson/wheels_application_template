<h1>Editing account</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			#errorMessagesFor("account")#
	
			#startFormTag(action="update", key=params.key)#
		
				
						#textField(objectName='account', property='name', label='Name')#
					
						#textField(objectName='account', property='userid', label='Userid')#
					
				
				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
