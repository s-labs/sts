<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--=== Navigation ===-->
				
				<ul id="nav">
					<c:if test="${current_page == 'homepage' }">
						<li class="current">
							<a href="homepage">
								<i class="icon-dashboard"></i>
								Dashboard
							</a>
						</li>
					</c:if>
					<c:if test="${current_page != 'homepage' }">
						<li >
							<a href="homepage">
								<i class="icon-dashboard"></i>
								Dashboard
							</a>
						</li>
					</c:if>
					
					<c:if test="${current_page == 'maps' }">
						<li class="current">
							<a href="maps">
								<i class="icon-map-marker "></i>
								Maps
							</a>
						</li>
					</c:if>
					<c:if test="${current_page != 'maps' }">
						<li >
							<a href="maps">
								<i class="icon-map-marker"></i>
								maps
							</a>
						</li>
					</c:if>
					
					<li>
					
					
						<a href="javascript:void(0);">
							<i class="icon-list-alt " ></i>
							Persons List
							<span class="label label-info pull-right">4</span>
						</a>
						<ul class="sub-menu">
							<c:if test="${current_page == 'students_list' }">
						<li class="current">
							<a href="students_list">
								<i class="icon-user"></i>
								Students List
							</a>
						</li>
					</c:if>
					<c:if test="${current_page != 'students_list' }">
						<li >
							<a href="students_list">
								<i class="icon-user"></i>
								Students List
							</a>
						</li>
					</c:if>
					<c:if test="${current_page == 'drivers_list' }">
						<li class="current">
							<a href="drivers_list">
								<i class="icon-user"></i>
								Drivers List
							</a>
						</li>
					</c:if>
					<c:if test="${current_page != 'drivers_list' }">
						<li >
							<a href="drivers_list">
								<i class="icon-user"></i>
								Drivers List
							</a>
						</li>
					</c:if>
					<c:if test="${current_page == 'staff_list' }">
						<li class="current">
							<a href="staff_list">
								<i class="icon-user"></i>
								Staff List
							</a>
						</li>
					</c:if>
					<c:if test="${current_page != 'staff_list' }">
						<li >
							<a href="staff_list">
								<i class="icon-user"></i>
								Staff List
							</a>
						</li>
					</c:if>
					<c:if test="${current_page == 'buses_list' }">
						<li class="current">
							<a href="buses_list">
								<i class="icon-flickr"></i>
								Buses List
							</a>
						</li>
					</c:if>
					<c:if test="${current_page != 'buses_list' }">
						<li >
							<a href="buses_list">
								<i class="icon-flickr"></i>
								Buses List
							</a>
						</li>
					</c:if>
						</ul>
					</li>
					<li>
						
						<a href="javascript:void(0);">
							<i class="icos-wifi-signal" ></i>
							&nbsp;&nbsp;RFIDs List
							<span class="label label-info pull-right">3</span>
						</a>
						<ul class="sub-menu">
						
								<c:if test="${current_page == 'students_rfid_list' }">
								<li class="current">
									<a href="students_rfid_list">
										<i class="icon-user"></i>
										Students RFID
									</a>
								</li>
							</c:if>
							<c:if test="${current_page != 'students_rfid_list' }">
								<li >
									<a href="students_rfid_list">
										<i class="icon-user"></i>
										Students RFID
									</a>
								</li>
							</c:if>
							<c:if test="${current_page == 'drivers_rfid_list' }">
								<li class="current">
									<a href="drivers_rfid_list">
										<i class="icon-male"></i>
										Driver RFID
									</a>
								</li>
							</c:if>
							<c:if test="${current_page != 'drivers_rfid_list' }">
								<li >
									<a href="drivers_rfid_list">
										<i class="icon-male"></i>
										Driver RFID
									</a>
								</li>
							</c:if>
							<c:if test="${current_page == 'staff_rfid_list' }">
								<li class="current">
									<a href="staff_rfid_list">
										<i class=" icon-list-ul"></i>
										Staff RFID
									</a>
								</li>
							</c:if>
							<c:if test="${current_page != 'staff_rfid_list' }">
								<li >
									<a href="staff_rfid_list">
										<i class=" icon-list-ul"></i>
										Staff RFID
									</a>
								</li>
							</c:if>
									
						</ul>
					</li>
					
					<c:if test="${current_page == 'changepassword' }">
						<li class="current">
							<a href="changepassword">
								<i class="icol-ui-text-field-password"></i>
								&nbsp;&nbsp;Change Password
							</a>
						</li>
					</c:if>
					<c:if test="${current_page != 'changepassword' }">
						<li >
							<a href="changepassword">
								<i class="icol-ui-text-field-password"></i>
								&nbsp;&nbsp;Change Password
							</a>
						</li>
					</c:if>
					
					<li>
						<a href="<c:url value="/j_spring_security_logout" />" >
							<i class="icon-key"></i>
							Log out
						</a>
					</li>
					
				</ul>
				<!-- /Navigation -->
				<div class="sidebar-title">
					<span>Notifications</span>
				</div>
				<ul class="notifications demo-slide-in"> <!-- .demo-slide-in is just for demonstration purposes. You can remove this. -->
					<li style="display: none;"> <!-- style-attr is here only for fading in this notification after a specific time. Remove this. -->
						<div class="col-left">
							<span class="label label-danger"><i class="icon-warning-sign"></i></span>
						</div>
						<div class="col-right with-margin">
							<a href="#">
								<span class="message">Bus No : Bus_100 <strong>#512</strong> Delayed due to traffic.</span>
								<span class="time">few seconds ago</span>
							</a>
						</div>
					</li>
					
					<li>
						<div class="col-left">
							<span class="label label-success"><i class="icon-plus"></i></span>
						</div>
						<div class="col-right with-margin">
							<span class="message"><strong>John</strong>'s account was created</span>
							<span class="time">10 Minutes ago</span>
						</div>
					</li>
				</ul>