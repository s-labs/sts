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
	src="<c:url value="/resources/project_js_file/students_list.js" />"></script>
<!-- Include CSS files -->
<%@ include file="jsp-includes/css_files.jsp"%>

<!-- Include JS files -->
<%@ include file="jsp-includes/js_files.jsp"%>

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
						<li>
							<i class="icon-home"></i>
							<a href="homepage">Dashboard</a>
						</li>
						<li><a href="students_list">Students List</a></li>
						<li>View Student</li>
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
						<h3>New Student Form</h3>
						
					</div>
					<br>
					<div class="col-sm-4 col-md-1"></div>


					
					<!-- /.col-md-3 -->
					<!--=== Page Header ===-->
					<div class="page-header"></div>
				
				<div class="row">
					<!--=== Validation Example 1 ===-->
					<div class="col-md-10">
						<div class="widget box">
							<div class="widget-header">
								<h4><i class="icon-reorder"></i> Registration Form</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" id="validate-1" action="#">
									 <div class="form-group">
										<label class="col-md-3 control-label">Student Name <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Student Number <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">RFID Tag <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Gender<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Bus Route Identifier<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Bus Stop Identifier<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">GPS Co-ordinates <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Teacher Name <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Teacher Identifier<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Home Need Assignment<span class="required">*</span></label>
										
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label">Father Name<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Father Phone Number<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Texting For Email Address<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Retrieve no alerts at all<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email(If an emergency condition exists)<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email if child does not arrive at school<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text ot email if Bus is late<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Father Photo <span class="required">*</span></label>
										
									</div>
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">Mother Name<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Mother Phone Number<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Texting For Email Address<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Retrieve no alerts at all<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email(If an emergency condition exists)<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email if child does not arrive at school<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text ot email if Bus is late<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Mother Photo <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Emergency Contact Name<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Emergency Contact Number<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Giver Name<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Phone Number<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Giver Email<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send Text or email to parent if child is not picked up at their stop<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text or email to parent if child does not arrive at school <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Giver Photo <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Alternate Pick-up Person (Temporary)<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Phone Number<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Email Address<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send Text or email to parent if child is not picked up at their stop<span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text or email to parent if child does not arrive at school <span class="required">*</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Alternate Person  Photo <span class="required">*</span></label>
										
									</div>
									<div class="form-actions">
										<input type="submit" value="Validate Me" class="btn btn-primary pull-right">
									</div>
								</form>
							</div>
						</div>
						<!-- /Validation Example 1 -->
					</div>
					</div>
				
					<!-- /Normal -->
					<!-- /Page Content -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /Page Header -->

			<!--    Students List  -->

			<!--=== Managed Tables ===-->


			<!-- /Normal -->
		</div>
		<!-- /.container -->

	</div>
	




</body>
</html>