<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<cfoutput>
	    <title>Listy</title>
	
	    #styleSheetLinkTag(sources="base.css,themes/drastic-dark/style.css, jqueryui/themes/drastic-dark/jquery-ui.css")#
	    #javaScriptIncludeTag(sources="jquery-1.3.2.min.js, jquery-ui-1.7.2.custom.min.js", type="text/javascript")#
	</cfoutput>
</head>
<body>
  <div id="container">
    <div id="header">
        <h1><a href="index.html">Listy</a></h1>
        <cfoutput>
            #includePartial('/shared/user_navigation')#
            
            #includePartial('/shared/main_navigation')#
        </cfoutput>
    </div>
    <div id="wrapper">
      <div id="main">
        <cfoutput>
            #includePartial('/shared/render_flash')#
        
            #contentForLayout()#
                
            #includePartial('/shared/footer')#
        </cfoutput>
      </div>
      
      <div id="sidebar">
        <div class="block">
          <h3>Simple Block</h3>
          <div class="content">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
          </div>
        </div>
        <div class="block">
          <h3>Switch Theme</h3>
          <ul class="navigation">
            <li><a href="#" onclick="Theme.activate('default'); return false;">Default</a></li>
            <li class="last"><a href="#" onclick="Theme.activate('bec'); return false;">Bec</a></li>
            <li class="last"><a href="#" onclick="Theme.activate('bec-green'); return false;">Bec-Green</a></li>
            <li><a href="#" onclick="Theme.activate('blue'); return false;">Blue</a></li>
	    <li><a href="#" onclick="Theme.activate('djime-cerulean'); return false;">Djime-Cerulean</a></li>
            <li><a href="#" onclick="Theme.activate('reidb-greenish'); return false;">Greenish</a></li>
            <li><a href="#" onclick="Theme.activate('kathleene'); return false;">Kathleene</a></li>
            <li><a href="#" onclick="Theme.activate('orange'); return false;">Orange</a></li>
            <li><a href="#" onclick="Theme.activate('drastic-dark'); return false;">Drastic Dark</a></li>
            <li><a href="#" onclick="Theme.activate('warehouse'); return false;">Warehouse</a></li>
          </ul>
        </div>
        <div class="block">
          <h3>Sidebar</h3>
          <ul class="navigation">
            <li><a href="#block-text">Text</a></li>
            <li><a href="#block-tables">Tables</a></li>
            <li><a href="#block-forms">Forms</a></li>
            <li><a href="#block-messages">Messages</a></li>
            <li><a href="#block-forms-2">2 Columns Forms</a></li>
            <li><a href="#block-lists">Lists</a></li>
          </ul>
        </div>
        <div class="block notice">
          <h4>Notice Title</h4>
          <p>Morbi posuere urna vitae nunc. Curabitur ultrices, lorem ac aliquam blandit, lectus eros hendrerit eros, at eleifend libero ipsum hendrerit urna. Suspendisse viverra. Morbi ut magna. Praesent id ipsum. Sed feugiat ipsum ut felis. Fusce vitae nibh sed risus commodo pulvinar. Duis ut dolor. Cras ac erat pulvinar tortor porta sodales. Aenean tempor venenatis dolor.</p>
        </div>
        <div class="block">
          <div class="sidebar-block">
            <h4>Sidebar Inner block Title</h4>
            <p>Morbi posuere urna vitae nunc. Curabitur ultrices, lorem ac <a href="#">aliquam blandit</a>, lectus eros hendrerit eros, at eleifend libero ipsum hendrerit urna. Suspendisse viverra. Morbi ut magna. Praesent id ipsum. Sed feugiat ipsum ut felis. Fusce vitae nibh sed risus commodo pulvinar. Duis ut dolor. Cras ac erat pulvinar tortor porta sodales. Aenean tempor venenatis dolor.</p>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</body>
</html>