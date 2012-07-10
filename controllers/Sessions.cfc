/**
*
* @file  wheels_app_template/controllers/Sessions.cfc
* @author  Russ Johnson ( russ@angry-fly.com )
* @description Handles login/logout functionality
*
*/

component output="false"  {

	public function init(){
		filters(through="loginProhibited", only="new, create");
	}

	public any function new() {
	}
	
	public any function create() {
		if(params.login is "" or params.password is ""){
			flashInsert(error="Login failed, please try again");
			redirectTo(action="new");
		} else {
			$passwordAuthentication(params.login, params.password);
		}
	}
	
	public any function destroy() {
		// todo: need to check for the remember me flag here and delete cookie if needed 
		structDelete(session, 'currentUser');
		flashInsert(success='You have been logged out');
		redirectTo(route="home");
	}
	
	// private methods

	public any function $passwordAuthentication(string login, string password) {
		authUser = model("user").findOneByUsername(arguments.login);
			
		if(isboolean(authUser) and Not authUser){
			$failedLogin();
		}
		
		if(authUser.isPassword(arguments.password) AND authUser.activatedAt is NOT ""){
			$successfulLogin(authUser);
		} else {
			$failedLogin();
		}
	}
	
	public any function $successfulLogin(any user) {
		session.currentUser = arguments.user;
		
		/*<cfif structKeyExists(params,"rememberMe")>
			<cfcookie name="app.rememberme" value="true" expires="14" />
		</cfif>*/
	   
	  /* Update the lastLogin column 
		<cfset session.currentUser.lastLogin = now()>
		<cfset session.currentUser.save()> */
		
		// This redirects the user to the default account page but you can change this to go where you want
		flashInsert(success="Hello <strong>#session.currentUser.firstName#</strong>! You are now signed in.");
		redirectTo(route="home");
	}
	
	public any function $failedLogin() {
		flashInsert(error="Login failed, please try again");
		redirectTo(action='new');
	}
	
}