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
						<li><i class="icon-home"></i><a href="homepage">
								Dashboard</a></li>
						<li>Students List</li>

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
						<h3>Students List</h3>
						<span>Create,Update,Delete Student List</span>
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
					<!--=== Page Header ===-->
					<div class="page-header"></div>
					<!-- /Page Header -->

					<!--=== Page Content ===-->
					<!--=== Managed Tables ===-->



					<div class="col-md-12">
						<a href="addnewstudent" class="btn btn-primary" id="add_new_student">
							<i class="icon-plus"></i> Add New
							Student
						</a>
					</div>
					<br>
					<!--=== Normal ===-->
					<div class="row">
						<div class="col-md-12">
							<div class="widget box">
								<div class="widget-header">
									<h4>
										<i class="icon-reorder"></i>Students List
									</h4>
									<div class="toolbar no-padding">
										<div class="btn-group">
											<span class="btn btn-xs widget-collapse"><i
												class="icon-angle-down"></i></span>
										</div>
									</div>
								</div>
								<div class="widget-content">
									<table
										class="table table-striped table-bordered table-hover table-checkable datatable">
										<thead>
											<tr>
												<th class="checkbox-column"><input type="checkbox"
													class="uniform"></th>
												<th>First Name</th>
												<th>Last Name</th>
												<th class="hidden-xs">Username</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
												<td>Joey</td>
												<td>Greyson</td>
												<td class="hidden-xs">joey123</td>
												<td><span class="label label-success">Approved</span></td>
											</tr>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
												<td>Wolf</td>
												<td>Bud</td>
												<td class="hidden-xs">wolfy</td>
												<td><span class="label label-info">Pending</span></td>
											</tr>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
												<td>Darin</td>
												<td>Alec</td>
												<td class="hidden-xs">alec82</td>
												<td><span class="label label-warning">Suspended</span></td>
											</tr>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
												<td>Andrea</td>
												<td>Brenden</td>
												<td class="hidden-xs">andry</td>
												<td><span class="label label-danger">Blocked</span></td>
											</tr>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
												<td>Joey</td>
												<td>Greyson</td>
												<td class="hidden-xs">joey123</td>
												<td><span class="label label-success">Approved</span></td>
											</tr>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
												<td>Wolf</td>
												<td>Bud</td>
												<td class="hidden-xs">wolfy</td>
												<td><span class="label label-info">Pending</span></td>
											</tr>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
												<td>Darin</td>
												<td>Alec</td>
												<td class="hidden-xs">alec82</td>
												<td><span class="label label-warning">Suspended</span></td>
											</tr>
											<tr>
												<td class="checkbox-column"><input type="checkbox"
													class="uniform"></td>
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
	




</body>
</html>