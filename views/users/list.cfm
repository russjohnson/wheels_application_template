<div class="clearfix">
	<div class="two-col-large-a left">
	  
	  <cfif users.recordCount lt 1>
  
      <h2>No Results</h2>
      
      Try using less search terms, such as only searching for the persons first or last name.

    <cfelse>
    
      <cfoutput query="users">
      <div class="clearfix">
      <div class="portfolio-thubmanil left">
        <p class="gallery">
          
          <cfif avatar is NOT "">
             #linkTo(text="#imageTag(source='#avatar#', class='border left', width='176')#", route="publicProfile", username="#username#")#
          <cfelse>
            #linkTo(text="#imageTag(source='default_user.png', class='border left', width='176')#", route="publicProfile", username="#username#")#
          </cfif>
          
        </p>
      </div>

      <div class="portfolio-details left">
        <h5>#linkTo(text="#firstName# #lastName#", route="publicProfile", username="#username#")#<cfif availableForHire><span class="small"><em> - available for hire</em><span></cfif></h5>
        <p>#truncate(text=description, length="500")#</p>
        <p>
           #linkTo(text="View Profile", route="publicProfile", username="#username#", class="mouse icon")#
          <cfif website is NOT "">
            <a href="#website#" class="computer icon" target="new">View Website</a>
          </cfif>
          <cfif isLoggedIn() and session.currentUser.id neq userid>
            #linkTo(text="Recommend", route="recommend", username="#username#", class="star icon")#
          </cfif>
        </p>
      </div>
      </div> <!--- end clearfix --->
      <hr />
      </cfoutput>

  	<cfoutput>
  	  <div class="pagination">
  	    <cfif pagination().totalPages neq 1>
    	  <cfif params.action is "list">
    	    
    	    <cfif params.page neq 1>
    	      #linkTo(text="&##171; Previous", route="paginatedPeople", sort=params.sort, page=params.page-1)#
    	    <cfelse>
    	      <span class="disabled">&##171; Previous</span>
    	    </cfif>
    	      #paginationLinks(route="paginatedPeople", sort=params.sort, classForCurrent="current", windowSize="4")#
    	    <cfif params.page eq pagination().totalPages>
    	      <span class="disabled">Next &##187;</span>
    	    <cfelse>
    	      #linkTo(text="Next &##187;", route="paginatedPeople", sort=params.sort, page=params.page+1)#
    	    </cfif>
    	  <cfelseif params.action is "search">
    	    <cfif params.page neq 1>
    	      #linkTo(text="&##171; Previous", route="paginatedSearch", searchTerm=params.searchTerm, page=params.page-1)#
    	    <cfelse>
    	      <span class="disabled">&##171; Previous</span>
    	    </cfif>
    	      #paginationLinks(route="paginatedSearch", searchTerm=params.searchTerm, classForCurrent="current", windowSize="4")#
    	    <cfif params.page eq pagination().totalPages>
    	      <span class="disabled">Next &##187;</span>
    	    <cfelse>
    	      #linkTo(text="Next &##187;", route="paginatedSearch", searchTerm=params.searchTerm, page=params.page+1)#
    	    </cfif>
        </cfif>
    	  </cfif>
  	  </div>
  	</cfoutput>
	  </cfif>
  </div>
  
  
  <cfoutput>#includePartial("browse_links")#</cfoutput>
</div>
