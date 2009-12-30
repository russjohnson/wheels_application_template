<cfoutput>
  <div class="two-col-large-b left">
    <h1>Browse by</h1>
    
    <div style="margin-bottom:8px;padding:0;border-bottom:1px dotted ##ddd;">
      #linkTo(text="Name", route="people", sort="lastName", class="browse")#<br>
      <p style="line-height:100%;color:##666666;margin-top:-10px;">
        This will allow you to browse all of the users in alphabetical order.
      </p>
    </div>
    
    <div style="margin-bottom:8px;padding:0;border-bottom:1px dotted ##ddd;">
      #linkTo(text="Authority", route="people", sort="authority", class="browse")#<br>
      <p style="line-height:100%;color:##666666;margin-top:-10px;">
        Show all users according to thier Authoritative ranking. This score is calculated according to the authoritative fields in the users profile.
      </p>
    </div>
    
    <div style="margin-bottom:8px;padding:0;border-bottom:1px dotted ##ddd;">
      #linkTo(text="Recently Updated", route="people", sort="updated", class="browse")#<br>
      <p style="line-height:100%;color:##666666;margin-top:-10px;">
        Show all users that have been recently updated.
      </p>
    </div>
    
    <div style="margin-bottom:8px;padding:0;border-bottom:1px dotted ##ddd;">
      #linkTo(text="Twitter Users", route="twitterList", class="browse")#<br>
      <p style="line-height:100%;color:##666666;margin-top:-10px;">
        Listing of all users and their Twitter names.
      </p>
    </div>
    
   <!--- <ul>
    	<!---<li>#linkTo(text="Popularity", route="popularity")#</li>--->
      <li>
        #linkTo(text="Authority", route="people", sort="authority")#<br>
        <span class="small">This is some text that will explain how this sorts the users.</span>
      </li>
      <li>#linkTo(text="Name", route="people", sort="lastName")#</li>
      <!---<li><a href="##">Location</a></li>--->
      <li>#linkTo(text="Recently Updated", route="people", sort="updated")#</li>
    </ul>--->
  </div>
</cfoutput>