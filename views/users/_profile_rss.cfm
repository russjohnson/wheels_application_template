<cfset feedDown = false>
  
<cfoutput>
  <cfif profile.blogRSS is NOT "">
	  <h3>Recent Blog Posts By #user.firstName#</h3>
	  
	  <cftry>
	    
	    <cffeed action="read" name="blogFeed" source="#profile.blogRSS#" />
	    <cfcatch type="any">
	      <cfset feedDown = true>
	    </cfcatch>
	  </cftry>
	  
	  <cfif feedDown>
	    There was a problem accessing this users RSS feed.
	  <cfelse>
	    <cfif structKeyExists(blogFeed, 'item') AND  arrayLen(blogFeed.item) gt 0>
	    
	    <cfif arrayLen(blogFeed.item) gt 5>
	       <cfset maxItems = 5>
	    <cfelse>
	        <cfset maxItems = arrayLen(blogFeed.item)>
	    </cfif>    
	    
	    <cfloop index="i" from="1" to="#maxItems#">
  	    <div class="recent-post"><a href="#blogFeed.item[i].link#">#blogFeed.item[i].title#</a>
  	      <cfif structKeyExists(blogFeed.item[i], 'pubDate') AND isDate(blogFeed.item[i].pubDate)>
  	        <br/>
  	        <span class="small">(#timeAgoInWords(blogFeed.item[i].pubDate)# ago)</span>
  	      </cfif>
  	    </div>
  	  </cfloop>
  	  <cfelse>
  	    There was a problem parsing this users RSS feed.
  	  </cfif>
	  </cfif>
	  <hr/>
	</cfif>
			
	<cfif profile.deliciousRSS is NOT "">
	  <div style="float:left;margin-right:3px;"><img src="/images/icon_delicious.png"></div>
	  <a href="#profile.deliciousRSS#" style="padding:5px;">
	    Subscribe to #user.firstName# #user.lastName#'s del.icio.us updates
	  </a>
	</cfif>
</cfoutput>