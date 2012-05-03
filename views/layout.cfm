<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<cfoutput>
		<title>CFWheels App Template</title>
		#styleSheetLinkTag(sources="bootstrap.min.css")#
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
	<cfoutput>
		#javaScriptIncludeTag(source="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
	</cfoutput>
</body>
</html>