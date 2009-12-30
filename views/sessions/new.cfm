<cfoutput>

<!--- <div class="clearfix">
                
    <div class="two-col-b left">
      
      <h4>Resend Activation Email</h4>
      <p>Have you already created an account but didnt receive your activation email for some reason? Click <a href="/activations/resend">here to resend</a> it.</p>
      
      <h4>Reset My Password</h4>
      <p>Enter your email address and click reset password and we will send you instructions on how to reset your password.</p>
        #startFormTag(route="resetPassword", class="contactForm", name="resetPassword")#
    <div class="field">
      <label>Email</label><span class="hint">Email used to register your account</span>
      #textFieldTag(name="email", class="textbox")#
      
    </div>
    <div class="field">
      #submitTag(value="Reset Password", class="submit")#
    </div>
  #endFormTag()#
    
    </div>
</div> --->




<div id="box">
    <h1> Please sign in or #linkTo(text="create an account", route="signup")#</h1>
    <div class="block" id="block-login">
        <h2>Listy</h2>
        <div class="content login">
            #includePartial('/shared/render_flash')#
            <!--- <div class="flash">
                            <div class="message notice">
                                <p>Logged in successfully</p>
                            </div>
                        </div> --->
            #startFormTag(action="create", class="form login")#
                <div class="group">
                    #textFieldTag(name="login", 
                                  label="Username", 
                                  labelPlacement="before", 
                                  prepend="<div class='right'>", 
                                  append="</div>", 
                                  prependToLabel="<div class='left'>", 
                                  appendToLabel="</div>", 
                                  class="text_field", 
                                  labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group">
                    #passwordFieldTag(name="password", 
                                  label="Password", 
                                  labelPlacement="before", 
                                  prepend="<div class='right'>", 
                                  append="</div>", 
                                  prependToLabel="<div class='left'>", 
                                  appendToLabel="</div>", 
                                  class="text_field", 
                                  labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group navform">
                    <div class="right">
                        <button class="button" type="submit">
                            <img src="/images/icons/key.png" alt="Save" /> Login
                        </button>
                        <div class="clear"></div>                                
                    </div>
                    <div class="clear"></div>
                </div>
            #endFormTag()#
        </div>
    </div>
</div>
</cfoutput>