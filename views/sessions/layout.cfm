<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<cfoutput>
	    <title>Listy</title>
	
	    #styleSheetLinkTag(sources="base.css,themes/drastic-dark/style.css")#
	    #javaScriptIncludeTag(sources="jquery-1.3.min.js", type="text/javascript")#
	</cfoutput>
</head>
<body>
  <div id="container">
    <!--- <div id="header">
          <h1><a href="index.html">Listy</a></h1>
          <div id="user-navigation">
            <ul>
              <li><a href="#">Profile</a></li>
              <li><a href="#">Settings</a></li>
              <li><a class="logout" href="#">Logout</a></li>
            </ul>
            <div class="clear"></div>
          </div>
          <div id="main-navigation">
            <ul>
              <li class="first"><a href="#block-text">Main Page</a></li>
              <li class="active"><a href="#block-text">Active</a></li>
              <li><a href="#block-login">Login</a></li>
              <li><a href="#block-signup">Signup</a></li>
            </ul>
            <div class="clear"></div>
          </div>
        </div> --->
    <div id="wrapper">
      <!--- <div id="main"> --->

          <div class="content">
            <div class="inner">
              <cfoutput>#contentForLayout()#</cfoutput>
            </div>
          </div>
        </div>

                
        <!--- <div id="footer">
                  <div class="block">
                    <p>Copyright &copy; 2009 Your Site.</p>
                  </div>
                </div> --->
      <!--- </div> --->
      
      <div class="clear"></div>
    </div>
  </div>
</body>
</html>