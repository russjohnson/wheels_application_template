<cfoutput>
<div id="user-navigation">
    <ul>
        <cfif structKeyExists(session, "currentUser")>
            <li>#linkTo(text="Profile", route="myaccount", username="#session.currentuser.username#")#</li>
        </cfif>
        <li><a href="">Settings</a></li>
        <li>#linkTo(text="Logout", route="logout", class="logout")#</li>
    </ul>
    <div class="clear"></div>
</div>
</cfoutput>