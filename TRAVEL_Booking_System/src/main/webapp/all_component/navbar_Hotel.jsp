
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>



<style type="text/css">
.navbar .nav-item .nav-link {
	font-size: 20px;
	color: red;
   background-color: rgb(22, 0, 80);
    border-radius: 8px;
    padding: 10px;
    width: 120px;
    transition: 1s;
  
}


.navbar .nav-item .nav-link:hover {
	font-size: 20px;
	color: yellow;
   background-color: rgb(22, 0, 80);
    border-radius: 8px;
    padding: 10px;
    width: 120px;
  
}
 
 .hello{
   
 }
 
 @media screen and (min-width: 993px) {
	.navitem1.dropdown-menu.show {
		display: none !important;
	}
	.navitem1:hover .dropdown-menu {
		display: block !important;
	}
	.navitem1:focus .dropdown-menu {
		display: none !important;
	}
}

.bg-custom {
 background-color:transparent !important;

margin-top: 0px;
   position:relative;
/* #8e24aa; #aao0off*/
}

.eg{
   width:45px;
   margin-right:2px;
  
   
}
.eg2{
   width:150px;

}

.navbar-nav{
  translate:70%;
}
</style>
<nav class="navbar navbar-expand-lg  bg-custom hello">
	<div class="container-fluid ">
		<img alt="" src="img/hotel-logo.png" class="eg2">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<c:if test="${ empty userobj }">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 " style="margin-left:55%; gap:10px;">
			
		</c:if>
		
		<c:if test="${userobj.role eq 'User'}">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 " style="margin-left:30%; gap:8px;">
			
		</c:if>
		
		<c:if test="${userobj.role eq 'admin'}">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 " style="margin-left:32%; gap:10px;">
			
		</c:if>
				
					
					<!-- User validation-->
					<c:if test="${userobj.role eq 'User'}">
					 <li class="nav-item "><a class="nav-link active text-center" 
					aria-current="page" href="index.jsp"
					class="btn btn-light nav-link active">&nbsp;<b>Home</b></a></li>
       		 
						<li class="nav-item "><a href="#" class="nav-link active text-center"
					aria-current="page" data-bs-toggle="modal" data-bs-target="#exampleModal"><i
						class="fa-solid fa-user">&nbsp;</i>&nbsp;${userobj.name}</a></li>
						
					   
					    &nbsp; <li class="nav-item dropdown navitem1 "><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown">&nbsp;Settings</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							<li><a class="dropdown-item"
								href="update_profile.jsp?id=${userobj.id }"><i class="fa-solid fa-pen-to-square"></i>&nbsp;Edit Profile</a></li>
							<li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#exampleModal1"
								href="#"><i class="fa-solid fa-trash"></i>&nbsp;delete Account</a></li>
							<li><a class="dropdown-item"
								href="ViewFormFilead.jsp?id=${userobj.id}"><i class="fa-brands fa-slack"></i>&nbsp;Form Details</a></li>
	
							<li><a class="dropdown-item"
								href="logout"><i
						class="fa-solid fa-right-to-bracket"></i>&nbsp;Logout</a></li>
						</ul>
					</li>
					
					  
					</c:if>
					
					<!-- Admin validation -->
				<c:if test="${userobj.role eq 'admin'}">
								 <li class="nav-item "><a class="nav-link active text-center" 
					aria-current="page" href="index.jsp"
					class="btn btn-light nav-link active">&nbsp;<b>Home</b></a></li>
       		
                <li class="nav-item ms-1"><a class="nav-link active text-center"
					aria-current="page" href="#"
					class=" nav-link active "><i
						class="fa-solid fa-user">&nbsp;</i>&nbsp;Admin</a></li>
						
						<li class="nav-item ms-1"><a class="nav-link active text-center"
					aria-current="page" href="logout"
					class=" nav-link active ">&nbsp;Logout&nbsp;<i
						class="fa-solid fa-right-to-bracket"></i></a></li>
				</c:if>
				
				<!-- Empty validation User,Admin -->
				<c:if test="${ empty userobj }">
				<li class="nav-item "><a class="nav-link active text-center" 
					aria-current="page" href="index.jsp"
					class="btn btn-light nav-link active">&nbsp;<b>Home</b></a></li>
       		
					  <li class="nav-item ms-1"><a class="nav-link active text-center"
					aria-current="page" href="login.jsp"><i
						class="fa-solid fa-right-to-bracket">&nbsp;</i>Login</a></li>
				</c:if>
			</ul>	
				
		</div>
		<img alt="" src="img/logo.png" class="eg mx-5">
	</div>
</nav>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">

				<h5 class="modal-title" id="exampleModalLabel">Profile</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text success">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>

						<table class="table">

							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name }</th>
								</tr>


								<tr>
									<th scope="row">Email</th>
									<th>${userobj.email }</th>
								</tr>

							</tbody>
						</table>

						<!--  
					<a href="update_profile.jsp?id=${userobj.id }" class="btn btn-sm bg-success text-white ">Edit Profile</a>
				-->

					</div>
				</div>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>

			</div>
		</div>
	</div>
</div>




<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Account</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h5>Are you sure want to delete your Account</h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <a href="deleteuser?id=${userobj.id}" class="btn btn-md bg-danger text-white">Delete</a><br>
      </div>
    </div>
  </div>
</div>



