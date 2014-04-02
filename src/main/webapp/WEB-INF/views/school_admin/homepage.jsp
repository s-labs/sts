<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- <a href="<c:url value="/j_spring_security_logout" />" > Logout</a>  -->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Dashboard</title>
<!-- Files to be loaded -->

<script type="text/javascript"
	src="<c:url value="/resources/jquery-1.11.0.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/project_js_file/homepage.js" />"></script>
<!-- Include CSS files -->
<%@ include file="jsp-includes/css_files.jsp"%>

<!-- Include JS files -->
<%@ include file="jsp-includes/js_files.jsp"%>

<script type="text/javascript">
	
		
	 </script>
</head>

<body>

	<!-- Include top navigation -->
	<%@include file="jsp-includes/top_navigation.jsp"%>

	<div id="container">
		<div id="sidebar" class="sidebar-fixed">
			<div id="sidebar-content">




				<!-- Left Navigation -->
				<%@include file="jsp-includes/left_navigation.jsp"%>





			</div>



			<div id="divider" class="resizeable"></div>

		</div>
		<!-- /Sidebar -->

		<div id="content">
			<div class="container">
				<!-- Breadcrumbs line -->
				<div class="crumbs">
					<ul id="breadcrumbs" class="breadcrumb">
						<li><i class="icon-home"></i> Dashboard</li>
						<li>Buses List</li>

					</ul>

					<ul class="crumb-buttons">


						<li><a href="#"> <i class="icon-calendar"></i>&nbsp;${date}
						</a></li>
					</ul>
				</div>
				<!-- /Breadcrumbs line -->

				<!--=== Page Header ===-->
				<div class="page-header">

					<div class="page-title">
						<h3>Current Running Buses List</h3>
						<!-- <span>Create,Update,Delete Schools List</span> -->
					</div>
					<br>
					<div class="col-sm-4 col-md-1"></div>


					<div class="col-sm-6 col-md-3">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual green">
									<i class="icon-user"></i>
								</div>
								<div class="title">Total Schools</div>
								<div class="value">${schools.size()}</div>

								<!-- Store temp School ID for deleting school -->
								<input type="hidden" id="store_schoolid" value="null">


							</div>

						</div>
						<!-- /.smallstat -->

					</div>
					<!-- /.col-md-3 -->

				</div>
				<!-- /Page Header -->

				<!--    Students List  -->

				<!--=== Managed Tables ===-->

				
				<!-- /Normal -->
			</div>
			<!-- /.container -->

		</div>
	</div>

	<!-- Modal dialog -->
	<div class="modal fade" id="myModal1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Remove School</h4>
				</div>
				<div class="modal-body">
					<div id="loading">

						<p align="center">Fetching data please wait....</p>

					</div>
					<div id="loadOver" style="display: none;">

						<h5>
							School Name:&nbsp;&nbsp;&nbsp;<font color="sienna;"
								id="modal_schoolid"></font>
						</h5>
						<br>
						<p id="afterRemove">Are you sure remove school?</p>
					</div>

				</div>
				<div class="modal-footer" id="footer" style="display: none;">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<a href="#" class="btn btn-danger" id="removeschoolaction">Remove</a>

				</div>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
	<!-- /.modal-dialog -->



</body>
</html>