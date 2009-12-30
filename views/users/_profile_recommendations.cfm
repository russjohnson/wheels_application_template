<script>
  $(document).ready(function() {
    $('#more-recommenders').hide();
    $('#more-recommendations').hide();
    
    $("#var").click(function(){
      $("#more-recommenders").slideToggle(600);
      return false;
    }); 
    
    $("#vare").click(function(){
      $("#more-recommendations").slideToggle(600);
      return false;
    }); 
  });
</script>

<cfif user.recommendationCount() gt 0>
  <cfoutput>
    <h6>#user.firstName# #user.lastName# has been recommended by ( <a id="var" href="##">#user.recommendationCount()#</a> )</h6>
  </cfoutput>
  <cfset recommendedBy = user.recommendations(include="recommender")>
  <cfset i = 1>
    
  <cfoutput query="recommendedBy">
    <cfif recommendedBy.recordCount gt 1 AND (i neq recommendedBy.recordCount +1) AND i neq 1>, </cfif>
    <cfif i eq 5><span id="more-recommenders"></cfif>
    #linkTo(text="#firstName# #lastName#", route="publicProfile", username="#username#")#
    <cfif i gte recommendedBy.recordCount></span></cfif>
    <cfset i = i + 1>
  </cfoutput>
  
  <cfset recommenderIDs = valueList(recommendedBy.recommenderID)>
    
<cfelse>
  <cfoutput><h6>#user.firstName# #user.lastName# has not been recommended yet</h6></cfoutput>
  <cfset recommenderIDs = '0'>
</cfif>


<cfif isLoggedIn() AND Not user.id eq session.currentUser.id AND Not listFind(recommenderIDs, session.currentUser.id)>
  <div style="padding-top:10px;">
    <cfoutput>
      #linkTo(text="Recommend", route="recommend", username="#user.username#", class="star icon")#
    </cfoutput>
  </div>
</cfif>

<cfif isObject(myRecommendation)>
  <div style="margin-top:5px; border:1px solid #fbb;text-align:center;padding:5px;">
    <cfoutput>
      You have recommended #user.firstName# #user.lastName#. 
      #linkTo(text="Edit", route="edit_recommendation", id=myRecommendation.id)#
    </cfoutput>
  </div>
</cfif>

<p></p>
<cfif user.recommenderCount() gt 0>
  <cfoutput><h6>#user.firstName# #user.lastName# recommends ( <a id="vare" href="##">#user.recommenderCount()#</a> )</h6></cfoutput>
  <cfset recommends = user.recommenders(include="user")>
  <cfset i = 1>
  <cfoutput query="recommends">
    <cfif recommends.recordCount gt 1 AND (i neq recommends.recordCount + 1) AND i neq 1>, </cfif>
    <cfif i eq 5><span id="more-recommendations"></cfif>
    #linkTo(text="#firstName# #lastName#", route="publicProfile", username="#username#")#
    <cfif i gte recommends.recordCount></span></cfif>
    <cfset i = i + 1>
  </cfoutput>
<cfelse>
  <cfoutput><h6>#user.firstName# #user.lastName# has not recommended anyone yet</h6></cfoutput>
</cfif>