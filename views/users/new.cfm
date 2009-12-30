<cfoutput>
    <div id="box">
    <h1> Please complete the form to create your account</h1>
    <div class="block" id="block-login">
        <h2>CFWheels App Template</h2>
        <div class="content login">
            #errorMessagesFor("user")#
            
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