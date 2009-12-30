<cfoutput>
    <div id="box">
    <h1> Please complete the form to create your account</h1>
    <div class="block" id="block-login">
        <h2>Listy</h2>
        <div class="content login">
            #errorMessagesFor("user")#
            <!--- <div class="flash">
                            <div class="message notice">
                                <p>Logged in successfully</p>
                            </div>
                        </div> --->
            #startFormTag(action="create", class="form login")#
                <div class="group">
                    <div class="right">
                        <em>*</em>All fields are required
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="group">
                    #textField(objectName='user', property="username", label="Username", labelPlacement="before", prepend="<div class='right'>", append="</div>", prependToLabel="<div class='left'>",appendToLabel="</div>", class="text_field", labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group">
                    #textField(objectName='user', property="firstName", label="First Name", labelPlacement="before", prepend="<div class='right'>", append="</div>", prependToLabel="<div class='left'>",appendToLabel="</div>", class="text_field", labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group">
                    #textField(objectName='user', property="lastName", label="Last Name", labelPlacement="before", prepend="<div class='right'>", append="</div>", prependToLabel="<div class='left'>",appendToLabel="</div>", class="text_field", labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group">
                    #textField(objectName='user', property="email", label="Email", labelPlacement="before", prepend="<div class='right'>", append="</div>", prependToLabel="<div class='left'>",appendToLabel="</div>", class="text_field", labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group">
                    #passwordField(objectName="user", property="password", label="Password", labelPlacement="before", prepend="<div class='right'>", append="</div>", prependToLabel="<div class='left'>", appendToLabel="</div>", class="text_field", labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group">
                    #passwordField(objectName="user", property="passwordConfirmation", label="Confirm Password", labelPlacement="before", prepend="<div class='right'>", append="</div>", prependToLabel="<div class='left'>", appendToLabel="</div>", class="text_field", labelClass="label right")#
                    <div class="clear"></div>
                </div>
                <div class="group navform">
                    <div class="right">
                        <button class="button" type="submit">
                            <img src="/images/icons/key.png" alt="Save" /> Create Account
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

<!--- <h2>Sign up</h2>

<div class="clearfix">
    <div class="two-col-a left">

<cfoutput>
    #errorMessagesFor("user")#

    #startFormTag(action="create", class="contactForm")#
    
      <p>
        <label>Username</label>
          #textField(objectName='user', property='username', class="textbox")#
          <span class="hint">4 - 25 characters</span>
        </p>
        
        <p>
          <label>First Name</label>
            #textField(objectName='user', property='firstName', class="textbox")#
            <span class="hint">required</span>
        </p>
        
        <p>
          <label>Last Name</label>
            #textField(objectName='user', property='lastName', class="textbox")#
            <span class="hint">required</span>
        </p>
                    
        <p>
          <label>Email</label>
            #textField(objectName='user', property='email', class="textbox")#
            <span class="hint">required</span>
        </p>
            
        <p>
          <label>Password</label>
          #passwordField(objectName='user', property='password', class="textbox")#
          <span class="hint">required</span>
        </p>
        
        <p>
          <label>Confirm Password</label>
            #passwordField(objectName='user', property='passwordConfirmation', class="textbox")#
            <span class="hint">required</span>
        </p>

    #submitTag(value="Create Account", class="submit")#
        
    #endFormTag()#
    </div>
    <div class="two-col-b left">
            
    <h4>Resend Activation Email</h4>
      <p>Have you already created an account but didnt receive your activation email for some reason? Click <a href="/activations/resend">here to resend</a> it.</p>
      
    </div>
</div>
</cfoutput> --->
