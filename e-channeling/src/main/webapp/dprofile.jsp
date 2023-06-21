<!doctype html>
<html>
<head>
<meta charset="utf-8">
<!--For responsive		-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}
body{
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
  font-weight: 700;
  margin-bottom: 25px;
  color: #072cfe;
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
   color: #757575;
   margin-right: 10px;
  font-size: 14px;
}

.wrapper .form .inputfield .input,
.wrapper .form .inputfield .textarea{
  width: 100%;
  outline: none;
  border: 1px solid #d5dbd9;
  font-size: 15px;
  padding: 8px 10px;
  border-radius: 3px;
  transition: all 0.3s ease;
}

.wrapper .form .inputfield .textarea{
  width: 100%;
  height: 125px;
  resize: none;
}

.wrapper .form .inputfield .custom_select{
  position: relative;
  width: 100%;
  height: 37px;
}

.wrapper .form .inputfield .custom_select:before{
  content: "";
  position: absolute;
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
.wrapper .form .inputfield .textarea:focus,
.wrapper .form .inputfield .custom_select select:focus{
  border: 1px solid #fec107;
}

.wrapper .form .inputfield p{
   font-size: 14px;
   color: #757575;
}
.wrapper .form .inputfield .check{
  width: 15px;
  height: 15px;
  position: relative;
  display: block;
  cursor: pointer;
}
.wrapper .form .inputfield .check input[type="checkbox"]{
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
}
.wrapper .form .inputfield .check .checkmark{
  width: 15px;
  height: 15px;
  border: 1px solid #fec107;
  display: block;
  position: relative;
}
.wrapper .form .inputfield .check .checkmark:before{
  content: "";
  position: absolute;
  top: 1px;
  left: 2px;
  width: 5px;
  height: 2px;
  border: 2px solid;
  border-color: transparent transparent #fff #fff;
  transform: rotate(-45deg);
  display: none;
}
.wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark{
  background: #fec107;
}

.wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark:before{
  display: block;
}

.wrapper .form .inputfield .btn{
  width: 100%;
   padding: 8px 10px;
  font-size: 15px; 
  border: 0px;
  background:  #000c03;
  color: #fff;
  cursor: pointer;
  border-radius: 3px;
  outline: none;
}

.wrapper .form .inputfield .btn:hover{
  background: #061777;
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
          <a class="nav-link " href="LOGNREJ.jsp">Login</a>
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
   
   <%
      String id=request.getParameter("id");
      String fname=request.getParameter("fname");
      String lname=request.getParameter("lname");
      String email=request.getParameter("email");
      String phone=request.getParameter("phone");
      String password=request.getParameter("pass");
   %>
   
 	<br><br><br>
 	<br><br><br>

 <form action="delete" method="post">
    <div class="wrapper">
        <div class="title">
         Delete Profile
        </div>

        <div class="form">
          <div class="inputfield">
             <label>ID</label>
             <input type="text" name="cusid" value="<%= id %>" readonly class="input">
          </div>
        <div class="form">
           <div class="inputfield">
              <label>First Name</label>
              <input type="text" name="fname" value="<%= fname %>"  class="input" >
           </div>  
            <div class="inputfield">
              <label>Last Name</label>
              <input type="text" name="lname" value="<%=lname%>"  class="input"  >
           </div>    
          <!--<div class="inputfield">
              <label>Confirm Password</label>
              <input type="password" class="input">
           </div> --->
            <div class="inputfield">
              <label>Email Address</label>
              <input type="text" name="email" value="<%=email%>" class="input" >
           </div> 
           <div class="inputfield">
            <label>Phone Number</label>
            <input type="text" name="phone" value="<%=phone%>" class="input"  >
         </div>  
           <div class="inputfield">
            <label>Password</label>
            <input type="text" name="pass" value="<%=password%>" class="input"   >
         </div> 
         
          <div class="inputfield">
          <input type="submit" value="Delete" name="submit" class="btn">
          </div>
        </div>
    </div>
  </div>
</form>

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
