<h1>My Account</h1>

<div class="clearfix">
  <div class="two-col-large-a left">
    
    <p>Your account details are listed below.</p>
    
    <cfoutput>
				
		<p><span class="label">Username:</span>
			#user.username#</p>
			
		<p><span class="label">First Name:</span>
			#user.firstName#</p>
	
		<p><span class="label">Last Name:</span>
			#user.lastName#</p>
	
		<p><span class="label">Email:</span>
			#user.email# <!---
			  TODO need to add a link to change the registered email here
			--->
		</p>
		
		<cfif user.hasProfile()>
        <div style="border:1px solid ##666666;background-color:##ddd;padding:5px;width:200px;">
          <span class="label">Public Profile:</span>
    		  #linkTo(text="View", route="publicProfile", username=user.username)#
    		  or
    		  #linkTo(text="Edit", route="editProfile", username=user.username)#
		</div>
        </cfif>
    
       
    <!--- <hr />
        
        <h2>Website Buttons</h2>
        
        <p>Want to place a badge on your website or blog to make it easy for people to recommend you? Just copy the code below and past it into wherever you want the badge displayed. Its that easy!</p>
        
        <textarea cols="80" rows="5">
    <a href="http://workingwithcfml.com/person/#user.username#">Recommend Me</a>
        </textarea> --->
    
    </cfoutput>
	</div>
					
	<cfoutput>#includePartial("/shared/account_sidebar")#</cfoutput>
</div>
