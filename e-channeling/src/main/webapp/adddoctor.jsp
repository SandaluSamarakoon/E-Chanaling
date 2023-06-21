 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="AddUser.css">
     <script src="Js/AddUser.js"></script>
     <title>Document</title>
     <style>
     
     @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}
body{
  background: #2B4141;
  padding: 0 10px;
}
.wrapper{
  max-width: 500px;
  width: 100%;
  background: #fff;
  margin: 50px auto;
  box-shadow: 2px 2px 4px rgba(0,0,0,0.125);
  padding: 30px;
}

.wrapper .title{
  font-size: 24px;
  font-weight: 900;
  margin-bottom: 30px;
  color: #8AB9B5;
  text-transform: uppercase;
  text-align: center;
}

.wrapper .form{
  width: 100%;
}

.wrapper .form .inputfield{
  margin-bottom: 15px;
  display: flex;
  align-items: center;
}

.wrapper .form .inputfield label{
   width: 200px;
   color: #2B4141;
   margin-right: 10px;
  font-size: 14px;
}

.wrapper .form .inputfield .input
{
  width: 100%;
  outline: #8AB9B5;
  border: 1px solid #d5dbd9;
  font-size: 15px;
  padding: 8px 10px;
  border-radius: 5px;
  transition: all 0.3s ease;
}



.wrapper .form .inputfield .custom_select{
  position: relative;
  width: 100%;
  height: 37px;
}

.wrapper .form .inputfield .custom_select:before{
  content: "";
 /* position: absolute;*/
  top: 12px;
  right: 10px;
  border: 8px solid;
  border-color: #d5dbd9 transparent transparent transparent;
  pointer-events: none;
}

.wrapper .form .inputfield .custom_select select{
  -webkit-appearance: none;
  -moz-appearance:   none;
  appearance:        none;
  outline: none;
  width: 100%;
  height: 100%;
  border: 0px;
  padding: 8px 10px;
  font-size: 15px;
  border: 1px solid #d5dbd9;
  border-radius: 3px;
}


.wrapper .form .inputfield .input:focus,
.wrapper .form .inputfield .custom_select select:focus{
  border: 1px solid #130e01;
}



.wrapper .form .inputfield .btn{
  width: 100%;
   padding: 8px 10px;
  font-size: 15px; 
  border: 0px;
  background:  #8AB9B5;
  color: #fff;
  cursor: pointer;
  border-radius: 3px;
  outline: none;
}

.wrapper .form .inputfield .btn:hover{
  background: #0f6d65;
}

.wrapper .form .inputfield:last-child{
  margin-bottom: 0;
}

@media (max-width:420px) {
  .wrapper .form .inputfield{
    flex-direction: column;
    align-items: flex-start;
  }
  .wrapper .form .inputfield label{
    margin-bottom: 5px;
  }
  .wrapper .form .inputfield.terms{
    flex-direction: row;
  }
}


     </style>
     
     
<!--Owl Carousel	-->	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"  />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css"  />
	
	
<!--Bootstra CSS	-->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!--Custom Style CSS	-->
<link rel="stylesheet" href="css/style.css" type="text/css">

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
          <a class="nav-link active" aria-current="page" href="#home-section">Home</a>
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
          <a class="nav-link " href="Dlogin.jsp">Login</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link " href="useraccount.jsp">Account</a>
        </li>
		  
		  
		  
		  
      </ul>
     
    </div>
  </div>
</nav>
	</div>
</header>	
<!--End Header-->
   
 
 <br><br><br><br>
    <div class="wrapper">
        <div class="title">
          Registration Form
        </div>
        <form method="Post" action="Dinsert">
        <div class="form">
           <div class="inputfield">
              <label>First Name</label>
              <input type="text" class="input" name="fname" required>
           </div>  
           
            <div class="inputfield">
              <label>Last Name</label>
              <input type="text" class="input" name="lname" required>
           </div>  
           
          <br>
          <div class="inputfield">
              <label>Email </label>
              <input type="email" class="input" name="email" pattern="[a-z0-9._%+-]+@[a-z 0-9.-]+\.[a-z]{2,3,4}" required>
           </div>
           
           <div class="inputfield">
            <label>Phone Number</label>
            <input type="text" class="input" name="Phone" pattern="[0-9]{10}" required>
          </div> 

          
           <br><br><br>

           <div class="inputfield">
             <label>Specialist Field</label>
             <div class="custom_select">
              <select name="specialist">
                <option value="">Select</option>
                <option value="pathalogy">Pathalogy</option>
                <option value="cancer">Cancer</option>
                <option value="virology">Virology</option>
             </select>
             </div>
           </div>
           
             <br><br><br>
            <div class="inputfield">
            <label>Qualification</label>
            <input type="text" class="input" name="Qualification" required>
          </div> 
           
            <div class="inputfield">
            <label>Channeling Fee</label>
            <input type="text" class="input" name="Fee" required>
          </div> 

          
          <div class="inputfield">
            <label>Password</label>
            <input type="password" class="input" name="psw" required>
          </div> 
          
        
      
          <br><br><br>
          <div class="inputfield">
          <a>
            <input type="submit" value="Register" class="btn">
            </a>
          </div>
        </div>
        </form>
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

 


 </body>
 </html>