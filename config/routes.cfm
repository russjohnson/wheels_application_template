<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->
<cfscript>
    // Home Route
    addRoute(name="home", pattern="", controller="public", action="index");

    // Account and Login routes
    addRoute(name="login", pattern="login", controller="sessions", action="new");
    addRoute(name="logout", pattern="logout", controller="sessions", action="destroy");
    addRoute(name="signup", pattern="signup", controller="users", action="new");
    addRoute(name="activate", pattern="activation/[activationCode]", controller="activations", action="activate");
    addRoute(name="resetPassword", pattern="passwordReset", controller="users", action="resetPassword");
    addRoute(name="resetPasswordForm", pattern="resetPassword/[token]", controller="users", action="resetPasswordForm");
    
    addRoute(name="myaccount", pattern="myaccount/[username]", controller="users", action="myaccount");
</cfscript>