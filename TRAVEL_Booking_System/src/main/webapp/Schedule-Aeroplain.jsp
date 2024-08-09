<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl jar -->
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Schedule-Flights</title>
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
		style="background-color: yellow; margin-top: -4%;">
		<div class="row g-3 ">
			<div class="col-md-8 offset-md-2">
				<div class="card shadow-lg mb-4" style="background-color:yellow;">
					<div class="card-body">
						<div class="text-center text-success">
							<i class="fa fa-user-friends fa-3x"></i>


							<c:if test="${not empty succMsg }">
								<!--Jstl jar codes  -->
								<div class="alert alert-success" role="alert">${succMsg}</div>
								<c:remove var="succMsg" />

							</c:if>


							<h5>Schedule_Flight</h5>
							<hr class="featurette-divider w-90 mx-4">
						</div>

						<form action="Schedule_Flight" method="post">
							<div class="d-flex mb-2" style="justify-content: space-evenly;">
								<div class="form-group col-md-3">
									<label for="selecter3" class="form-label">Select
										Flights</label> <select class="form-select" name="Aeroplain"
										id="selecter3" required>
										<option selected disabled value="">Select
											Aeroplain...</option>
										<option value="Air India Exp">Air India Exp</option>
										<option value="Air India">Air India</option>
										<option value="SpiceJet Ltd">SpiceJet Ltd</option>
										<option value="Vistara">Vistara</option>

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
										placeholder="e.g.- &#8377; 3440 " required class="form-control" />
								</div>
							</div>

							<div class="d-flex mb-2 mt-4" style="justify-content: space-evenly;">
								<div class="form-group col-md-5">
									
									<select class="form-select" name="Locationstart" id="selecter1"
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

								<div class="form-group col-md-5">
									 <select class="form-select" name="Locationend" id="selecter2" required>
										<option selected disabled value="">Destination</option>
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
							</div>


							<div class="d-flex" style="justify-content: space-evenly;">
								<div class="form-group col-md-2 ">
									<label for="title1" class="form-label ms-2">Start Date</label>
									<input type="text" name="StartDate" class="form-control"
										id="title1" placeholder="e.g.-06 Aug " required
										class="form-control" />
								</div>

								<div class="form-group col-md-2">
									<label for="title1" class="form-label ms-2">End Date</label> <input
										type="text" name="EndDate" class="form-control" id="title1"
										placeholder="e.g.-07 Aug " required class="form-control" />
								</div>

								<div class="form-group col-md-2">
									<label for="title1" class="form-label ms-2">Start Time</label>
									<input type="text" name="StartTime" class="form-control"
										id="title1" placeholder="e.g.-22:30 " required
										class="form-control" />
								</div>

								<div class="form-group col-md-2">
									<label for="title1" class="form-label ms-2">End Time</label> <input
										type="text" name="EndTime" class="form-control" id="title1"
										placeholder="e.g.-14:30 " required class="form-control" />
								</div>
							</div>
							<br>

							<button class="btn btn-primary w-50 ">
								<b>Schedule Flight</b>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
