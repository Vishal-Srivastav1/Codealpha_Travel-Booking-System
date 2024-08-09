<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl jar -->
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Schedule Hotel</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
body {
	background-color: white;
	overflow-x: hidden;
	width: 100%;
	height: 70vh;
	background-repeat: no-repeat;
	background-size: cover;
	margin-top: 20px;
}

button {
	margin-left: 23%;
}
</style>
</head>
<body>
   <c:if test="${userobj.role ne 'admin' }"> 
   <c:redirect url="login.jsp"></c:redirect>
  </c:if>

	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
	<%@include file="all_component/navbar.jsp"%>

	<br>
	<br>

	<div class="continer-fluid p-5 "
		style="background-color: #4c9be5; margin-top: -4%;">
		<div class="row g-3 ">
			<div class="col-md-8 offset-md-2">
				<div class="card shadow-lg mb-4" style="background-color: #4c9be5">
					<div class="card-body">
						<div class="text-center text-success">
							<i class="fa fa-user-friends fa-3x"></i>


							<c:if test="${not empty succMsg }">
								<!--Jstl jar codes  -->
								<div class="alert alert-success" role="alert">${succMsg}</div>
								<c:remove var="succMsg" />

							</c:if>


							<h5>Schedule Hotel</h5>
							<hr class="featurette-divider w-90 mx-4">
						</div>

						<form action="Schedule_Hotel" method="post">
							<div class="d-flex mb-2" style="justify-content: space-evenly;">
								<div class="form-group col-md-3">

									<label for="selecter3" class="form-label">Select Hotels</label>
									<select class="form-select" name="HotelN" id="selecter3"
										required>
										<option selected disabled value="">Select Hotels...</option>
										<option value="Hotel Shivdev International">Hotel
											Shivdev International</option>
										<option value="Fabhotel Sparkling">Fabhotel Sparkling</option>
										<option value="Haritma Resort">Haritma Resort</option>
										<option value="YOYO">YOYO</option>
										<option value="Hotel Mannat">Hotel Mannat</option>
										<option value="Pearl Cabin">Pearl Cabin</option>

									</select>
								</div>

								<div class="form-group col-md-3">
									<label for="selecter3" class="form-label">Status</label> <select
										class="form-select" name="status" id="selecter3" required>
										<option selected disabled value="">Status...</option>
										<option class="Active" value="Active">Active</option>
										<option class="Inactive" value="Inactive">Inactive</option>
									</select>
								</div>

								<div class="form-group col-md-3">
									<label for="title1" class="form-label ms-2">Price</label> <input
										type="text" name="price" class="form-control" id="title1"
										placeholder="e.g.- &#8377; 3440 " required
										class="form-control" />
								</div>
							</div>

							<div class="d-flex mb-2 mt-2"
								style="justify-content: space-evenly;">
								<div class="form-group col-md-5">
                                    <label for="selecter1" class="form-label ms-2">Location</label>
									<select class="form-select" name="Location" id="selecter1"
										required>
										<option selected disabled value="">Origin</option>
										<option value="New Delhi (DEL)">New Delhi (DEL)</option>
										<option value="Mumbai (BOM)">Mumbai (BOM)</option>
										<option value="Bangalore (BLR)">Bangalore (BLR)</option>
										<option value="Chennai (MAA)">Chennai (MAA)</option>
										<option value="Kolkata (CCU)">Kolkata (CCU)</option>
										<option value="Lucknow (LKO)">Lucknow (LKO)</option>
										<option value="Pune (PNQ)">Pune (PNQ)</option>
										<option value="Hyderabad (HYD)">Hyderabad (HYD)</option>
										<option value="Patna (PAT)">Patna (PAT)</option>
										<option value="Jaipur (JAI)">Jaipur (JAI)</option>
									</select>
								</div>

                                     <div class="form-group col-md-5 ">
									<label for="title1" class="form-label ms-2">Facility</label> <input
										type="text" name="Facility" class="form-control" id="title1"
										placeholder="e.g.-Facility- Wifi,Parking,SwimmingPool "
										required class="form-control" />
								</div>
								


							</div>


							<div class="d-flex" style="justify-content: space-evenly;">
								<div class="form-group col-md-5 ">
									<label for="title1" class="form-label ms-2">Check In</label> <input
										type="text" name="StartDate" class="form-control" id="title1"
										placeholder="e.g.-12:00PM " required class="form-control" />
								</div>

								<div class="form-group col-md-5">
									<label for="title1" class="form-label ms-2">Check Out</label> <input
										type="text" name="EndDate" class="form-control" id="title1"
										placeholder="e.g.-11:00AM " required class="form-control" />
								</div>


							</div>
							<div class="mt-2" style="Padding-left:5%; padding-right:5%;">
									<label for="exampleFormControlTextarea1" class="form-label">Hotel Description</label>
									<textarea class="form-control" name="description" id="exampleFormControlTextarea1" required
									placeholder="e.g.-Adress "	rows="3"></textarea>
								</div>
							<br>

							<button class="btn btn-primary w-50 ">
								<b>Schedule Hotel</b>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
