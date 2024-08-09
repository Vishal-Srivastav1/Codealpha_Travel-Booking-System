
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
<title>Admin: View Flights</title>
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

	<div class="container ">
		<div class="row ">
			<div class="col-md-12 ">
				<h5 class="text-center text-primary mb-4">INDIAN FLIGHT</h5>
				
      			<%
      			
      			String Lostart=request.getParameter("Locationstart");
      			String Loend=request.getParameter("Locationend");
      			String msg = "";
    
				 
				FlightDAO dao = new FlightDAO(DBConnect.getConn());
				List<Flight> list = null;
				
				 
				  if("start".equals(Lostart) && "end".equals(Loend)){
					  list= new ArrayList<Flight>(); 
				        msg="flight Not Founds.."; 
				   }
				  
				  else if("start".equals(Lostart) || ("end".equals(Loend))){				 
					  
					  list=dao.getAeroplainLoc1ORLoc2(Lostart,Loend);
					   
			   
				   }else{
					   
					   list=dao.getAeroplainLoc1ANDLoc2(Lostart, Loend);
					  
				   }
					  
					  
					  
					  if(list.isEmpty()){
					   %>
					   <h4 class="text-center text-denger"><i class="fa-solid fa-face-rolling-eyes fa-bounce fa-2xl" style="color: #FFD43B;"></i>&nbsp; Opps..   Flights Not Available..</h4>
					  
					   <%
					  
				   }
				  
				   
					   
				  
				   if(list!=null){
				
				for (Flight j : list) {
					 String  Aeroplains;
				%>
				 
				<div class="card mt-2 shadow-lg rounded mb-2">
					<div class="card-body">
						
						<div class=" p-0" style="justify-content: space-between; background-color:#f5f5f5;">
						  
						   <div class="d-flex gap-2 " style="justify-content:space-around;" >
						    <div class="mt-4">
						    <h5 class="mt-0 p-1"><b><%=j.getAeroplain() %></b></h5>
						    </div>
						    
						    <div class="mt-4">
						    <h4><%=j.getStartTime() %></h4>
						    </div>
						    
						      <div class="mt-4">
						    <h4><%=j.getEndTime() %></h4>
						    </div>
						    
						     <div class="mt-4">
						    <h4>0</h4>
						   
						    </div>
						    
						     <div class="mt-4">
						    <h4>&#8377; &nbsp;<%=j.getPrice() %></h4>
						   
						    </div>
						    <form  action="Book.jsp" method="post">
						    <input type="hidden" name="idFlight" value="<%=j.getId()%>">
						    <input type="hidden" name="name" value="<%=j.getAeroplain() %>">
						    <input type="hidden" name="Locationstart" value="<%=j.getLocationstart() %>">
						    <input type="hidden" name="Locationend" value="<%=j.getLocationend() %>">
						    <input type="hidden" name="StartTime" value="<%=j.getStartTime() %>">
						    <input type="hidden" name="EndTime" value="<%=j.getEndTime() %>">
						    <input type="hidden" name="StartDate" value="<%=j.getStartDate() %>">
						    <input type="hidden" name="EndDate" value="<%=j.getEndDate() %>">
						    <div class=" mt-3 " style="">
							<button type="submit" class=" p-2 shadow"style="border:none; background-color:white; margin-left:7%; translate:7%"><b class="p-3">Book</b></button>
						   </div>
						    </form>
						   </div>
						   <br>
						   
						   <div class="d-flex" style="justify-content:space-around; margin-top:-3%;">
						   
						    <div class="">
						    <p class="" style="translate:8%;">
						    <%=j.getStartDate() %>&nbsp;&nbsp;-&nbsp;
						    <%=j.getEndDate() %>
						    </p>
						    </div>
						   
						    <div>
						    <p><%=j.getLocationstart() %></p>
						    </div>
						    
						    <div>
						    <p><%=j.getLocationend() %></p>
						    </div>
						    
						    <div>
						    <p>Stop</p>
						    </div>
						    
						     <div>
						    <p>(Partially Refundable)</p>
						    </div>
						     
						     <div class="" >
						    <p class="">Flight Details </p>
						    </div>
						    
						    
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