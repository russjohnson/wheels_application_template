<h1>Showing account</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

					<p><span>Id</span> <br />
						#account.id#</p>
				
					<p><span>Name</span> <br />
						#account.name#</p>
				
					<p><span>Userid</span> <br />
						#account.userid#</p>
				
					<p><span>Createdat</span> <br />
						#account.createdat#</p>
				
					<p><span>Updatedat</span> <br />
						#account.updatedat#</p>
				
					<p><span>Deletedat</span> <br />
						#account.deletedat#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this account", action="edit", key=account.id)#
</cfoutput>
