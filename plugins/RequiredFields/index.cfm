<cfsetting enablecfoutputonly="true">

<cfset requiredFieldsMeta = {}>
<cfset requiredFieldsMeta.version = "0.5">

<cfinclude template="stylesheets/style.cfm">

<cfoutput>

<h1>Required Fields v#requiredFieldsMeta.version#</h1>
<p>
	Use this plugin to append a marked up asterisk to the labels of required fields.
</p>
<p>
	By default the added markup looks like this:
</p>
<pre>
&lt;span class=&quot;required&quot;&gt;*&lt;/span&gt;
</pre>

<h2>Usage/Examples</h2>
<p>
	The plugin will look at validations set on the object form helpers' properties to determine whether or
	not <tt><a href="http://cfwheels.org/docs/function/validatespresenceof">validatesPresenceOf()</a></tt>
	is set (<a href="http://cfwheels.org/docs/1-1/chapter/object-validation">manually or automatically</a>).
</p>
<p>
	You can override this by behavior when calling the form helper as well. Just set the <tt>required</tt>
	argument to <tt>true</tt> or <tt>false</tt> in the call to the form helper:
</p>
<pre>
&lt;!--- Force `name` field to required ---&gt;
##textField(objectName=&quot;category&quot;, property=&quot;name&quot;, required=true)##

&lt;!--- Force `slug` field to optional ---&gt;
##textField(objectName=&quot;category&quot;, property=&quot;slug&quot;, required=false)##
</pre>

<p>
	You can also use this plugin with the form tag functions by manually adding the <tt>required</tt>
	argument.
</p>
<pre>
&lt;--- The &quot;Tag&quot; form helpers always need the `required` argument ---&gt;
##textFieldTag(name=&quot;Search&quot;, value=params.search, required=true)##
</pre>

<h2>Configuration</h2>
<p>
	You can modify some minor details of the required field indicator that appears. (By default, it is an
	asterisk.)
</p>
<p>
	Just set the following variables in <tt>config/settings.cfm</tt> or <tt>events/onapplicationstart.cfm</tt>
	to override.
</p>
<table>
	<thead>
		<tr>
			<th>Setting</th>
			<th>Type</th>
			<th>Default</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><tt>application.requiredFields.containerElement</tt></td>
			<td><tt>string</tt></td>
			<td><tt>span</tt></td>
			<td>Container element around required field indicator.</td>
		</tr>
		<tr class="highlight">
			<td><tt>application.requiredFields.containerClass</tt></td>
			<td><tt>string</tt></td>
			<td><tt>required</tt></td>
			<td>Class set on container element around required field indicator.</td>
		</tr>
		<tr>
			<td><tt>application.requiredFields.indicatorText</tt></td>
			<td><tt>string</tt></td>
			<td><tt>*</tt></td>
			<td>Required field indicator.</td>
		</tr>
	</tbody>
</table>

<h2>Uninstallation</h2>
<p>To uninstall this plugin, simply delete the <tt>/plugins/RequiredFields-#requiredFieldsMeta.version#.zip</tt> file.</p>

<h2>Credits</h2>
<p>
	This plugin was created by <a href="http://www.clearcrystalmedia.com/pm/">Chris Peters</a> with support from
	<a href="http://www.liquifusion.com/">Liquifusion Studios</a>. Thanks to
	<a href="http://www.iamjamesgibson.com/">James Gibson</a> for technical advice and
	<a href="http://talltroym.posterous.com/">Troy Murray</a> for assistance with Wheels compatibility testing. 
</p>
<p>
	To submit an issue or fork this plugin, visit the
	<a href="http://github.com/liquifusion/cfwheels-required-fields">liquifusion/cfwheels-required-fields</a>
	repository on GitHub.
</p>

</cfoutput>

<cfsetting enablecfoutputonly="false">