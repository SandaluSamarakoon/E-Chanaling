<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<!--For responsive		-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	
	
<title>Medical HTML</title>

<!--Owl Carousel	-->	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"  />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css"  />
	
	
<!--Bootstra CSS	-->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!--Custom Style CSS	-->
<link rel="stylesheet" href="css/LOGNREJ.css" type="text/css">	
</head>

<body>
	

	
<!--Start Header	-->
<header>
	   <div class="container">
	     <nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
	    <img src="images/logo.png" alt="">
	  </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#about-section">About</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " href="#services-section">Services</a>
        </li>
		   <li class="nav-item">
          <a class="nav-link " href="#reviews-section">Reviews</a>
        </li>
		    <li class="nav-item">
          <a class="nav-link " href="#team-section">Our Doctors</a>
        </li>
		  
		    <li class="nav-item">
          <a class="nav-link " href="#blog-section">Blog</a>
        </li>
		  
		 <li class="nav-item">
          <a class="nav-link " href="#booking-section">Login</a>
        </li>
        
          <li class="nav-item">
          <a class="nav-link " href="#booking-section">For Doctor</a>
        </li>
        
		  
		  		  
      </ul>
     
    </div>
  </div>
</nav>
	</div>
	</header>	
<!--End Header	-->

<br><br><br>
<body>
<div class="wrapper">
	<div class="modalForm">
		<div class="actionBtns">
			<button class="actionBtn signupBtn">Singup</button>
			<button class="actionBtn loginBtn">Login</button>
			<button class="moveBtn">Singup</button>
		</div>
		<div class="userForm">
			<form action="insert"  method="post" class="form singup singupForm">
				<div class="inputGroup">
					<input type="text" placeholder="First name" name="fname" required >
				</div>
				<div class="inputGroup">
					<input type="text" placeholder="Last name" name="lname" required>
				</div>
				<div class="inputGroup">
					<input type="email" placeholder="Email address" name="email" pattern="[a-z0-9._%+-]+@[a-z 0-9.-]+\.[a-z]{2,3,4}" required>
				</div>
				<div class="inputGroup">
					<input type="text" placeholder="Phone" name="phone" pattern="[0-9]{10}" required>
				</div>
				<div class="inputGroup">
					<input type="password" placeholder="Password" name="psw" id="message" required>
				</div>
				
			<!-- <div class="inputGroup">
					<input type="password" placeholder="Conform Password" name="psw" id="message2" required>
				</div>  -->
				
				<!-- -<div class="inputGroup">
					<input type="password" placeholder="Confirm password" autocomplete="offf">
				</div> --->
				
				<button type="submit" name="submit" class="submitBtn">Singup</button>
			</form>

			<form action="login" method="post" class="form login">
				<div class="inputGroup">
					<input type="email" placeholder="Email address" name="uemail" pattern="[a-z0-9._%+-]+@[a-z 0-9.-]+\.[a-z]{2,3,4}" required>
				</div>
				<div class="inputGroup">
					<input type="password" placeholder="Password" name="password"  required>
				</div>
				<input type="submit" class="submitBtn" value="Login">
			</form>
		</div>
	</div>
</div>
<!--Start Footer	-->

<footer>
	<div class="container">
		<div class="row">
			
			<div class="col-md-4">
				 <div class="footer-widget">
					 <h3>Contact Us</h3>
					 
					 <ul class="footer-address">
						 
						 <li>
						   <i class="fa fa-phone" aria-hidden="true"></i>
							 <div>
								<h4>Phone</h4>
								 <p> <a href="tel:+0123456789">+0123456789</a></p>
							 </div>
						 </li> 
						 
						  <li>
						  <i class="fa fa-envelope-o" aria-hidden="true"></i>
							 <div>
								<h4>Email</h4>
								 <p> <a href="tel:+0123456789">Support@company.com</a></p>
							 </div>
						 </li> 
						 
						 
					 </ul>
				</div>
			</div> 
			
			
			
		   <div class="col-md-2">
				 <div class="footer-widget">
					 <h3>Services</h3>
					  <ul class="footer-menu">
						  <li> <a href="#"> Neurology </a> </li>
						  <li> <a href="#"> Eyes care </a> </li>
						  <li> <a href="#"> Pulomonary</a> </li>
						  <li> <a href="#"> Cardiology</a> </li>
						  <li> <a href="#">Dental Care</a> </li>
						  <li> <a href="#">Hepatology</a> </li>
					 </ul>
				</div>
			</div>  
			
			
		   <div class="col-md-2">
				 <div class="footer-widget">
					 <h3>Services</h3>
					  <ul class="footer-menu">
						  <li> <a href="#"> Neurology </a> </li>
						  <li> <a href="#"> Eyes care </a> </li>
						  <li> <a href="#"> Pulomonary</a> </li>
						  <li> <a href="#"> Cardiology</a> </li>
						  <li> <a href="#">Dental Care</a> </li>
						  <li> <a href="#">Hepatology</a> </li>
					 </ul>
				</div>
			</div>   
			
			
			   <div class="col-md-4">
				 <div class="footer-widget">
					 <h3>Newsletter</h3>
					  <form>
						  <input type="email" placeholder="Enter Email"  class="form-control mb-2">
						  <input type="submit" value="Subscribe"  class="btn btn-white">
					 </form>
				</div>
			</div>   
			
			
			
			
		</div>
   </div>	
</footer>	
<!--End Footer	-->
<script>
const singupBtn = document.querySelector(".signupBtn");
const loginBtn = document.querySelector(".loginBtn");
const moveBtn = document.querySelector(".moveBtn");
const singup = document.querySelector(".singup");
const login = document.querySelector(".login");

loginBtn.addEventListener("click",()=>{
    moveBtn.classList.add("rightBtn");
    login.classList.add("loginForm");
    singup.classList.remove("singupForm");
    moveBtn.innerHTML = "Login";
})

singupBtn.addEventListener("click",()=>{
    moveBtn.classList.remove("rightBtn");
    login.classList.remove("loginForm");
    singup.classList.add("singupForm");
    moveBtn.innerHTML = "Singup";
})

/*  function checkPassword(){
    let password = document.getElementById("password").value;
    let cnfrmPassword = document.getElementById("cnfrm-password").value;
    console.log(" Password:", password,'\n',"Confirm Password:",cnfrmPassword);
    let message = document.getElementById("message");

    if(password.length != 0){
        if(password == cnfrmPassword){
            message.textContent = "Passwords match";
            message.style.backgroundColor = "#1dcd59";
        }
        else{
            message.textContent = "Password don't match";
            message.style.backgroundColor = "#ff4d4d";
        }
    }
    else{
        alert("Password can't be empty!");
        message.textContent = "";
    } 
} */

/* Function validatePw (

		var pass1 = document.getElementById("message").value;

		var pass2 = document.getElementById("message2").value;

		If (pass1 == pass2 )
		{
		    alert ("Passwords match");
		}

		Else alert ("Passwords do not match");

		) */

</script>
</body>
</html>
