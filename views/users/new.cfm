<cfoutput>
	<h2> Please complete the form to create your account</h2>
	<div>
		#errorMessagesFor('user', 'alert alert-error')#
		
		#startFormTag(action="create", class="form-horizontal well")#

			#textField(objectName='user', property="username", label="Username")#
			#textField(objectName='user', property="firstName", label="First Name")#
			#textField(objectName='user', property="lastName", label="Last Name")#
			#textField(objectName='user', property="email", label="Email")#
			#passwordField(objectName="user", property="password", label="Password")#
			#passwordField(objectName="user", property="passwordConfirmation", label="Confirm Password", required='true')#
			<div class="form-actions">
				<button class="btn btn-primary" type="submit">Complete Registration</button>
			</div>
		#endFormTag()#
	</div>
</cfoutput>