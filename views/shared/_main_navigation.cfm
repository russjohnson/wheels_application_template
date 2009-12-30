<cfoutput>
<div id="main-navigation">
    <ul>
        <li class="first">
            #linkTo(text="Dashboard", route="home")#
        </li>
        <li>
            #linkTo(text="Login", route="login")#
        </li>
        <li>
            #linkTo(text="Signup", route="signup")#
        </li>
        <li <cfif params.controller is 'public' and params.action is 'format'>class="active"</cfif>>
            #linkTo(text="Formatting", controller="public", action="format")#
        </li>
    </ul>
    <div class="clear"></div>
</div>
</cfoutput>