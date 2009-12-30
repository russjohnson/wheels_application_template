<cfoutput>

<div class="clearfix">
	<div class="two-col-a left">
	  
	  <cfif isLoggedIn() and session.currentUser.id eq user.id>
	    <div style="float:right;">
	       
	      #linkTo(text="Edit profile",route="editProfile", username="#user.username#", class="smallEdit")#
	    </div>
	  </cfif>
	  
	  <h1>#user.firstName# #user.lastName#</h1>
		  
	  <cfif NOT profile.alias is ""><div><span class="label">Aliases</span> #profile.alias#</div></cfif>
  
    <cfif NOT profile.location is ""><div><span class="label">Location</span> #profile.location#, #profile.country#</div></cfif>
  
    <cfif NOT profile.company is ""><div><span class="label">Company</span> #profile.company#</div></cfif>
    
    <p></p>
    
   <cfif NOT profile.description is ""><div>#profile.description#</div></cfif>
    
    <hr/>
    
    #includePartial('_profile_contactinfo')#

		<hr/>
		
		#includePartial("_profile_recommendations")#
		
		<hr/>
		
		#includePartial('_profile_rss')#
				
	</div>
					
	<div class="two-col-b left">
	  
	  <cfif profile.availableForHire>
	    <h2>Available For Hire</h2>
	  </cfif>  
	  
	  <cfif profile.avatar is NOT "">
      <img class="border" src="#profile.avatar#" width="176" /><br/>
    <cfelse>
      <img class="border" src="/images/default_user.png" alt="User hasnt added their avatar yet." /><br/>
    </cfif>
    
    <h3>Authority</h3>
    
    #simple_bar(profile.authority)#
    
    <cfif profile.attended><img src="/images/icon_check.png"> Attended a CFML related event<br/></cfif>
	  <cfif profile.presented><img src="/images/icon_check.png"> Presented at a CFML related event<br/></cfif>
	  <cfif profile.publishedBook><img src="/images/icon_check.png"> Published a CFML related book<br/></cfif>
	  <cfif profile.publishedArticle><img src="/images/icon_check.png"> Published a CFML related article<br/></cfif>
	  <cfif profile.releasedOpensource><img src="/images/icon_check.png"> Has released a CFML related opensource project<br/></cfif>
	  <cfif profile.worksProfessionally><img src="/images/icon_check.png"> Works professionally with CFML</cfif>
	
	
	<h3>Popularity</h3>
	  #simple_bar(popularity)#
	
	<h3>Experience</h3>
  <!---
    TODO might look at changing this to output as n years and n months
  --->
  <cfif profile.usingSinceYear is Not "" OR profile.usingSinceMonth is Not "">
	  Using CFML for #distanceOfTimeInWords(createDate(profile.usingSinceYear, profile.usingSinceMonth, 1),now())#
	</cfif>
	
  <cfif profile.riaforgeID is NOT "">
    <h3>RiaForge Projects</h3>
    
    <!--- <cfdump var="#projects.projects.XmlChildren#"> --->
    <cfloop from="1" to="#arrayLen(projects.projects.XmlChildren)#" index="i">
      <div class="project">
        <a href="#projects.projects.XmlChildren[i].XmlChildren[7].xmlText#">
          <h6>#projects.projects.XmlChildren[i].XmlChildren[6].xmlText#</h6>
        </a>
        #projects.projects.XmlChildren[i].XmlChildren[9].xmlText#
        <div><span class="small">Views: <strong>#projects.projects.XmlChildren[i].XmlChildren[12].xmlText#</strong> | Downloads: <strong>#projects.projects.XmlChildren[i].XmlChildren[5].xmlText#</strong></span></div>
      </div>
    </cfloop>
  </cfif>
	
	</div>
</div>
</cfoutput>