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
                <a href="/getSignUpPage" class="btn btn-warning btn-small navbar-btn" >Sign Up</a> 
            </li> 
            <li class="nav-item"> 
                <a href="/getLogOut" class="btn btn-warning btn-small navbar-btn" >Log Out</a> 
            </li> 
        </ul> 
    </nav> 
</header>

<br>
<br>

<div align="center" style="color: white">
		<h2 class=" display-4 card-header success-color white-text text-center py-4"><strong>Login</strong></h2></center>
		<div  class="form-area text-white text-large">
		
		<!-- Form -->
		<form:form action="/getLoginPage" method="post" modelAttribute="user">
			<br>
			<div class="form-row-6">
			<div class="md-form">
			<!-- User ID -->
			<div class="col-md-15">
				<form:input path="userId" name="userId" class="form-control"/>
				<label for="userid">Enter User ID</label>
				<form:errors path="userId"></form:errors>
				</div>
				</div>
								
				<div class="md-form">
				<!-- Password -->
				<div class="col-md-15">
					<form:input path="password" 
							name="password" class="form-control" />
					<label for="password">Enter Password:</label>	
					<form:errors path="password"></form:errors>
					</div>
					</div>
					</div>
			
			

			<!-- Forgot Pass -->		
						
			<li id="adminlink" style="padding-right:5px;">
                <a href="/forgotPass" class="btn text-warning btn-small navbar-btn">Forgot Password</a> 
            </li> 
            
            <!-- Forgot ID -->
            
            <li id="adminlink" style="padding-right:5px;">
                <a href="/forgotEnter" class="btn text-warning btn-small navbar-btn">Forgot User ID</a> 
            </li> 
           
           	<!-- Sign in button -->
            <button class="btn btn-success btn-small navbar-btn" type="submit" style=" padding-right: 5px;">Sign In</button>
			<h3>${invalid}</h3>
			
			<li id="adminlink" style="padding-right:10px;">
                <a href="/getAdminLoginPage" class="btn btn-danger btn-small navbar-btn" >Click here for Admin login</a> 
            </li> 
            
            
      </form:form>
      
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