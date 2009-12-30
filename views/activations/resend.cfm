<cfoutput>
  
  <h2>Resend Activation Code</h2>
  
  <p>
    If for some reason, you didnt receive your activation email, you can enter your email address below to have it sent to you.
  </p>
      
  #startFormTag(action="sendit", class="contactForm")#
    <div class="field">
      <label>Email</label>
      #textFieldTag(name="email", class="textbox")#
      <span class="hint">Email used to register your account</span>
    </div>
    <div class="field">
      #submitTag(value="Resend Activation", class="submit")#
    </div>
  #endFormTag()#

</cfoutput>