<cfprocessingdirective pageencoding="utf-8">
<cfoutput>
  <div class="clearfix">
		<div class="two-col-large-a left">
		  <h1>The People</h1>
		  <h2>Random Profile</h2>
      <div class="clearfix">
        <div class="portfolio-thubmanil left">
          <p class="gallery">
            
            <cfif featured.avatar is NOT "">
              #linkTo(text="#imageTag(source='#featured.avatar#', class='border left', width='176')#", route="publicProfile", username="#featured.user.username#")#
            <cfelse>
              #linkTo(text="#imageTag(source='default_user.png', class='border left', width='176')#", route="publicProfile", username="#featured.user.username#")#
            </cfif>
          </p>
        </div>

        <div class="portfolio-details left">
          <h5>#linkTo(text="#featured.user.firstName# #featured.user.lastName#", route="publicProfile", username="#featured.user.username#")#<cfif featured.availableForHire><span class="small"><em> - available for hire</em><span></cfif></h5>
          <p>#featured.description#</p>
          <p>
             #linkTo(text="View Profile", route="publicProfile", username="#featured.user.username#", class="mouse icon")#
            <cfif featured.website is NOT "">
              <a href="#featured.website#" class="computer icon" target="new">View Website</a>
            </cfif>
            <cfif isLoggedIn() and session.currentUser.id neq featured.userid>
            #linkTo(text="Recommend", route="recommend", username="#featured.user.username#", class="star icon")#
            </cfif>
          </p>
        </div>
      </div>
    	<hr />
    	
      <h1>How can I use this information?</h1>

      <p>You can use the links in the right sidebar to browse the list of people in different ways.</p>

      <ul>
        <li>You can browse the list by authority or popularity.</li>
        <li>Check out the profiles that were most recently updated.</li>
        <li>Find developers who are available for hire.</li>
        <li>Find developers in your area.</li>
      </ul>
    </div>
    
    #includePartial("browse_links")#
  </div>
</cfoutput>