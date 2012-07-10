component extends="Model" output="false" {

	public void function init() {
		hasMany('users');

		validatesPresenceOf(property="name", message="The account name is required");
		validatesUniquenessOf(property="name", message="That account name is already in our system.");
		validatesLengthOf(property="name", minimum="5", maximum="30", allowBlank=true);
		validatesFormatOf(property="name", regEx="^[a-zA-Z0-9]+$", message="Your account name can only contain letters and numbers");
	}

}
