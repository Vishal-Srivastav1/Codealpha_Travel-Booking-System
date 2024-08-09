<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Best Domestic & International Flight Booking Website</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>

<style type="text/css">
.navbar .nav-item .nav-link {
	font-size: 20px;
	color: red;
	background:;
	border-radius: 8px;
	padding: 10px;
	width: 120px;
}

.back-img {
	background-image: url("img/Air_Home_banner1.png");
	height: 60vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.Airtick {
	border-radius: 5px;
	translate: 17% 100%;
	width: 68%;
}

.Airtick2 {
	border-radius: 5px;
	translate: 4% 65%;
	width: 93%;
	padding: 10px;
	position: relative;
}

.ssction {
	margin-top: 20%;
}

 .hide2 {
	transition: 2s;
	position: absolute;
	opacity: 0%;
	padding: 2px;
	padding: 20px;
	translate: -100% 0%;
}

 .hide2:hover {
	translate: -100% -28%;
	opacity: 100%;
	padding: 2px;
	padding: 20px;
	color: orange;
}

 .hide {
	transition: 2s;
	opacity: 100%;
	translate: 0% -28%;
	padding: 2px;
	padding: 20px;
}

.flex {
	background-color: rgb(22, 0, 80);
	padding: 5%;
	display: flex;
	height: 150px;
	justify-content: space-evenly;
}
.flex2 {
	display: flex;
	width:100%;
	justify-content:center;
	align-item:center;
	border-radius: 12px;
}

.dark1 {
	background-color: rgb(22, 0, 80);
}


</style>

</head>
<body>
	<%@include file="all_component/navbar_rail.jsp"%>
	<main>
		<div class="back-img">


			<div class="card Airtick ">
           <form action="AeroplainFilter.jsp" method="post">
				<div class="card-body d-flex ">

						 <div class="form-group col-md-3 mt-1">
							<select
								class="form-select" name="Locationstart" id="selecter1" required> 
							 <option selected disabled value="start">Origin</option>
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
						&nbsp; &nbsp;
						 <div class="form-group mt-1 col-md-3">
							<select
								class="form-select" name="Locationend" id="selecter2" required> 
							  <option selected disabled value="end">Destination</option>
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
						
&nbsp;
						 <div class="form-group date datepicker " id="">
                    <input type="text" class="form-control"  placeholder="Departure"/>
                    <span class="input-group-append">
                    </span>
                </div>

				
					&nbsp; &nbsp; &nbsp; &nbsp;
					<button type="submit" class="btn btn-primary "
						style="width: 150px;">
						<b>Search</b>
					</button>
             
				</div>
				</form>
			</div>

			<div class="d-flex Airtick2 bg-white shadow-lg">
				<p class="p-2">
					<img src="img/jupiter.png" alt="" />
				</p>
				<p class="p-2">
					<img src="img/jupiter.gif" alt="" />
				</p>
				<p class="p-2">
					<img src="img/jupiter2.gif" alt="" />
				</p>
			</div>

		</div>

		<section class="ssction">

			<div class="flex">
				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-plane-departure hide"></i> <i
						class="fa-solid fa-plane-departure hide2"></i>
					</a> <br> <b class="text-white">Flights</b>
				</p>

				<p class="hicon">
					<a href="IRCT_Hotel.jsp" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 32px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-hotel  hide"></i> <i
						class="fa-solid fa-hotel hide2"></i>
					</a> <br> <b class="text-white">HOTELS</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-bus hide"></i><i
						class="fa-solid fa-bus hide2"></i>
					</a> <br> <b class="text-white">Bus T</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-bed hide"></i><i
						class="fa-solid fa-bed hide2"></i>
					</a> <br> <b class="text-white">Retiring</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-person-walking-luggage hide"></i><i
						class="fa-solid fa-person-walking-luggage hide2"></i>
					</a> <br> <b class="text-white">Lounge</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 35px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-people-carry-box hide"></i><i
						class="fa-solid fa-people-carry-box hide2"></i>
					</a> <br> <b class="text-white">Tour P</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 32px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-train-tram hide"></i><i
						class="fa-solid fa-train-tram hide2"></i>
					</a> <br> <b class="text-white">Tourist</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-person-dots-from-line hide"></i><i
						class="fa-solid fa-person-dots-from-line hide2"></i>
					</a> <br> <b class="text-white">Buddhist</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 32px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-m hide"></i><i class="fa-solid fa-m hide2"></i>
					</a> <br> <b class="text-white">Maharajas</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-brands fa-galactic-senate hide"></i><i
						class="fa-brands fa-galactic-senate hide2"></i>
					</a> <br> <b class="text-white">G Chariot</b>
				</p>

				<p class="hicon">
					<a href="" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-ship hide"></i><i
						class="fa-solid fa-ship hide2"></i>
					</a> <br> <b class="text-white">Cruise</b>
				</p>
			</div>
			

		</section>

		
		<section class="p-5" style="background-color:#f2f2f2;">
        <div class="card acrd shadow-lg " style="background-color:#ffffff;">
                       <h1 class="text-center mt-4"><b>FAQ</b></h1>
			<div class="col-md-12 card-body flex2 ">
				<div class="col-6">
					<div class="accordion accordion-flush" id="accordionFlushExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="false" aria-controls="flush-collapseOne">
									<b>Which site is cheapest for flight Tickets?</b></button>
							</h2>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									IRCTC Air is an IATA certified website that offers affordable flight tickets for both domestic and international travel. The website uses an algorithm that compiles flight prices from different airline carriers which passengers can easily choose from.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingTwo">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
									aria-expanded="false" aria-controls="flush-collapseTwo">
									<b>How do i check flight seat availabilty?</b></button>
							</h2>
							<div id="flush-collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="flush-headingTwo"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									When you have performed a flight search on IRCTC Air you get a list of all available flights for your desired dates. After checking out prices and entering your personal information you can check flight seat availability by seeing seat map of the plane that you will be getting on for your travel and choose your seat accordingly.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingfour">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapsefour"
									aria-expanded="false" aria-controls="flush-collapsefour">
									<b>How do i book air tickets?</b></button>
							</h2>
							<div id="flush-collapsefour" class="accordion-collapse collapse"
								aria-labelledby="flush-headingfour"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									IRCTC Air is an IATA certified website that offers affordable flight tickets for both domestic and international travel. The website uses an algorithm that compiles flight prices from different airline carriers which passengers can easily choose from.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingThree">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
									aria-expanded="false" aria-controls="flush-collapseThree">
									<b>What does air ticket resarvation mean?</b></button>
							</h2>
							<div id="flush-collapseThree" class="accordion-collapse collapse"
								aria-labelledby="flush-headingThree"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									When you have performed a flight search on IRCTC Air you get a list of all available flights for your desired dates. After checking out prices and entering your personal information you can check flight seat availability by seeing seat map of the plane that you will be getting on for your travel and choose your seat accordingly.
								</div>
							</div>
						</div>
					</div>
				</div>

				
				
				<div class="col-6">
					<div class="accordion accordion-flush" id="accordionFlushExample1">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne1">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne1"
									aria-expanded="false" aria-controls="flush-collapseOne1">
									<b>How to book flight ticket?</b></button>
							</h2>
							<div id="flush-collapseOne1" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne1"
								data-bs-parent="#accordionFlushExample1">
								<div class="accordion-body">
									IRCTC Air is an IATA certified website that offers affordable flight tickets for both domestic and international travel. The website uses an algorithm that compiles flight prices from different airline carriers which passengers can easily choose from.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingTwo2">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo2"
									aria-expanded="false" aria-controls="flush-collapseTwo2">
									<b>How to get a low fare air ticket?</b></button>
							</h2>
							<div id="flush-collapseTwo2" class="accordion-collapse collapse"
								aria-labelledby="flush-headingTwo2"
								data-bs-parent="#accordionFlushExample1">
								<div class="accordion-body">
									When you have performed a flight search on IRCTC Air you get a list of all available flights for your desired dates. After checking out prices and entering your personal information you can check flight seat availability by seeing seat map of the plane that you will be getting on for your travel and choose your seat accordingly.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingfour4">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapsefour4"
									aria-expanded="false" aria-controls="flush-collapsefour4">
								<b>	How can i get the lowest flight tickets?</b></button>
							</h2>
							<div id="flush-collapsefour4" class="accordion-collapse collapse"
								aria-labelledby="flush-headingfour4"
								data-bs-parent="#accordionFlushExample1">
								<div class="accordion-body">
									IRCTC Air is an IATA certified website that offers affordable flight tickets for both domestic and international travel. The website uses an algorithm that compiles flight prices from different airline carriers which passengers can easily choose from.
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingThree3">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseThree3"
									aria-expanded="false" aria-controls="flush-collapseThree3">
									<b>Is it worth booking flights online?</b></button>
							</h2>
							<div id="flush-collapseThree3" class="accordion-collapse collapse"
								aria-labelledby="flush-headingThree3"
								data-bs-parent="#accordionFlushExample1">
								<div class="accordion-body">
									When you have performed a flight search on IRCTC Air you get a list of all available flights for your desired dates. After checking out prices and entering your personal information you can check flight seat availability by seeing seat map of the plane that you will be getting on for your travel and choose your seat accordingly.
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
       </div>
       
		</section>
		
		
		 <div class="mb-5 ">
       <img src="img/mobile.jpg" class="img-fluid shadow-lg "alt="mobile" style="height:65vh;"/>
       </div>
		
		<br>

		
		 <%@include file="all_component/footer.jsp"%>
		
		 <div class="mb-1 d-flex dark1 p-2 ">
        <div>
         <p class="text-white pt-2 mx-5">Get Connected with us on social networks</p>
        </div>
        
        <div class="d-flex">
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#4867aa;"  href=""><i class="fa-brands fa-facebook mx-1"></i> </a>
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#4867aa;"  href=""><i class="fa-brands fa-whatsapp mx-1"></i> </a>
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#2e5e86;"  href=""><i class="fa-brands fa-instagram mx-1"></i> </a>
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#ff0000;"  href=""><i class="fa-brands fa-youtube mx-1"></i> </a>
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#0270ad;"  href=""><i class="fa-brands fa-linkedin-in mx-1"></i></a>
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#c51f26;"  href=""><i class="fa-brands fa-pinterest mx-1"></i> </a>
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#29a2e0;"  href=""><i class="fa-brands fa-telegram mx-1"></i> </a>
          <a style="border: 1px solid gray; border-radius: 50%; padding:7px; width: 40px; margin:10px; background-color:#4c9be5;"  href=""><i class="fa-brands fa-twitter mx-1"></i> </a>
        </div>
		 
		 <div>
		   <p class="text-white pt-2 ms-5" >© 2024 IRCTC | All Right Reserved.</p>
		 </div>
	</div>
	
	
	
	
	<script type="text/javascript">
    $(function() {
        $('.datepicker').datepicker();
    });
</script>
	</main>
</body>
</html>