<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<cfoutput>
	    <title>CFWheels App Template</title>
	
	    #styleSheetLinkTag(sources="base.css,themes/#session.theme#/style.css, jqueryui/themes/drastic-dark/jquery-ui.css")#
	    #javaScriptIncludeTag(sources="jquery-1.3.2.min.js, jquery-ui-1.7.2.custom.min.js", type="text/javascript")#
	</cfoutput>
</head>
<body>
  <div id="container">
    <div id="header">
        <h1><a href="/">CFWheels App Template</a></h1>
        <cfoutput>
            #includePartial('/shared/user_navigation')#
            
            #includePartial('/shared/main_navigation')#
        </cfoutput>
    </div>
    <div id="wrapper">
      <div id="main">

        <cfoutput> #includePartial('/shared/render_flash')#</cfoutput>
          
        <div class="block">
          <cfoutput>#includePartial('/shared/secondary_navigation')#</cfoutput>

          <div class="content">
            <h2 class="title">Section title</h2>
            <div class="inner">
                <cfoutput>
                    #contentForLayout()#
                </cfoutput>
            </div>
          </div>
        </div>
                
        <cfoutput>#includePartial('/shared/footer')#</cfoutput>
      </div>
      
      <div id="sidebar">
        <cfoutput>
            #includePartial('/shared/sidebar')#
        </cfoutput>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</body>
</html>