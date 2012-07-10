component output="false" extends="Controller" {
		
		public void function init(){
				filters(through="loginRequired", only="myaccount, edit, update");
				filters(through="isAdmin", only="delete");
		}
		
		public void function index(){
				users = model("User").findAll();
		}
		
		public void function myaccount(){
				if (Not session.currentUser.username is params.username){
					 redirectTo(route="home");
				}
		
				user = model("User").findOneByUsername(params.username);
			
				// Check if the record exists
				if (NOT IsObject(user)){
						flashInsert(info="User #params.key# was not found");
						
						try{
								redirectTo(back=true);
						}
						catch("Wheels.RedirectBackError" exception){
							redirectTo(action="index");
					}
				}
		}
		
		public void function new(){
				user = model("User").new();
				renderPage(layout="/sessions/layout");
		}
		
		public void function edit(){
				user = model("User").findByKey(params.key);
		
				// Check if the record exists
				if (NOT IsObject(user)){
						
						flashInsert(info="User #params.key# was not found");
			
						try{
								redirectTo(back=true);
						}
						catch("Wheels.RedirectBackError" exception){
								redirectTo(action="index");
						}
				}
		}
		
		public void function create(){
				user = model("User").new(params.user);
		//writeDump(var=user,abort=true);
		if (user.save()){

				sendEmail(from="admin@yoursite.com", to=user.email, subject="Website account activation", template="new_user_activation_email", activationCode=user.activationCode);
			flashInsert(success="Thanks for signing up! You cannot login yet however. We have sent you an email with a link to verify your email address.");
						redirectTo(route="home");
		} else {
			flashInsert(error="There was an error creating the user.");
			renderPage(action="new", layout="/sessions/layout");
		}
		}
		
		public void function update(){
				user = model("User").findByKey(params.key);
		
		// Verify that the user updates successfully
		if (user.update(params.user)){
			flashInsert(success="The user was updated successfully.");
						redirectTo(action="index");
		} else {
			flashInsert(error="There was an error updating the user.");
			renderPage(action="edit");
		}
		}
		
		public void function resetPassword(){
				user = model('user').findOneByEmail(params.email);
	 
			if (isObject(user)){
			
					if (user.activatedAt is ""){
							flashInsert(error="You havent activated your account yet. You must do that first.");
					redirectTo(route="login");
					}
			
					newReset = user.newPasswordReset();
					newReset.email = user.email;
					newReset.remoteIP = cgi.remote_addr;
					newReset.token = createUUID();
					newReset.save();
					sendEmail(from="admin@workingwithcfml.com", to=user.email, subject="WorkingWithCFML.com password reset request", template="password_reset_email", token=newReset.token);
			
			flashInsert(success="We have sent an email to you with a link that will allow you to reset your password.");
						redirectTo(route="home");
		} else {
				flashInsert(error="There was no account found for the email address you supplied.");
			redirectTo(route="login");
			}
		}
		
		public void function resetPasswordForm() {
				if (Not structKeyExists(params, 'token')){
						flashInsert(error="There was no reset code in the URL you are trying to use. Please make sure to click on the link in your email.");
						redirectTo(route="home");
				}

				passwordReset = model('passwordReset').findOneByToken(params.token);

				if (isObject(passwordReset) and not passwordReset.reset){
						user = passwordReset.user();

						if (Not isObject(user)){
							flashInsert(error="No user was found for that password reset code.");
							redirectTo(route='home');
						}
				} else {
						flashInsert(error="The reset code you provided is no longer valid.");
						redirectTo(route='home');
				}
		}
		
		public void function saveNewPassword() {
				if (not structKeyExists(params, 'token')){
						flashInsert(error="You have submitted an invalid request.");
						redirectTo(route="home");
				}

				resetRequest = model('passwordReset').findOneByToken(params.token);

				if (not isObject(resetRequest)){
						flashInsert(error="You have submitted an invalid request.");
						redirectTo(route="home");
				}  

				user = model('user').findByKey(params.user.id);

				if (user.id == resetRequest.userID){
						user.password = params.user.password;
						if (user.update()){
								resetRequest.reset = 1;
								resetRequest.update();
								flashInsert(success="Your password has been reset. You may now login.");
								redirectTo(route="home");
						} else {
								renderPage(action="resetPasswordForm", token=params.token);
						}
				} else {
						flashInsert(error="You have submitted an invalid request.");
						redirectTo(route="home");
				}
		}
		
} // end component