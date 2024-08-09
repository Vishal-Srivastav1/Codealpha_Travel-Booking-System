
<%@page import="com.entity.Hotel"%>
<%@page import="com.dao.HotelDAO"%>
<%@page import="com.entity.Flight"%>
<%@page import="com.dao.FlightDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl jar -->
   <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin: View Hotels</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
body {
	background: cyan;
	overflow-x :hidden;
	margin-top:20px;
}
 a{
   text-decoration:none;
 }


</style>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-4">
		<div class="row ">
			<div class="col-md-12 ">
				<h5 class="text-center text-primary mb-4">INDIAN Hotels</h5>
				
      			<%
      			
      			String Lostart=request.getParameter("HotelN");
      			String Loend=request.getParameter("Location");
      			String msg = "";
    
				 
				HotelDAO dao = new HotelDAO(DBConnect.getConn());
				List<Hotel> list = null;
				
				 
				  if("start".equals(Lostart) && "end".equals(Loend)){
					  list= new ArrayList<Hotel>(); 
				        msg="Hotels Not Founds.."; 
				   }
				  
				  else if("start".equals(Lostart) || ("end".equals(Loend))){				 
					  
					  list=dao.getHotelLoc1ORLoc2(Lostart,Loend);
					   
			   
				   }else{
					   
					   list=dao.getHotelLoc1ANDLoc2(Lostart, Loend);
					  
				   }
					  
					  
					  
					  if(list.isEmpty()){
					   %>
					   <h4 class="text-center text-denger"><i class="fa-solid fa-face-rolling-eyes fa-bounce fa-2xl" style="color: #FFD43B;"></i>&nbsp; Opps..   Hotels Not Available..</h4>
					  
					   <%
					  
				   }
				  
				   
					   
				  
				   if(list!=null){
				
				for (Hotel j : list) {
					 String  Aeroplains;
				%>
				 
				<div class="card mt-2 shadow-lg rounded mb-2 ">
					<div class="card-body  ">
						
						<div class="p-1" style="justify-content: space-evenly; background-color:#f5f5f5;">
						  
						   <div class="d-flex gap-2 gap-5" style="justify-content:space-around;" >
						    <div class="mt-4">
						    <h5 class="mt-0 p-1"><b><i class="fa-solid fa-hotel" style="color: #FFD43B;"></i>&nbsp;&nbsp;<%=j.getHotelN() %>
						    <i class="fa-solid fa-star" style="color: #e2b603;"></i>
						    <i class="fa-solid fa-star" style="color: #e2b603;"></i>
						    <i class="fa-solid fa-star" style="color: #e2b603;"></i>
						    <i class="fa-solid fa-star" style="color: #e2b603;"></i>
						    <i class="fa-solid fa-star" style="color: #e2b603;"></i>
						    </b></h5>
						    </div>
						    
						    <div class="mt-4">
						    <p style="translate:100%;">Good</p>
						    </div>
						    
						   
						    </div>
						    
						
						   
						   <div class="d-flex gap-4" style="justify-content:space-evenly;">
						   
						    <div class="">
						    <p class="" style="translate:10%;">
						   <i class="fa-solid fa-location-dot" style="color: #B197FC;"></i> &nbsp;
						   <%=j.getDescription() %>
						    
						    </p>
						    </div>
						   
						     
						     <div class="" >
						    <p class="">(68 Ratings) </p>
						    </div>
						    
						    
						   </div>
						   
						   <div class="d-flex gap-5" style="justify-content: space-around; translate:10%;">
						    
						      <div>
						      <p class="shadow-sm p-2" style="translate:-18%;"><%=j.getFacility() %></p>
						      </div>
						      
						       <div class="mt-0">
						    <h4>&#8377; &nbsp;<%=j.getPrice() %></h4>
						   
						    </div>
						   
						   </div>
						   
						   <div class="d-flex gap-4 p-1" style="justify-content: space-evenly; translate:9%;">
						     
						     <div>
						     <p>Check-in:&nbsp;<%=j.getStartDate() %></p>
						     </div>
						     
						      <div>
						     <p>Check-out:&nbsp;<%=j.getEndDate() %></p>
						     </div>
						     
						      <form  action="Book.jsp" method="post">
						      
						    <input type="hidden" name="idHotel" value="<%=j.getId()%>">
						    <input type="hidden" name="name" value="<%=j.getHotelN() %>">
						    <input type="hidden" name="Locationstart" value="<%=j.getLocation() %>">
						    <input type="hidden" name="description" value="<%=j.getDescription() %>">
						    <input type="hidden" name="facility" value="<%=j.getFacility() %>">
						    
						    <input type="hidden" name="StartDate" value="<%=j.getStartDate() %>">
						    <input type="hidden" name="EndDate" value="<%=j.getEndDate() %>">
						    <input type="hidden" name="bookstatus" value="Hotel">
						    
						    <div class=" mt-0 " style="">
							<button type="submit" class=" p-2 shadow"style="border:none; background-color:white; margin-left:7%; translate:7%"><b class="p-3">Book</b></button>
						   </div>
						    </form>
						   </div>
						
						
						
						
					</div>
					
				</div>
				</div>
				
				<%
				}
				}
				%>
				
			</div>
		</div>
	</div>




</body>
</html>