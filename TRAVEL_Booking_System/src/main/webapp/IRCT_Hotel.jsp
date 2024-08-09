<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IRCTC Hotels</title>
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
	background-image: url("img/hotel-bg.jpg");
	height: 100vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	
}

.Airtick {
	border-radius: 5px;
	translate: 10% 70%;
	width: 85%;
	background-color: cyan;
	
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
	background-color: #0d7cd6;
	padding: 5%;
	display: flex;
	height: 150px;
	justify-content: space-evenly;
	translate: 4% 75%;
	width: 93%;
	border-radius: 12px;
	
}
.flex2 {
	display: flex;
	width:100%;
	justify-content:center;
	align-item:center;
	border-radius: 12px;
}
.flex3 {
	display: flex;
	width:100%;
	justify-content:space-between;
	
}

.pd{
   padding:5%;
}

.dark1 {
	background-color: rgb(22, 0, 80);
}

a{
 color:white;
 text-decoration: none;
 tranisition: 2s;
 
}
a:hover{
 color:yellow;
 
}

</style>

</head>
<body>
	
	<main>
		<div class="back-img">
             <%@include file="all_component/navbar_Hotel.jsp"%> 
             
             <div style="margin-top:3%; margin-left:5%;">
               <h1 class="text-primary">NEED A GOOD REST</h1>
               <h4 style="color:#ffffff;">The best place to enjoy your life</h4>
             </div>
          
			<div class="card Airtick ">
				<div class="card-body d-flex ">

					<form action="HotelFilter.jsp" method="post">
					    
                         <div class="btn-group">

									
									<select class="form-select" name="HotelN" id="selecter3"
										required>
										<option selected disabled value="start"> Hotels...</option>
										<option value="Hotel Shivdev International">Hotel
											Shivdev International</option>
										<option value="Fabhotel Sparkling">Fabhotel Sparkling</option>
										<option value="Haritma Resort">Haritma Resort</option>
										<option value="YOYO">YOYO</option>
										<option value="Hotel Mannat">Hotel Mannat</option>
										<option value="Pearl Cabin">Pearl Cabin</option>

									</select>
								</div>
								
								<div class="btn-group ">
                                   
									<select class="form-select" name="Location" id="selecter1"
										required>
										<option selected disabled value="end">Origin</option>
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

                    <div class="btn-group date datepicker" id="">
                    <input type="text" class="form-control"  placeholder="Check In Date" />
                    <span class="input-group-append">
                    </span>
                </div>
						
						
						<div class="btn-group">
							<input type="text" class="form-control"  placeholder="e.g.- Rooms 1/2" />
						</div>

					
					&nbsp; &nbsp; &nbsp; &nbsp;
					<button type="submit" class="btn btn-primary "
						style="width: 150px;">
						<b>Search</b>
					</button>
</form>
				</div>
			</div>

			
