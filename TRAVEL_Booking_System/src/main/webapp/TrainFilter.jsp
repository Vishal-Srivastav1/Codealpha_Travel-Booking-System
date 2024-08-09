
<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.Train"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.TrainDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl jar -->
   <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin: View Train</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
body {
	background: cyan;
	overflow-x :hidden;
	margin-top:20px;
}


</style>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container ">
		<div class="row ">
			<div class="col-md-12 ">
				<h5 class="text-center text-primary mb-4">INDIAN RAILWAYS</h5>
				
      			<%
      			
      			String Lostart=request.getParameter("Locationstart");
      			String Loend=request.getParameter("Locationend");
      			String msg = "";
     	
				
				TrainDAO dao = new TrainDAO(DBConnect.getConn());
				List<Train> list = null;
				
				 
				  if("start".equals(Lostart) && "end".equals(Loend)){
					  list= new ArrayList<Train>(); 
				        msg="Train Not Founds.."; 
				   }
				  
				  else if("start".equals(Lostart) || ("end".equals(Loend))){				 
					  
					  list=dao.getTrainLoc1ORLoc2(Lostart,Loend);
					   
			   
				   }else{
					   
					   list=dao.getTrainLoc1ANDLoc2(Lostart, Loend);
					  
				   }
					  
					  
					  
					  if(list.isEmpty()){
					   %>
					   <h4 class="text-center text-denger"><i class="fa-solid fa-face-rolling-eyes fa-bounce fa-2xl" style="color: #FFD43B;"></i> &nbsp; Opps.. Trains Not Available..</h4>
					  
					   <%
					  
				   }
				  
				   
					   
				  
				   if(list!=null){
				
				for (Train j : list) {
				%>
				<div class="card mt-2 shadow-lg rounded">
					<div class="card-body">
						
						<div class="d-flex p-0" style="justify-content: space-between; background-color:#f5f5f5;">
						    <div class="mt-1">
						    <h5 class="mt-2 p-1"><b><%=j.getTrains() %></b></h5>
						    </div>
						    
						    <div class="mt-1">
						     <p class="mt-2 p-1"><b>Runs On:</b> &nbsp;M&nbsp;T&nbsp;W&nbsp;T&nbsp;F&nbsp;S&nbsp;S</p>
						    </div>
						    
						    <div class="mt-1">
						      <h6 class="mt-2 p-1" style="color:blue;">Train Schedule</h6>
						    </div>
						</div>
						<br>
						<div class="d-flex" style="justify-content: space-between;">
						   <div class="d-flex gap-2" >
						    <div>
						    <h4><b><%=j.getStartTime() %>&nbsp;|</b></h4>
						    </div>
						    
						    <div>
						    <h5><%=j.getLocationstart() %>&nbsp;JN&nbsp;|</h5>
						    </div>
						    
						    <div>
						      <h5><%=j.getStartDate() %></h5>
						    </div>
						   </div>
                            
                 
						   <div class="d-flex gap-2">
						      <div>
						    <h4><b><%=j.getEndTime() %>&nbsp;|</b></h4>
						    </div>
						    
						    <div>
						    <h5><%=j.getLocationend() %>&nbsp;JN&nbsp;|</h5>
						    </div>
						    
						    <div>
						      <h5><%=j.getEndDate() %></h5>
						    </div>
						   </div>
						</div>
						
						<div class="d-flex gap-5 mt-3 ">
						     <div class="text-center mx-3 shadow rounded" style="width:170px; height:75px; background-color:#f5f5f5;">
						        <p class="mt-2">Sleeper (SL)</p> <h6 style="margin-top:-5%;"><%=j.getSleeper_SL() %></h6>
						     </div>
						     
						     <div class="text-center shadow rounded" style="width:170px; height:75px; background-color:#f5f5f5;">
						        <p class="mt-2">AC 3 Tier (3A)</p> <h6 style="margin-top:-5%;"><%=j.getAC_3_Tier_3A() %></h6>
						     </div>
						     
						     <div class="text-center mx-1 shadow rounded" style="width:170px; height:75px; background-color:#f5f5f5;">
						        <p class="mt-2">AC 2 Tier (2A)</p> <h6 style="margin-top:-5%;"><%=j.getAC_2_Tier_2A() %></h6>
						     </div>
						</div>
					
						<div class="mx-3 mt-4 d-flex gap-4">
							 
						     
						     <form  action="Book.jsp" method="post">
						    <input type="hidden" name="idTrain" value="<%=j.getId()%>">
						    <input type="hidden" name="name" value="<%=j.getTrains() %>">
						    <input type="hidden" name="Locationstart" value="<%=j.getLocationstart() %>">
						    <input type="hidden" name="Locationend" value="<%=j.getLocationend() %>">
						    <input type="hidden" name="StartTime" value="<%=j.getStartTime() %>">
						    <input type="hidden" name="EndTime" value="<%=j.getEndTime() %>">
						    <input type="hidden" name="StartDate" value="<%=j.getStartDate() %>">
						    <input type="hidden" name="EndDate" value="<%=j.getEndDate() %>">
						    <div class=" mt-0 " style="">
							<button type="submit" class="btn btn-sm bg-primary p-2 shadow"><b class="p-3">Book</b></button>
						   </div>
						    </form>
						     
							<a href="index.jsp"
								class="btn btn-sm bg-success text-white p-2" style="width:100px;"><b>Other Date</b></a> 
						     
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
<br>

</body>
</html>