
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.User"%>
<%@page import="com.dao.UserDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
   <%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit_Profile</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
   body{
	   background:cyan;
	   width:100%;
	   height:70vh;
	   background-repeat: no-repeat;
	   background-size: cover;
	   overflow-x :hidden;
	   margin-top:20px;
   }
   button{
       margin-left:23%;
   }
  
   
 </style>
</head>
<body>
<c:if test="${ empty userobj }"> 
   <c:redirect url="login.jsp"></c:redirect>
  </c:if>
     <c:if test="${userobj.role eq 'admin' }"> 
   <c:redirect url="login.jsp"></c:redirect>
  </c:if>
  <%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
	<%@include file="all_component/navbar.jsp"%>

     <br>
     <br>
     
       <div class="continer-fluid">
          <div class="row g-3 ">
             <div class="col-md-4 offset-md-4">
                 <div class="card shadow-lg" style="background-color:pink;">
					<div class="card-body">
						<div class="text-center text-success">
							<i class="fa fa-user-friends fa-2x" aria-hidden="true"></i>
						
							
					<h5>Edit Profile</h5>
							<hr class="featurette-divider w-90 mx-4">
						</div>
						<c:if test="${not empty succMsg }">
							<!--Jstl jar codes  -->
							<div class="alert alert-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
						<br>
						<form action="update_profile" method="post">
						<input type="hidden" name="id" value="${userobj.id}">
						
						
							<div class="form-group">
								<label for="title1" class="form-label">Enter Name</label> <input
									type="text" name="name" class="form-control bg-dark text-white" id="title1"                             
									required class="form-control" value="${userobj.name }">
							</div>
							
							
							
							<div class="form-group">
								<label for="title3" class="form-label">Enter Email</label> <input
									type="email" name="email" class="form-control bg-dark text-white" id="title3"
									required class="form-control" value="${userobj.email }">
							</div>
							
                                 
							<br>
							<button type="submit" class="btn btn-primary w-50">Update </button>
						
						</form>
						
					</div>
				</div>
			</div>
		</div>
		<br>
						<br>
	</div>
	


</body>
</html>
