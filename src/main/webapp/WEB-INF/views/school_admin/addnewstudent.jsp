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
						<li>Add New Student</li>
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
					<div class="col-md-8">
						<div class="widget box">
							<div class="widget-header">
								<h4><i class="icon-reorder"></i> Registration Form</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" id="validate-1" action="#">
									 <div class="form-group">
										<label class="col-md-3 control-label">Student Name <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="student_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Student Number <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="student_number" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">RFID Tag <span class="required">*</span></label>
										<div class="col-md-9 clearfix">
											<select name="chosen1" class="col-md-12 select2 full-width-fix required">
												<option></option>
												<option value="1">Option 1</option>
												<option value="2">Option 2</option>
												<option value="3">Option 3</option>
											</select>
											<label for="chosen1" generated="true" class="has-error help-block" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Gender<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="gender" class="required uniform"> Male</label>
											<label class="radio"><input type="radio" name="gender" class="uniform"> Female</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Bus Route Identifier<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="busroute_identifier" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Bus Stop Identifier<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="busstop_identifier" class="form-control required">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label">Teacher Name <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="teacher_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Teacher Identifier<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="teacher_id" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Home Need Assignment<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="homeroom_assignment" class="form-control required">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label">Father Name<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="father_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Father Phone Number<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="father_ph" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Texting For Email Address<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="father_email" class="form-control required email">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Retrieve no alerts at all<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="radio1" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="radio1" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email(If an emergency condition exists)<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="radio2" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="radio2" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email if child does not arrive at school<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="radio3" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="radio3" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text ot email if Bus is late<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="radio4" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="radio4" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Father Photo <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="file" name="fatherImage" class="required" accept="image/*" data-style="fileinput" data-inputsize="medium">
											<p class="help-block">Father Photo</p>
											<label for="file1" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">Mother Name<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="mother_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Mother Phone Number<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="mother_ph" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Texting For Email Address<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="mother_email" class="form-control required email">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Retrieve no alerts at all<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="mradio1" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="mradio1" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email(If an emergency condition exists)<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="mradio2" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="mradio2" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send text or email if child does not arrive at school<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="mradio3" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="mradio3" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text ot email if Bus is late<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="mradio4" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="mradio4" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Mother Photo <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="file" name="motherImage" class="required" accept="image/*" data-style="fileinput" data-inputsize="medium">
											<p class="help-block">Mother Photo</p>
											<label for="file12" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Emergency Contact Name<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="emergencycontactname" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Emergency Contact Number<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="emergencycontactphone" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Giver Name<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="caregiver_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Phone Number<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="caregiver_ph" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Giver Email<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="caregiver_email" class="form-control required email">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send Text or email to parent if child is not picked up at their stop<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="cgradio1" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="cgradio1" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text or email to parent if child does not arrive at school <span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="cgradio2" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="cgradio2" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Care Giver Photo <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="file" name="caregiver_image" class="required" accept="image/*" data-style="fileinput" data-inputsize="medium">
											<p class="help-block">Care Giver Image</p>
											<label for="file1" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Alternate Pick-up Person (Temporary)<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="req79" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Phone Number<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="req78" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Email Address<span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="req77" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send Text or email to parent if child is not picked up at their stop<span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="genr51" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="genr51" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Send a text or email to parent if child does not arrive at school <span class="required">*</span></label>
										<div class="col-md-9">
											<label class="radio"><input type="radio" name="gend515" class="required uniform"> Yes</label>
											<label class="radio"><input type="radio" name="gend515" class="uniform"> No</label>
											<label for="gender" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Alternate Person  Photo <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="file" name="file4" class="required" accept="image/*" data-style="fileinput" data-inputsize="medium">
											<p class="help-block">Alternate Person Image</p>
											<label for="file1" class="has-error help-block" generated="true" style="display:none;"></label>
										</div>
									</div>
									<div class="form-actions">
										<input type="submit" value="Add New Student" class="btn btn-primary pull-right">
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