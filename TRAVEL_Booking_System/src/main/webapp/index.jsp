<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IRCTC Next Generation eTicketing System</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>

<style type="text/css">

.back-img {
	background-image: url("img/train2.jpeg");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.flex {
	display: flex;
	justify-content: space-around;
}

.btn-group1 {
	width: 250px;
}

.TICKET {
	border-radius: 5px;
	translate: -4% 6%;

}

.grid {
	display: flex;
	padding: 5%;
	gap: 23px;
	justify-content: center;
	align-items: center;
}

.icon:hover {
	background: blue;
	color: white;
}

.dark1 {
	background-color: rgb(22, 0, 80);
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
	translate: -96% -32%;
	opacity: 100%;
	padding: 21px;
	color:orange;
	background-color: rgb(22, 0, 80);
	border: 1px solid gray; 
	border-radius: 50%;
}
.hide {
	transition: 2s;
	opacity: 100%;
	translate: 0% -28%;
	padding: 2px;
	padding: 20px;
}
</style>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<main>
		<div class="back-img">
                <c:if test="${not empty succMsg }">     <!--Jstl jar codes  -->	
							<div class="alert alert-success text-center" role="alert">${succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
			<div class="flex">
				<div class="TICKET">
					<div class="card shadow-lg" style="padding: 10px;">
						<div class="card-body">
							<h5 class="card-title p-4 text-center text-primary"
								style="font-size: 30px;">
								<b>BOOK TICKET</b>
							</h5>
							<div>
								<form action="TrainFilter.jsp" method="post">
									<div class="d-flex">
										<div>
											 <div class="form-group">
									<label for="selecter1" class="form-label">From Stations</label> <select
										class="form-select" name="Locationstart" id="selecter1" required>               
										<option selected disabled value="start">From Stations...</option>
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
                                                <p class="text-center mt-2"  style="transform: rotate(90deg);"> <i class="fa-solid fa-arrow-right-arrow-left" style="color: #B197FC;"></i></p>
											
											 <div class="form-group mb-3" style="margin-top:-14%;">
									<label for="selecter2" class="form-label">To Stations</label> <select
										class="form-select" name="Locationend" id="selecter2" required>               
										<option selected disabled value="end">From Stations...</option>
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
											
											<div class="btn-group mb-3">
															<input type="text" list="location" class="form-control" placeholder="e.g.- GENERAL" />
															<datalist id="location">
															  <option value="GENERAL"></option>
															<option value="LADIES"></option>
															<option value="LOWER BERTH/SR.CITIZEN"></option>
															<option value="PERSON WITH DISABILITY"></option>
															<option value="TATKAL"></option>
															<option value="DUTY PASS"></option>
															
															</datalist >
														
											</div>
										</div>
										&nbsp; &nbsp; &nbsp;

										<div class="mt-4">
										
											<div class="mb-5 mt-2">
												<input type="date" class="form-control" />
											</div>

											
											<div class="btn-group">
															<input type="text" list="location" class="form-control" placeholder="e.g.- All Classes" />
															<datalist id="location">
															  <option value="AC First Class (1A)"></option>
															<option value="AC 2 Tier (2A)"></option>
															<option value="First Class (FC)"></option>
															<option value="AC 3 Tier (3A)"></option>
															<option value="AC 3 Economy (3E)"></option>
															<option value="Sleeper (SL)"></option>
															<option value="Lucknow (LKO)"></option>
															
															
															</datalist >
														
											</div>
										</div>
									</div>
									
							
									<div class="d-flex">
										<div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault"> <label
													class="form-check-label" for="flexCheckDefault">
													Person With Disabillity Concession </label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked" checked> <label
													class="form-check-label" for="flexCheckChecked">
													Train with Available Berth </label>
											</div>
										</div>
										&nbsp; &nbsp; &nbsp;
										<div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault" checked> <label
													class="form-check-label" for="flexCheckDefault">
													Flexible With Date </label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault"> <label
													class="form-check-label" for="flexCheckChecked">
													Railway Pass Concession </label>
											</div>
										</div>
									</div>
								
								<button type="submit" class="btn btn-primary mt-5 w-25">
									<b>Search</b>
								</button>
							</form>
							</div>
							<p class="mt-4 text-center card-link">
								<a class="text-dark" href="">Please click here for Empanelment for PAD items
									for Catering.</a>
							</p>
							
						</div>
					</div>
				</div>

				<div class="">
					<h1 class="text-primary mt-2"
						style="font-size: 50px; color: yellow;">
						<b>INDIAN RAILWAYS</b>
					</h1>
					<p class="p-2 text-center" style="font-size: 25px; color: tomato;">
						Safety <span>|</span> Security <span>|</span> Punctuality
					</p>
				</div>
			</div>
		</div>
		<hr class="hr-divider ">
	
	
		<section>
			<br>
			<div class="text-center" style="margin-bottom: 4%;">
				<h1 class="p-3 "style="color: rgb(22, 0, 80);">
					Have you not found the right one? <br> Find a service suitable
					for you here.
				</h1>

				<div class="d-flex flex p-3 mt-5">
					<p class="shadow-lg">
						<a href="IRCT_Aeroplain.jsp" class="icon"
							style="border: 1px solid gray; border-radius: 50%; padding: 25px; width: px; background-color:#4867aa;">
							<i class="fa-solid fa-plane"></i></a> <br>
						<br> <b>FLIGHTS</b>
					</p>

					<p class="shadow-sm">
						<a href="IRCT_Hotel.jsp" class="icon"
							style="border: 1px solid gray; border-radius: 50%; padding: 25px; width: px; background-color:#2e5e86;"><i
							class="fa-solid fa-hotel"></i></a> <br>
						<br> <b>HOTELS</b>
					</p>

					<p class="shadow-sm">
						<a href="" class="icon"
							style="border: 1px solid gray; border-radius: 50%; padding: 25px; width: px; background-color:#4c9be5;"><i
							class="fa-solid fa-chart-line"></i></a> <br>
						<br> <b>RAIL DRISHTI</b>
					</p>

					<p class="shadow-lg">
						<a href="" class="icon"
							style="border: 1px solid gray; border-radius: 50%; padding: 25px; width: px; background-color:#c51f26;"><i
							class="fa-solid fa-bus"></i></a> <br>
						<br> <b>BUS</b>
					</p>
				</div>

				<div class="d-flex flex p-3">
					<p class="shadow-sm">
						<a href="" class="icon"
							style="border: 1px solid gray; border-radius: 50%; padding: 25px; width: px; background-color:#4c9be5;"><i
							class="fa-solid fa-train-tram"></i></a> <br>
						<br> <b>TOURIST TRAIN</b>
					</p>

					<p class="shadow-sm">
						<a href="" class="icon"
							style="border: 1px solid gray; border-radius: 50%; padding: 25px; width: px; background-color:#f7bb19;"><i
							class="fa-solid fa-umbrella-beach"></i></a> <br>
						<br> <b>HOLIDAY PACKAGES</b>
					</p>

					<p class="shadow-sm">
						<a href="" class="icon"
							style="border: 1px solid gray; border-radius: 50%; padding: 25px; width: px; background-color:#ff0000;"><i
							class="fa-solid fa-person-hiking"></i></a> <br>
						<br> <b>HILL RAILWAYS</b>
					</p>
				</div>
                
                 
			</div>
          <div class="text-center mb-4">
          <h3 class="text-muted">Available Services...</h3>
          <div class="gap-5" style="display:flex; justify-content:center;">
          <p class="me-0">Flights</p>
          <p class="mx-3">Hotels</p>
          <p class="mx-0">Trains</p>
          </div>
          <div class="gap-5 p-2" style="display:flex; justify-content:center;">
          
          <p>
           <a href="IRCT_Aeroplain.jsp" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
					<i class="fa-solid fa-plane hide"></i> <i class="fa-solid fa-plane hide2"></i>	
				</a> 
          </p>
					
					<p>
					 <a href="IRCT_Hotel.jsp" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-hotel hide"></i><i
						class="fa-solid fa-hotel hide2"></i>
					</a> 
					</p>
					
					<p>
					 <a href="index.jsp" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-train-tram hide"></i><i
						class="fa-solid fa-train-tram hide2"></i>
					</a> 
					</p>
					
					 </div>
          
          </div>
           <hr>


</br>
                          <h1 class="text-center " style="color: rgb(22, 0, 80);"><b>HOLIDAYS</b></h1>
			<div class="grid">

                       
				<div class="card shadow-lg">
					<img src="img/Manali.jpg" class="card-img-top " alt="...">
					<div class="card-body">
						<h5 class="card-title">Tour Packages</h5>
						<p class="card-text">IRCTC offers Exclusive Rail tour packages
							with confirmed train tickets, sight-seeing and meals for
							enchanting Nilgiri Mountains, Darjeeling, Kullu Manali, Kashmir,
							Gangtok or divine tours of Mata Vaishno Devi, Rameswaram,
							Madurai, Shirdi, Tirupati etc. Holiday packages/ Land packages to
							these destinations are also available.</p>
						<a href="#" class="btn btn-primary">Read More</a>
					</div>
				</div>

				<div class="card shadow-lg">
					<img src="img/Thailand.jpg" class="card-img-top " alt="...">
					<div class="card-body">
						<h5 class="card-title">International Packages</h5>
						<p class="card-text">Best deals in International Holiday
							packages, handpicked by IRCTC, for Thailand, Dubai, Sri Lanka,
							Hong Kong, China, Macau, Bhutan, Nepal, U.K., Europe, USA,
							Australia etc. The packages are inclusive of sightseeing, meals,
							visa charges and overseas medical insurance to give you a
							hassle-free and memorable experience.</p>
						<a href="#" class="btn btn-primary">Read More</a>
					</div>
				</div>


				<div class="card shadow-lg">
					<img src="img/Kashmir.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Domestic Air Packages</h5>
						<p class="card-text">Be it the spiritual devotee seeking
							blessings of Tirupati, Shirdi or Mata Vaishno Devi or the leisure
							traveller wanting to relish the Blue mountains of North East,
							Sand-dunes of Rajasthan, Hamlets of Ladakh, Wonders of Himalayas,
							Serene lakes or Picturesque Islands, IRCTC has it all. Discover
							India through IRCTC!</p>
						<a href="#" class="btn btn-primary">Read More</a>
					</div>
				</div>


			</div>

		</section>
		
		 <div class="mb-1 flex dark1 p-2 ">
        <div>
         <p class="text-white pt-2">Get Connected with us on social networks</p>
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
		
	</div>
          
          <%@include file="all_component/footer.jsp"%>  
            
            
            
            
            <script type="text/javascript">
    $(function() {
        $('.datepicker').datepicker();
    });
</script>
	</main>
</body>
</html>