<h1>Edit recommendation for <cfoutput>#user.firstname# #user.lastName#</cfoutput></h1>

<div class="clearfix">
	<div class="two-col-a left">
   Please check all that apply to the ways you have interacted with this person.
   
   <cfoutput>
     <div>
      #startFormTag(action="updateRecommendation", class="contactForm", key=params.id)#
      
        #hiddenField(objectName="recommendation", property="userID")#
        
        #hiddenField(objectName="recommendation", property="recommenderID")#
        
        <div class="field">
          #checkBox(objectName="recommendation", property="workedWith", checkedValue="1", uncheckedValue="0")# 
          I have worked with #user.firstName# #user.lastName#
        </div>
        <div class="field">
          #checkBox(objectName="recommendation", property="readBlog", checkedValue="1", uncheckedValue="0")# 
          I have read their blog
        </div>
        <div class="field">
          #checkBox(objectName="recommendation", property="usedCode", checkedValue="1", uncheckedValue="0")# 
          I have used code that #user.firstName# #user.lastName# has written ie., custom tag, opensource project, etc.
        </div>
        <div class="field">
          #checkBox(objectName="recommendation", property="met", checkedValue="1", uncheckedValue="0")# 
          I have met #user.firstName# #user.lastName# in person
        </div>
        <div class="field">
          #checkBox(objectName="recommendation", property="sawSpeak", checkedValue="1", uncheckedValue="0")# 
          I saw #user.firstName# #user.lastName# speak at a CFML related event
        </div>
        <div class="field">
          #checkBox(objectName="recommendation", property="readPublication", checkedValue="1", uncheckedValue="0")# 
          I have read a publication by #user.firstName# #user.lastName# ie., book, magazine article
        </div>
        <div class="field">
          #checkBox(objectName="recommendation", property="receivedTraining", checkedValue="1", uncheckedValue="0")# 
          I have received training/mentoring from #user.firstName# #user.lastName#
        </div>
        
        <!---
          TODO Need to throw a captcha in here for security
        --->
        <p></p>
        <div class="field">
          #textField(objectName="recommendation", property="comments", label="Comments", wrapLabel="false", class="textbox")# 
          <span class="hint">Optional</span>
        </div>
        <div class="field">
          #submitTag(value="Save Changes", class="submit")#
        </div>
      #endFormTag()#
     </div>
    </cfoutput>
  </div>
					
	<div class="two-col-b left">

	</div>
</div>