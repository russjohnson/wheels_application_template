component extends="Controller" output="false" {
	
	public void function init(){
	}
	
	// accounts/index
	public void function index(){
		accounts = model("Account").findAll();
	}
	
	// accounts/show/key
	public void function show(){
		account = model("Account").findByKey(params.key);
			
		if (!IsObject(account)){
			flashInsert(error="Account #params.key# was not found");
			redirectTo(action="index");
		}
	}
	
	// accounts/new
	public void function new(){
		account = model("Account").new();
		user = model("User").new();
		renderPage(layout="/sessions/layout");
	}
	
	//accounts/edit/key
	public void function edit(){
		account = model("Account").findByKey(params.key);
			
		if (!IsObject(account)){
			flashInsert(error="Account #params.key# was not found");
			redirectTo(action="index");
		}
	}
	
	// accounts/create
	public void function create(){
		account = model("Account").new(params.account);

		if (account.save()){
			user = account.newUser(params.user);
			user.roles = 'owner';
			user.save();

			account.userid = user.id;
			account.save();

			sendEmail(from="noreply@yoursite.com", to=user.email, subject="Website account activation", template="new_account_activation_email", activationCode=user.activationCode);
			flashInsert(success="Thanks for signing up! You cannot login yet however. We have sent you an email with a link to verify your email address.");
			redirectTo(route="home");
		} else {
			flashInsert(error="There was an error creating the account.");
			renderPage(action="new", layout="/sessions/layout");
		}
	}
	
	// accounts/update
	public void function update(){
		account = model("Account").findByKey(params.key);
		
		if (account.update(params.account)){
			flashInsert(success="The account was updated successfully.");
			redirectTo(action="index");
		} else {
			flashInsert(error="There was an error updating the account.");
			renderPage(action="edit");
		}
	}
	
	// accounts/delete/key
	public void function delete(){
		account = model("Account").findByKey(params.key);

		if (account.delete()){
			flashInsert(success="The account was deleted successfully.");
			redirectTo(action="index");
		} else {
			flashInsert(error="There was an error deleting the account.");
			redirectTo(action="index");
		}
	}
	
}
