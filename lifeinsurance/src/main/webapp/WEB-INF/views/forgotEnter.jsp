<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot ID</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style><%@ include file="/WEB-INF/styles/style.css"%>
</style>
</head>
<body class="bg" style="background-color: #484544;">



	<header class="bg-dark" style="height: 3rem;">
		<div class="bg-dark">
			<center>
				<h1 style="font-size: 50px;" class=" text-white" id="home_heading">
					<strong>Life Insurance Management private Limited</strong>
				</h1>
			</center>
			
			
			<nav class="navbar navbar-expand-sm bg-dark">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item" style="padding-right: 10px;"><a
					href="/getHomePage" class="btn btn-warning btn-small navbar-btn">Home
						Page</a></li>
				
				<li></li>
				<li class="nav-item" style="padding-right: 10px;"><a
					href="/getLoginPage" class="btn btn-warning btn-small navbar-btn ">Sign
						In</a></li>
				
				
			</ul>
		</nav>
		</div>
	</header>
	
	<div class="container-fluid ">
		<div class="container" style="margin-top: 100px">
			
				<br> <br>
				<br>
				<div align="center" style="color: white">
	<h5 class=" display-4 card-header success-color white-text text-center py-4"><strong>Enter the Details for a Recovery  User ID</strong></h5>
				</div>
		
			<br>
			<br>
			<div class="container">
<form:form action="/forgotEnter" method="GET" name="userRegister"
			modelAttribute="user" class="w-100">
			<table>
			<div class="input-group mb-3 row col-md-12 w-100">
							<div class="col-md-3"></div>
							<div class="input-group-prepend col-md-2 ml-3 h-100">
							<div style="font-size:25px" class="md-form text-white">
								<strong>Enter Contact</strong>
								</div>
							</div>

			
					<div class="col-md-6">
					<form:input path="contact" 
							placeholder="Contact"  class="input-group-text-border-custom"/>
							</div>
						</div>
						<center>
				<div style="font-size:25px" class="md-form text-white">
				<h1>OR</h1>
				</div>
				</center>
				
				
				<div class="input-group mb-3 row col-md-12 w-100">
							<div class="col-md-3"></div>
							<div class="input-group-prepend col-md-2 ml-3 h-100">
							<div style="font-size:25px" class="md-form text-white">
								<strong>Enter Email</strong>
							</div>
							</div>
				<div class="col-md-6">
					
					<form:input path="email" name="email"
							placeholder="ID@Domain" class="input-group-text-border-custom" />
							</div>
						</div>
						<center>
<button class="btn btn-warning  btn-rounded btn-small navbar-btn text-dark" type="submit">Proceed</button>
			
			
			
						
				<div style="font-size:25px" class="md-form text-white">
				<h2><strong>${status}</strong></h2>
				</div>
				</center>
			
				</form:form>
				</div>
				</div>
				</div>
				
</table>
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
</body>
</html>