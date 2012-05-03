<!DOCTYPE html>
<html lang="en">
		<head>
				<meta charset="utf-8">
				<title>CFWheels App Template</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<meta name="description" content="">
				<meta name="author" content="">

				<cfoutput>
						#styleSheetLinkTag(sources="bootstrap.min.css, custom.css")#
				</cfoutput>
				<style type="text/css">
						body {
								padding-top: 60px;
								padding-bottom: 40px;
						}
				</style>

				<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
				<!--[if lt IE 9]>
						<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
				<![endif]-->
		</head>

		<body>

				<cfoutput>
						#includePartial('/shared/main_navigation')#
				</cfoutput>

				<div class="container">

					<cfoutput>#includePartial('/shared/render_flash')#</cfoutput>

						<!-- Main hero unit for a primary marketing message or call to action -->
						<div>
								
								<cfoutput>#contentForLayout()#</cfoutput>
								
						</div>

						<hr>

						<cfoutput>
								#includePartial('/shared/footer')#
						</cfoutput>

				</div> <!-- /container -->

				<cfoutput>
						#javaScriptIncludeTag(source="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
				</cfoutput>

		</body>
</html>
