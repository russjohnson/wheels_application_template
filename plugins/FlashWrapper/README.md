# CFWheels Flash Wrapper

This [CFWheels](http://cfwheels.org/) plugin adds new parameters to [flash()](http://cfwheels.org/docs/1-1/function/flash) and [flashMessages()](http://cfwheels.org/docs/1-1/function/flashmessages) so their output can be wrapped with custom HTML.

## Usage

* Adds parameters prepend and append to [flash()](http://cfwheels.org/docs/1-1/function/flash).
* If the flash key name is one of error, info, or success, and there is a class of alert existing in the prepend argument string, a Twitter Bootstrap compatible class of either alert-error, alert-info, or alert-success will be added to the element according to the flash key name.

* Adds parameters prependToValue and appendToValue to [flashMessages()](http://cfwheels.org/docs/1-1/function/flashmessages).
* If a flash key name is one of error, info, or success, and there is a class of alert existing in the prependToValue argument string, a Twitter Bootstrap compatible class of either alert-error, alert-info, or alert-success will be added to the element according to the key name for each value in the flash.

Function default settings can be set from `/config/settings.cfm` or from any of the environment-specific settings files (e.g., `/config/design/settings.cfm`) using the [set()](http://cfwheels.org/docs/1-1/function/set) function.

Examples can be found within the index.cfm file after installation.

## Installation

Package the contents of this directory into a ZIP file and rename it to `FlashWrapper-0.1.zip`. Place this zip file into your CFWheels `/plugins` folder and then reload your application.

To uninstall this plugin, simply delete the `/plugins/FlashWrapper-0.1.zip` file.