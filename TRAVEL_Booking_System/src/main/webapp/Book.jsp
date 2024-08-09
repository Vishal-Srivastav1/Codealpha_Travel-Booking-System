<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl jar -->
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jobs-Apl</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>

<style type="text/css">
body {
	background: white;
	width: 100%;
	height: 70vh;
	background-repeat: no-repeat;
	background-size: cover;
	overflow-x :hidden;
	margin-top:20px;
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

	<div class="continer-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card shadow-lg" style="background-color:yellow;">
					<div class="card-body">
						<div class="text-center">
							<h6><b>Book&nbsp;&nbsp;<i class="fa-solid fa-plane-departure"></i>&nbsp;&nbsp;
							<i class="fa-solid fa-train-subway"></i>&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-hotel"></i></b></h6>
						
						<c:if test="${not empty succMsg }">     <!--Jstl jar codes  -->	
							<div class="alert alert-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
                       </div>

						<form class=" needs-validation" action="Trainbook" method="post" novalidate >
						
						<% String name = request.getParameter("name"); %>
						<% String Locationstart = request.getParameter("Locationstart"); %>
						<% String Locationend = request.getParameter("Locationend"); %>
						<% String StartTime = request.getParameter("StartTime"); %>
						<% String EndTime = request.getParameter("EndTime"); %>
						<% String StartDate = request.getParameter("StartDate"); %>
						<% String EndDate = request.getParameter("EndDate"); %>
						<% String description = request.getParameter("description"); %>
						<% String facility = request.getParameter("facility"); %>
						<% String bookstatus = request.getParameter("bookstatus"); %>
						
						<input type="hidden" name="userid" value="${userobj.id}">
						<input type="hidden" name="name" value="<%=name%>">
						<input type="hidden" name="Locationstart" value="<%=Locationstart%>">
						<input type="hidden" name="Locationend" value="<%=Locationend%>">
						<input type="hidden" name="StartTime" value="<%=StartTime%>">
						<input type="hidden" name="EndTime" value="<%=EndTime%>">
						<input type="hidden" name="StartDate" value="<%=StartDate%>">
						<input type="hidden" name="EndDate" value="<%=EndDate%>">
						<input type="hidden" name="description" value="<%=description%>">
						<input type="hidden" name="facility" value="<%=facility%>">
						<input type="hidden" name="bookstatus" value="<%=bookstatus%>">
						
							<div class="input-group has-validation mt-5">
								<input type="text" name="username" class="form-control bg-dark text-white" id="name1"
									aria-describedby="inputGroupPrepend"
									placeholder="Enter Your Full Name " autofocus required>
								<div class="invalid-feedback">Please Enter Full Name...</div>
							
							</div>

							
							
							<div class="input-group has-validation mt-3">
								<input type="email" name="email" class="form-control bg-dark text-white" id="gmail"
									aria-describedby="inputGroupPrepend"
									placeholder="Enter Your Email" required>
								<div class="invalid-feedback">Enter valid email...</div>
								
							</div>
							
							
							<div class="input-group has-validation mt-3">
								<input type="text" name="state" class="form-control bg-dark text-white" id="state"
									aria-describedby="inputGroupPrepend"
									placeholder="Enter Your State" required>
								<div class="invalid-feedback">state can't be empty</div>
								
							</div>
							
							
							<div class="input-group has-validation mt-3">
								<input type="text" name="dist" class="form-control bg-dark text-white" id="dist"
									aria-describedby="inputGroupPrepend"
									placeholder="Enter Your dist/city" required>
								<div class="invalid-feedback">Dist./city can't be empty</div>
								
							</div>

                        
							<div class="col-12 mt-2">
								<div class="form-check">
									<input class="form-check-input bg-dark text-white" type="checkbox" value=""
										id="invalidCheck" required> <label
										class="form-check-label" for="invalidCheck"> Agree to
										terms and conditions </label>
									<div class="invalid-feedback">You must agree before
										submitting...</div>
								</div>
							</div>
<br>
							<div class="col-12">
								<button class="btn btn-primary w-100" type="submit">Submit</button>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}

					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>

</body>
</html>