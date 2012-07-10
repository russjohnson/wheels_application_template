<cfoutput>

<!--- TODO: THIS CODE NEEDS TO BE MOVED TO ITS OWN VIEWS 
<div class="clearfix">
								
		<div class="two-col-b left">
			
			<h4>Resend Activation Email</h4>
			<p>Have you already created an account but didnt receive your activation email for some reason? Click <a href="/activations/resend">here to resend</a> it.</p>
			
			<h4>Reset My Password</h4>
			<p>Enter your email address and click reset password and we will send you instructions on how to reset your password.</p>
				#startFormTag(route="resetPassword", class="contactForm", name="resetPassword")#
		<div class="field">
			<label>Email</label><span class="hint">Email used to register your account</span>
			#textFieldTag(name="email", class="textbox")#
			
		</div>
		<div class="field">
			#submitTag(value="Reset Password", class="submit")#
		</div>
	#endFormTag()#
		
		</div>
</div> --->




<div>
	<h2> Please sign in or #linkTo(text="create an account", route="signup")#</h2>
	<div class="block" id="block-login">
		<h2>CFWheels App Template</h2>
		<div>

			#startFormTag(action="create", class="well")#
				#textFieldTag(name="login", 
					label="Username", 
					labelPlacement="before", 
					prepend="<div class='right'>", 
					append="</div>", 
					class="text_field")#

				#passwordFieldTag(name="password", 
					label="Password", 
					labelPlacement="before", 
					prepend="<div class='right'>", 
					append="</div>", 
					class="text_field")#

				<button class="btn btn-primary" type="submit">Login</button>

			#endFormTag()#
		</div>
	</div>
</div>
</cfoutput>