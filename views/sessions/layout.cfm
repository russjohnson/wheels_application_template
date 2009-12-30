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
        <div id="wrapper">
            <div class="content">
                <div class="inner">
                    <cfoutput>#contentForLayout()#</cfoutput>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</body>
</html>