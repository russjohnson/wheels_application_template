<h3>Contact Information</h3>
<cfoutput>

  <cfif NOT profile.website is "">
    <div><span class="label">Website</span> <a href="#profile.website#" target="new" style="text-decoration:none;">#profile.website#</a></div>
  </cfif>
    
  <cfif profile.hideEmail>
    <div><span class="label">Email</span> 
      <cfif profile.allowUserMail and isLoggedIn()>#linkTo(text="Contact Me", route="contact", username=user.username)#<cfelse>email hidden</cfif></div>
  <cfelse>
    <div><span class="label">Email</span> #linkTo(text=user.email, route="contact", username=user.username)#</div>
  </cfif>
  
  <cfif profile.twitter is Not "">
		<div><span class="label">Twitter</span> 
		  <a href="http://twitter.com/#profile.twitter#" target="new" style="text-decoration:none;">#profile.twitter#</a>
		</div>
	</cfif>
</cfoutput>