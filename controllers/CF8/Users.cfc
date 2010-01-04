<cfcomponent extends="Controller">
  
    <cffunction name="init">
        <cfset filters(through="loginRequired", only="myaccount, edit, update")>
        <cfset filters(through="isAdmin", only="delete")>
    </cffunction>
	
	<cffunction name="index">
		<cfset users = model("User").findAll()>
	</cffunction>
	
	<cffunction name="myaccount">
	    <cfif not session.currentUser.username is params.username>
	       <cfset redirectTo(route="home")>
	    </cfif>
	   
	    <cfset user = model("User").findOneByUsername(params.username)>
	       
	    <cfif Not isObject(user)>
	        <cfset flashInsert(info="User #params.key# was not found")>
	        <cfset redirectTo(route="home")>
	    </cfif>
	</cffunction>
	
	<cffunction name="new">
		<cfset user = model("User").new()>
		<cfset renderPaage(layout="/sessions/layout")>
	</cffunction>
	
	<cffunction name="edit">

        <cfset user = model("User").findByKey(params.key)>

        <!--- Check if the record exists --->
        <cfif NOT IsObject(user)>
            <cfset flashInsert(info="User #params.key# was not found")>

        	<cftry>
        	    <cfset redirectTo(back=true)>

            	<cfcatch type="Wheels.RedirectBackError">
            		<cfset redirectTo(action="index")>
            	</cfcatch>
            </cftry>
        </cfif>
	</cffunction>
	
	<cffunction name="create">
		<cfset user = model("User").new(params.user)>
		
		<cfif user.save()>

		    <cfset sendEmail(from="admin@yoursite.com", to=user.email, subject="Website account activation", template="new_user_activation_email", activationCode=user.activationCode) />
		  
			<cfset flashInsert(success="Thanks for signing up! You cannot login yet however. We have sent you an email with a link to verify your email address.")>
            <cfset redirectTo(route="home")>
		<cfelse>
			<cfset flashInsert(error="There was an error creating the user.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<cffunction name="update">
		<cfset user = model("User").findByKey(params.key)>
		
		<!--- Verify that the user updates successfully --->
		<cfif user.update(params.user)>
			<cfset flashInsert(success="The user was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<cfelse>
			<cfset flashInsert(error="There was an error updating the user.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<cffunction name="delete">
		<cfset user = model("User").findByKey(params.key)>
		
		<!--- Verify that the user deletes successfully --->
		<cfif user.delete()>
		    <cfset flashInsert(success="The user was deleted successfully.")>	
            <cfset redirectTo(route="users_path")>
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the user.")>
			<cfset redirectTo(action="users_path")>
		</cfif>
	</cffunction>
	
	<cffunction name="resetPassword">
	    <cfset user = model('user').findOneByEmail(params.email)>
	 
	    <cfif isObject(user)>
	    
	        <cfif user.activatedAt is "">
    	        <cfset flashInsert(error="You havent activated your account yet. You must do that first.")>
    			<cfset redirectTo(route="login")>
    	    </cfif>
	    
	        <cfset newReset = user.newPasswordReset()>
    	    <cfset newReset.email = user.email>
    	    <cfset newReset.remoteIP = cgi.remote_addr>
    	    <cfset newReset.token = createUUID()>
    	    <cfset newReset.save()>
    	    <cfset sendEmail(from="admin@yoursite.com", to=user.email, subject="Website password reset request", template="password_reset_email", token=newReset.token) />
		  
			<cfset flashInsert(success="We have sent an email to you with a link that will allow you to reset your password.")>
            <cfset redirectTo(route="home")>
		<cfelse>
			<cfset flashInsert(error="There was no account found for the email address you supplied.")>
			<cfset redirectTo(route="login")>
	    </cfif>
	</cffunction>
	
	<cfscript>
	    function resetPasswordForm() {
          if (Not structKeyExists(params, 'token')){
            flashInsert(error="There was no reset code in the URL you are trying to use. Please make sure to click on the link in your email.");
            redirectTo(route="home");
          }
    
          passwordReset = model('passwordReset').findOneByToken(params.token);
    
          if (isObject(passwordReset) and not passwordReset.reset){
            user = passwordReset.user();
      
            if (Not isObject(user)){
              flashInsert(error="No user was found for that password reset code.");
              redirectTo(route='home');
            }
          } else {
            flashInsert(error="The reset code you provided is no longer valid.");
            redirectTo(route='home');
          }
        };

	    function saveNewPassword() {
            if (not structKeyExists(params, 'token')){
              flashInsert(error="You have submitted an invalid request.");
              redirectTo(route="home");
            }

            resetRequest = model('passwordReset').findOneByToken(params.token);

            if (not isObject(resetRequest)){
              flashInsert(error="You have submitted an invalid request.");
              redirectTo(route="home");
            }  

            user = model('user').findByKey(params.user.id);

            if (user.id == resetRequest.userID){
            user.password = params.user.password;
            if (user.update()){
              resetRequest.reset = 1;
              resetRequest.update();
              flashInsert(success="Your password has been reset. You may now login.");
              redirectTo(route="home");
            } else {
              renderPage(action="resetPasswordForm", token=params.token);
            }

            } else {
              flashInsert(error="You have submitted an invalid request.");
              redirectTo(route="home");
            }
        };
	</cfscript>
</cfcomponent>