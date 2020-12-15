<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"> </script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"> </script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>

<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>
</head>

<body style="background-color: black; background-image: url('https://wallpapercave.com/wp/wp2939880.jpg')";>

<div class="form" >

<header class="bg-dark" style="height: 3rem;">
<div class="bg-dark">
	<center ><h1 style="font-size:50px;" class=" text-white" id="home_heading"><strong>Life Insurance Management private Limited</strong></h1></center>
</div>
   <nav class="navbar navbar-expand-sm bg-dark"> 
        <ul class="navbar-nav ml-auto"> 
        <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getHomePage" class="btn btn-warning btn-small navbar-btn" >Home Page</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/verification" class="btn btn-warning btn-small navbar-btn" >Change Password</a>
            </li> 
            <li> </li>
            <li class="nav-item" style="padding-right:10px;"> 
                <a href="/getLoginPage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Sign In</a> 
            </li> 
            <li class="nav-item" style="padding-right:10px;">
                <a href="/getSignUpPage" class="btn btn-warning btn-small navbar-btn" >Sign Up</a> 
            </li> 
			
        </ul> 
    </nav> 
</header>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<div align="center" style="color: white">
		
		<div  class="form-area text-white text-large">
		
<br>

<h6 class=" display-4 card-header success-color white-text text-center py-4">You have Successfully Logged Out</h6></center>
            <!-- Forgot ID -->
            
                        <li class="nav-item" style="padding-right:10px;">
                <a href="/getHomePage" class="btn btn-warning btn-small navbar-btn" >Return to Home Page</a> 
            </li> 
           
        
            
      
	</div>
	</div>
	</div>
	</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<footer class="page-footer font-small bg-dark text-white  teal pt-4">
<!--/.First column-->  
      <div class="container text-center mt-1 ">
	        </h6>
	        	<a href="/getFeedBackPage" class=" align-self-center ml-2 text-white"><strong>Customer FeedBack</strong></a><br>
	        	<a href="/getContactPage" class="align-self-center ml-2 text-white"><strong>Contact Us</strong></a><br>
        </div>
<!--/.First column-->
<!--/.Copyright -->  
  	<div class="footer-copyright text-center py-3">
    &copy; 2020 Copyright:
	<a href="/getHomePage" class="text-white"><strong> LifeInsurance.com</strong></a>
  </div>
<!--/.Copyright -->
</footer>

</html>