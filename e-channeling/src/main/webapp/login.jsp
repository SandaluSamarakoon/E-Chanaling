<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<style >
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body{
  margin: 0;
  padding: 0;
  background: linear-gradient(120deg,#e8e8e9, #f4f2f5);
  height: 100vh;
  overflow: hidden;
}
.center{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 400px;
  background: white;
  border-radius: 10px;
  box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
}
.center h1{
  text-align: center;
  padding: 20px 0;
  border-bottom: 1px solid silver;
}
.center form{
  padding: 0 40px;
  box-sizing: border-box;
}
form .txt_field{
  position: relative;
  border-bottom: 2px solid #adadad;
  margin: 30px 0;
}
.txt_field input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}
.txt_field label{
  position: absolute;
  top: 50%;
  left: 5px;
  color: #adadad;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
  transition: .5s;
}
.txt_field span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9;
  transition: .5s;
}
.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
  top: -5px;
  color: #2691d9;
}
.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{
  width: 100%;
}
.pass{
  margin: -5px 0 20px 5px;
  color: #a6a6a6;
  cursor: pointer;
}
.pass:hover{
  text-decoration: underline;
}
input[type="submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
}
input[type="submit"]:hover{
  border-color: #2691d9;
  transition: .5s;
}
.signup_link{
  margin: 30px 0;
  text-align: center;
  font-size: 16px;
  color: #666666;
}
.signup_link a{
  color: #2691d9;
  text-decoration: none;
}
.signup_link a:hover{
  text-decoration: underline;
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
   
	


<br><br><br><br><br>
<body>

    <div class="center">
      <h1>View My Profile</h1>
      <form action="login" method="post">
        <div class="txt_field">
          <input type="text" name="uemail" required>
          <span></span>
          <label>Email</label>
        </div>
        <div class="txt_field">
          <input type="password" name="password" required>
          <span></span>
          <label>Password</label>
        </div>
        <div class="pass">Forgot Password?</div>
        <input type="submit" value="Login">
        <div class="signup_link">
          Not a member? <a href="LOGNREJ">Signup</a>
        </div>
      </form>
    </div>

    <!--<form action="log" method="post">
      Email <input type="text" name="uemail"> <br>
      Password <input type="password" name="pass"><br>
      
      <input type="submit" name="submit" >
    </form>--->

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
</script>
</body>
</html>
