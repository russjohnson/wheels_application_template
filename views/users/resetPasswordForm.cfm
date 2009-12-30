<cfset user.password = "">

<h1>Reset Password</h1>

<cfoutput>
	#errorMessagesFor("user")#

	#startFormTag(action="saveNewPassword", userid=user.id, class="contactForm")#
	
	  #hiddenFieldTag(name="token", value="#params.token#")#
	  
	  #hiddenField(objectName='user', property='id')#
			
		<div class="fied">
		  <label>New Password</label>
			#passwordField(objectName='user', property='password', class="textbox")#
			<span class="hint">required</span>
		</div>
			
		<div class="field">
		  <label>Confirm Password</label>
			#passwordField(objectName='user', property='passwordConfirmation', class="textbox")#
			<span class="hint">required</span>
		</div>
		
		#submitTag(value="Reset Password", class="submit")#
		
	#endFormTag()#
</cfoutput>