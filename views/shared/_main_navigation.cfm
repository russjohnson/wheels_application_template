<cfoutput>
<div id="main-navigation">
    <ul>
        <li class="first">
            #linkTo(text="Dashboard", route="home")#
        </li>
        <li class="active">
            <a href="##block-text">Active</a>
        </li>
        <li>
            #linkTo(text="Login", route="login")#
        </li>
        <li>
            #linkTo(text="Signup", route="signup")#
        </li>
        <li>
            #linkTo(text="Formatting", controller="public", action="format")#
        </li>
    </ul>
    <div class="clear"></div>
</div>
</cfoutput>