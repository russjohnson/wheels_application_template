<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<a class="brand" href="#">CFWheels Boilerplate</a>
			<div class="nav-collapse">
				<ul class="nav">
					<cfoutput>
						<li>#linkTo(text='Home', route='home')#</li>
						<li>#linkTo(text="Login", route="login")#</li>
						<li>#linkTo(text="Signup", route="signup")#</li>
					</cfoutput>
				</ul>

				<cfif structKeyExists(session, "currentUser")>
					<ul class="nav pull-right">
						<li>
							<cfoutput><a href="">#session.currentUser.firstName# #session.currentUser.lastName#</a></cfoutput>
						</li>
					</ul>
				</cfif>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div>