<!-- -------------------------------- -->
    <div class="flex">
				<p class="hicon">
					<a href="IRCT_Aeroplain.jsp" class="icon"
						style="border: 1px solid gray; border-radius: 50%; padding-top: 34px; width: 65px; background-color: white; color: rgb(22, 0, 80);">
						<i class="fa-solid fa-plane-departure hide"></i> <i
						class="fa-solid fa-plane-departure hide2"></i>
					</a> <br> <b class="text-white">Flights</b>
				</p>

				<p class="hicon">
					<a href="#" class="icon"
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
<!-------------------------------->

		</div>

		<section>
       <div class="pd">
        <h5 class=" mx-4" style="color:#0079cf;">Quick</h5>
        <h3 class="mx-4">Search</h3>
        <p class="mt-2 text-center p-1 mx-4" style="background-color:#0079cf; width:130px;">Domestic Hotel</p>
            <div class="d-flex">
                
                <div class="">
                 <ul class="">
                  <li class="list-group">
                  
                     <h5>Delhi</h5>
                     <p>Hotels, Budget Hotels, Resorts, Best Hotels, North Goa, Villas</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Mumbai</h5>
                     <p>Hotels, Budget Hotels, Resorts, Couple Hotels, Near Mumbai Airport</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Chennai</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Varanasi</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                 </ul>
                </div>
                
                
                <div class="">
                   <ul class="">
                  <li class="list-group">
                     <h5>Goa</h5>
                     <p>Hotels, Budget Hotels, Resorts, Best Hotels, North Goa, Villas</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Shimla</h5>
                     <p>Hotels, Budget Hotels, Resorts, Couple Hotels, Near Mumbai Airport</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Pune</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Udaipur</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                 </ul>
                </div>
                
                
                <div class="">
                 <ul class="">
                  <li class="list-group">
                     <h5>Bangalore</h5>
                     <p>Hotels, Budget Hotels, Resorts, Best Hotels, North Goa, Villas</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Jaipur</h5>
                     <p>Hotels, Budget Hotels, Resorts, Couple Hotels, Near Mumbai Airport</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Hyderabad</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Chandigarh</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                 </ul>
                </div>
                
                
                <div class="">
                 <ul class="">
                  <li class="list-group">
                     <h5>Ooty</h5>
                     <p>Hotels, Budget Hotels, Resorts, Best Hotels, North Goa, Villas</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Manali</h5>
                     <p>Hotels, Budget Hotels, Resorts, Couple Hotels, Near Mumbai Airport</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Kolkata</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                  <li class="list-group">
                     <h5>Tirupati</h5>
                     <p>Hotels, Resorts, Budget Hotels, Best Hotels</p>
                  </li>
                  
                 </ul>
                </div>
                
            </div>
       </div>
			

		</section>

		<section>
		
		<div class="d-flex" style="padding:4%; gap:8px;">
		    
		    <div class="card shadow" style="width: 18rem;">
			  <img src="img/IRCTC_G.jpg" class="card-img-top" height="240px" alt="...">
			  <div class="card-body">
			    <p class="card-title text-muted ">IRCTC GUEST HOUSE FOOD STATION AND SHOPPING LOUNGE</p>
			    <p class="card-text"><i class="fa-solid fa-bed"></i>&nbsp;1 Room per night <br> Katra <br> <b>&#8377; 532/-</b>  <a href="#" class="btn btn-primary" style="margin-left:30%;">Book Now</a></p>
			   
			  </div>
			</div>
			
			 <div class="card shadow-lg" style="width: 18rem;">
			  <img src="img/card-1.png" class="card-img-top" height="240px" alt="...">
			  <div class="card-body">
			    <p class="card-title text-muted mt-3 ">Crescent Park - Chennai</p>
			     <p class="card-text"><i class="fa-solid fa-bed"></i>&nbsp;1 Room per night <br> Katra <br> <b>&#8377; 532/-</b>  <a href="#" class="btn btn-primary" style="margin-left:30%;">Book Now</a></p>
			   </div>
			</div>
			
			 <div class="card shadow" style="width: 18rem;">
			  <img src="img/card-2.png" class="card-img-top" height="240px" alt="...">
			  <div class="card-body">
			    <p class="card-title text-muted mt-3 ">MPT Avantika, Ujjain</p>
			     <p class="card-text"><i class="fa-solid fa-bed"></i>&nbsp;1 Room per night <br> Katra <br> <b>&#8377; 532/-</b>  <a href="#" class="btn btn-primary" style="margin-left:30%;">Book Now</a></p>
			    </div>
			</div>
			
			 <div class="card shadow-lg " style="width: 18rem;">
			  <img src="img/card-3.png" class="card-img-top " height="240px" alt="...">
			  <div class="card-body">
			    <p class="card-title text-muted mt-3  ">Rahi Tourist Bungalow, Varanasi</p>
			    <p class="card-text"><i class="fa-solid fa-bed"></i>&nbsp;1 Room per night <br> Katra <br> <b>&#8377; 532/-</b>  <a href="#" class="btn btn-primary" style="margin-left:30%;">Book Now</a></p>
			    </div>
			</div>
		    
		</div>
		
		</section>
	
		
           <div class="" style="background-color:#212529; color:white;">
           <div class="pd d-flex gap-5 " style="justify-content: space-evenly;">
             <div>
               <h4 class="">Popular Cities</h4>
               <hr class="divider">
               <div class="d-flex gap-5">
               <p>
                New Delhi <br>MumbaiChennai<br>Kolkata<br>Bangalore<br>Amritsar<br>Agra<br>Katra<br>Shirdi</p>
               <p>Goa<br>Hyderabad<br>Jaipur<br>Tirupati<br>Udaipur<br>Haridwar<br></p>
               </div>
             </div>
             
             <div>
             <h4 class="">Services</h4>
             <hr class="divider">
             <p>Retiring Rooms<br>
				IRCTC Tourism<br>
				Flights<br>
				E-Catering<br>
				E-Ticketing
			</p>
             </div>
             
             <div>
             <h4 class="">Partners</h4>
             <hr class="divider">
               <div class="d-flex gap-3">
                <p>
                  MakeMyTrip<br>IRCTC Guest House Katra<br>OGAMP<br> TourismLeroi Hotel<br>Hotel Mayur<br>Best Western Hotels<br>Sapphero Resort<br>Vishesh Hotels</p>
               <p>Centaur Hotels<br>LH Hotels<br>KTDC<br>Krishna Residency<br>Swati Deluxe<br></p>
             
               </div>
              </div>
             
             <div>
             <h4 class="">About Us</h4>
             <hr class="divider">
               <p>About Us<br>
Travel Agents<br>
FAQ<br>
Privacy Policy<br>
Terms & Conditions</p>
             </div>
           </div>
		</div>
		
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