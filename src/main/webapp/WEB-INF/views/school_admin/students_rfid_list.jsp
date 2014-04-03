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


<script type="text/javascript"	src="<c:url value="/resources/jquery-1.11.0.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/project_js_file/students.js" />"></script>
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
						<li><i class="icon-home"></i><a href="homepage"> Dashboard</a></li>
						<li>Student RFID List</li>

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
						<h3>Student RFID List</h3>
						<span>Create,Update,Delete Student RFID List</span>
					</div>
					<br>
					<div class="col-sm-4 col-md-1"></div>


					<div class="col-sm-4 col-md-2">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual green">
									<i class="icon-user"></i>
								</div>
								<div class="title">Total RFIDs</div>
								<div class="value">${schools.size()}</div>

								<!-- Store temp School ID for deleting school -->
								<input type="hidden" id="store_schoolid" value="null">

							</div>
							
						</div>
						
						<!-- /.smallstat -->

					</div>
					<div class="col-sm-5 col-md-3">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual green">
									<i class="icon-user"></i>
								</div>
								<div class="title">Available RFIDs</div>
								<div class="value">${schools.size()}</div>

								<!-- Store temp School ID for deleting school -->
								<input type="hidden" id="store_schoolid" value="null">

							</div>
							
						</div>
						
						<!-- /.smallstat -->

					</div>
					<div class="col-sm-4 col-md-2">
						<div class="statbox widget box box-shadow">
							<div class="widget-content">
								<div class="visual green">
									<i class="icon-user"></i>
								</div>
								<div class="title">Alloted RFIDs</div>
								<div class="value">${schools.size()}</div>

								<!-- Store temp School ID for deleting school -->
								<input type="hidden" id="store_schoolid" value="null">

							</div>
							
						</div>
						
						<!-- /.smallstat -->

					</div>
					<!-- /.col-md-3 -->
					<!--=== Page Header ===-->
				<div class="page-header">
				
				</div>
				<!-- /Page Header -->

				<!--=== Page Content ===-->
				<!--=== Managed Tables ===-->



					<div class="col-md-12">
						<a data-toggle="modal" href="#myModal1" class="btn btn-primary"><i
							class="icon-plus"></i></span>  New  RFID</a>
					</div>
					<br>
					<!--=== Normal ===-->
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4><i class="icon-reorder"></i>Student RFID List</h4>
								<div class="toolbar no-padding">
									<div class="btn-group">
										<span class="btn btn-xs widget-collapse"><i class="icon-angle-down"></i></span>
									</div>
								</div>
							</div>
							<div class="widget-content">
								<table class="table table-striped table-bordered table-hover table-checkable datatable">
									<thead>
										<tr>
											<th class="checkbox-column">
												<input type="checkbox" class="uniform">
											</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th class="hidden-xs">Username</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Joey</td>
											<td>Greyson</td>
											<td class="hidden-xs">joey123</td>
											<td><span class="label label-success">Approved</span></td>
										</tr>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Wolf</td>
											<td>Bud</td>
											<td class="hidden-xs">wolfy</td>
											<td><span class="label label-info">Pending</span></td>
										</tr>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Darin</td>
											<td>Alec</td>
											<td class="hidden-xs">alec82</td>
											<td><span class="label label-warning">Suspended</span></td>
										</tr>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Andrea</td>
											<td>Brenden</td>
											<td class="hidden-xs">andry</td>
											<td><span class="label label-danger">Blocked</span></td>
										</tr>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Joey</td>
											<td>Greyson</td>
											<td class="hidden-xs">joey123</td>
											<td><span class="label label-success">Approved</span></td>
										</tr>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Wolf</td>
											<td>Bud</td>
											<td class="hidden-xs">wolfy</td>
											<td><span class="label label-info">Pending</span></td>
										</tr>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Darin</td>
											<td>Alec</td>
											<td class="hidden-xs">alec82</td>
											<td><span class="label label-warning">Suspended</span></td>
										</tr>
										<tr>
											<td class="checkbox-column">
												<input type="checkbox" class="uniform">
											</td>
											<td>Andrea</td>
											<td>Brenden</td>
											<td class="hidden-xs">andry</td>
											<td><span class="label label-danger">Blocked</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
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
	</div>

	<!-- Modal dialog -->
	<div class="modal fade" id="myModal1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Create New Student Details...</h4>
				</div>
				<div class="modal-body">
					
				<!--=== Page Content ===-->
				
			
			
				<div class="row">
					
					
					
						<!--=== Validation Example 1 ===-->
					<div class="col-md-16">
						<div class="widget box">
							<div class="widget-header">
								<h4><i class="icon-reorder"></i> Creating Stafft Details...</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" id="validate-1" action="addStudentRfid">
								
								
									<div class="form-group">
										<label class="col-md-3 control-label">RFID Number <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="student_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">RFID TYPE <span class="required">*</span></label>
										<div class="col-md-9">
											<select class="form-control" id="student_rfid_type">
												<option value="Student" selected="selected" name="student_rfid">Student</option>
												
											</select>
										</div>
									</div>
								
									
								
									<div class="form-actions">
										<input type="submit" value="Store" class="btn btn-primary pull-right">
									</div>
								</form>
							</div>
						</div>
						<!-- /Validation Example 1 -->
					</div>
					
					
					
					
				</div>
				<!-- /Page Content -->
			</div>
			<!-- /.container -->

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