<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl jar -->
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loging page</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>

<style type="text/css">
body {
	background: white;
	width: 100%;
	height: 70vh;
	background-repeat: no-repeat;
	background-size: cover;
	overflow-x: hidden; 
	margin-top:20px;
}
	
   .nav{
       margin-top:-20px;
       width:100%;
   }
</style>
</head>
<body>
   <%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>

	   <%@include file="all_component/navbar.jsp" %>


	<div class="continer-fluid p-3" style="background:#4c9be5;">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card shadow-lg" style="background-color:yellow;">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Login Page</h5>
						</div>
                      <div class="text-center">
						<c:if test="${not empty succMsg }">
							<!--Jstl jar codes  -->
							<div class="alert alert-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
						</div>

						<form class=" needs-validation" novalidate action="login"
							method="post">


							<label for="gmail" class="form-label">Enter Email</label>
							<div class="input-group has-validation">
								<input type="email" class="form-control bg-dark text-white" name="email" id="gmail"
									aria-describedby="inputGroupPrepend"
									placeholder="Enter Your Email" Autofocus required >
								<div class="invalid-feedback">Please Enter valid Email.</div>

							</div>
							

							<label for="password" class="form-label">Enter Password</label>
							<div class="input-group has-validation">
								<input type="password" class="form-control bg-dark text-white" id="password"
									name="passwd" aria-describedby="inputGroupPrepend"
									placeholder="Enter Your Password" required>
								<div class="invalid-feedback">Please Enter Unique
									Password.</div>

							</div>


							<div class="col-12 mt-2">
								<div class="form-check">
									<input class="form-check-input bg-dark text-white" type="checkbox" value=""
										id="invalidCheck" required> <label
										class="form-check-label " for="invalidCheck"> Agree to
										terms and conditions </label>
									<div class="invalid-feedback">You must agree before
										submitting.</div>
								</div>
							</div>

							<div class="col-12 mt-2">
								<button class="btn btn-primary w-100" type="submit">Login</button>
							</div>
							
					
						</form>
						<hr class="featurette-divider">
						
						<p class="text-center">
							<span >
								Don't have an account?<a href="signup.jsp">Sign up</a>
								<br><a href="">Forgot Password?</a>
							</span>
							
							
					    </p>
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