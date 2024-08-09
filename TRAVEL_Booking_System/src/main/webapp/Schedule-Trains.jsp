<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl jar -->
   <%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Schedule-Trains</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
   body{
	   background-color:white;
	    overflow-x :hidden;
	   width:100%;
	   height:70vh;
	   background-repeat: no-repeat;
	   background-size: cover;
	   margin-top:20px;
	   
	   
	   
   }
   
  button{
  margin-left:23%;
 
  
  }
 </style>
</head>
<body>
  <c:if test="${userobj.role ne 'admin' }"> 
   <c:redirect url="login.jsp"></c:redirect>
  </c:if>
  <%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
	<%@include file="all_component/navbar.jsp"%>

     <br>
     <br>
     
       <div class="continer-fluid p-5 " style="background-color:#4867aa; margin-top:-4%;">
          <div class="row g-3 ">
             <div class="col-md-8 offset-md-2">
                 <div class="card shadow-lg " style="background-color:#4867aa;">
					<div class="card-body">
						<div class="text-center text-success">
							<i class="fa fa-user-friends fa-3x"></i>
							
							
						<c:if test="${not empty succMsg }">  <!--Jstl jar codes  -->     
					        <div class="alert alert-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg"/>
							
    					</c:if>
    					
    						 
							<h5 class="text-white"><b>Schedule-Trains</b></h5>
							<hr class="featurette-divider w-90 mx-4">
						</div>
						
						<form action="add_Train" method="post">
						<div class="d-flex mb-2" style="justify-content: space-evenly;">
							<div class="form-group col-md-5">
									<label for="selecter3" class="form-label ">Select Trains</label> <select
										class="form-select " name="Trains" id="selecter3" required>
										<option selected disabled value="">Select Trains...</option>
										<option  value="GKP LTT SF EXP (20104)">GKP LTT SF EXP (20104)</option>
										<option  value="KUSHINAGAR EXP (22537)">KUSHINAGAR EXP (22537)</option>
										<option  value="KIR MMCT SPL (09190)">KIR MMCT SPL (09190)</option>
										<option  value="GKP YPR EXPRESS (15023)">GKP YPR EXPRESS (15023)</option>
										<option  value="GKP PNVL EXP (15065)">GKP PNVL EXP (15065)</option>
										<option  value="BDTS HUMSAFAR (19092)">BDTS HUMSAFAR (19092)</option>
									</select>
								</div>
                                 
                                 <div class="form-group col-md-5">
									<label for="selecter3" class="form-label">Status</label> <select
										class="form-select" name="status" id="selecter3" required>
										<option selected disabled value="">Status...</option>
										<option class="Active" value="Active">Active</option>
										<option class="Inactive" value="Inactive">Inactive</option>
									</select>
								</div>
                             </div>    
                                 
                                 <div class="d-flex mb-2" style="justify-content: space-evenly;">
                                      <div class="form-group col-md-5">
									<label for="selecter1" class="form-label">From Stations</label> <select
										class="form-select" name="Locationstart" id="selecter1" required>               
										<option selected disabled value="">From Stations...</option>
										<option value="Hydrabad">Hydrabad</option>
										<option value="Banglore">Banglore</option>
										<option value="Chennai">Chennai</option>
										<option value="Delhi">Delhi</option>
										<option value="Gorakhpur">Gorakhpur</option>
										<option value="Lucknow">Lucknow</option>
										<option value="Bhopal">Bhopal</option>
										<option value="Gujrat">Gujrat</option>
										<option value="Noida">Noida</option>
										<option value="Jharkhand">Jharkhand</option>
										<option value="Odisha">Odisha</option>

									</select>
								</div> 
								
								<div class="form-group col-md-5">
									<label for="selecter2" class="form-label">To Stations</label> <select
										class="form-select" name="Locationend" id="selecter2" required>               
										<option selected disabled value="">To Stations...</option>
										<option value="Hydrabad">Hydrabad</option>
										<option value="Banglore">Banglore</option>
										<option value="Chennai">Chennai</option>
										<option value="Delhi">Delhi</option>
										<option value="Gorakhpur">Gorakhpur</option>
										<option value="Lucknow">Lucknow</option>
										<option value="Bhopal">Bhopal</option>
										<option value="Gujrat">Gujrat</option>
										<option value="Noida">Noida</option>
										<option value="Jharkhand">Jharkhand</option>
										<option value="Odisha">Odisha</option>

									</select>
								</div> 
                                 </div>
                                 
							<div class="d-flex mb-2" style="justify-content: space-evenly;">
							 
								<div class="form-group col-md-3">
									<label for="selecter3" class="form-label ms-2">Sleeper (SL)</label> <select
										class="form-select" name="Sleeper_SL" id="selecter3" required>
										<option selected disabled value="">(SL)...</option>
										<option  value="AVAILABLE...">AVAILABLE</option>
										<option  value="NOT-AVAILABLE">NOT-AVAILABLE</option>
									</select>
								</div>
								  
								<div class="form-group col-md-3">
									<label for="selecter4" class="form-label ms-2">AC 3 Tier (3A)</label> <select
										class="form-select" name="AC_3_Tier_3A" id="selecter4" required>
										<option selected disabled value="">(3A)...</option>
										<option  value="AVAILABLE...">AVAILABLE</option>
										<option  value="NOT-AVAILABLE">NOT-AVAILABLE</option>
									</select>
								</div>
								
								<div class="form-group col-md-3">
									<label for="selecter5 " class="form-label ms-2">AC 2 Tier (2A)</label> <select
										class="form-select" name="AC_2_Tier_2A" id="selecter5" required>
										<option selected disabled value="">(2A)...</option>
										<option  value="AVAILABLE...">AVAILABLE</option>
										<option  value="NOT-AVAILABLE">NOT-AVAILABLE</option>
									</select>
								</div>
							</div>
							
							
							
							
							<div class="d-flex" style="justify-content: space-evenly;">
								 <div class="form-group col-md-2 ">
									<label for="title1" class="form-label ms-2">Start Date</label> <input
									type="text" name="StartDate" class="form-control" id="title1"
									placeholder="e.g.-06 Aug " required class="form-control" />
								</div>
								
								<div class="form-group col-md-2">
									<label for="title1" class="form-label ms-2">End Date</label> <input
									type="text" name="EndDate" class="form-control" id="title1"
									placeholder="e.g.-07 Aug " required class="form-control" />
								</div>
								
								<div class="form-group col-md-2">
									<label for="title1" class="form-label ms-2">Start Time</label> <input
									type="text" name="StartTime" class="form-control" id="title1"
									placeholder="e.g.-22:30 " required class="form-control" />
								</div>
								
								<div class="form-group col-md-2">
									<label for="title1" class="form-label ms-2">End Time</label> <input
									type="text" name="EndTime" class="form-control" id="title1"
									placeholder="e.g.-14:30 " required class="form-control" />
								</div>
							</div>
							<br>

							<button class="btn btn-primary w-50 "><b>Schedule Train</b></button>					   
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	


</body>
</html>
