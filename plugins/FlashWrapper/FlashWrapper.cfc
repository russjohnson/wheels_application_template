component output="false" {
	
	include "controller/flash.cfm";
	
	/**
	 * @hint Initializes plugin
	 */
	public any function init() {
		this.version = "1.1.7";
		return this;
	}
	
}