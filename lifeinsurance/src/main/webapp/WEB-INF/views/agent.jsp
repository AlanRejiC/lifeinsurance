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
<style><%@ include file="/WEB-INF/styles/style.css"%>
</style>
<title>Become an agent</title>
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
</head>
<body style="background-image: url('img/login.jpg');max-width:100%";>
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
					<li class="nav-item" style="padding-right: 10px;"><a
						href="/verification" class="btn btn-warning btn-small navbar-btn">Change
							Password</a></li>
					<li></li>
					<li class="nav-item" style="padding-right: 10px;"><a
						href="/getLoginPage" class="btn btn-warning btn-small navbar-btn ">Sign
							In</a></li>
					<li class="nav-item" style="padding-right: 10px;"><a
						href="/getSignUpPage" class="btn btn-warning btn-small navbar-btn">Sign
							Up</a></li>
					<li class="nav-item"><a href="/getLogOut"
						class="btn btn-warning btn-small navbar-btn">Log Out</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<br><br>
	<br><br><br>
	<br><br><br>
	<div class="container card-body bg-dark text-white w-90 col-md-7 "
		align="center">
		
		<form:form modelAttribute="user" action="/getAgentPage" method="POST">
			<h1
				class=" display-4 card-header success-color white-text text-center py-4">Become
				an Agent</h1>
			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-4">
					<label for="firstName">Name</label>
					<form:input path="firstName" name="firstName"
						placeholder="Enter your Name"></form:input>
					<form:errors path="firstName"></form:errors>
				</div>
				<div class="col-md-4">
					<label for="email">Email</label>
					<form:input path="email" name="email" placeholder="ID@Domain" />
					<form:errors path="email" />
				</div>
				<div class="col-md-4">
					<label for="email">Mobile Number</label>
					<form:input path="contact" type="text" name="contact"
						placeholder="Contact No" />
					<form:errors path="contact" />
				</div>
			</div>
			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-4">
					<label for="email">Agent ID</label>
					<form:input path="userId" name="userId" placeholder="User ID" />
					<form:errors path="userId" />
				</div>
				<div class="col-md-4">
					<label for="email">Password</label>
					<form:input path="password" type="password" name="password"
						placeholder="Password" />
					<form:errors path="password" />
				</div>
				<div class="col-md-4">
					<label for="email">Confirm Password</label>
					<form:input path="confirmpassword" type="password"
						name="confirmpassword" placeholder="Confirm Password" />
					<form:errors path="confirmpassword" />
				</div>
			</div>
			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-6">
					<label for="q1">Choose the first Question</label>
					<form:select class="h-100" path="security1" items="${securityList}" name="q1" />
					<form:errors path="security1"></form:errors>
				</div>
				<div class="col-md-6">
					<label for="ans1">Enter the answer</label>
					<form:input path="ans1" name="ans1" placeholder="Answer for first question"/>
					<form:errors path="ans1" />
				</div>
			</div>
			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-6">
					<label for="q2">Choose the second Question</label>
					<form:select class="h-100" path="security2" items="${securityList}" name="q2" />
					<form:errors path="security2"></form:errors>
				</div>
				<div class="col-md-6">
					<label for="ans2">Enter the answer</label>
					<form:input path="ans2" name="ans2" placeholder="Answer for second question"/>
					<form:errors path="ans2" />
				</div>
			</div>
			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-6">
					<label for="q3">Choose the third Question</label>
					<form:select class="h-100" path="security3" items="${securityList}" name="q3" />
					<form:errors path="security3"></form:errors>
				</div>
				<div class="col-md-6">
					<label for="ans3">Enter the answer</label>
					<form:input path="ans3" name="ans3" placeholder="Answer for third question"/>
					<form:errors path="ans3" />
				</div>
			</div>
			
			<input type="submit" value="Submit" id="submitbutton" />
		</form:form>
		
	<div>
	<footer class="page-footer fixed-bottom font-small bg-dark text-white  teal pt-4">
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
</div>
</body>
</html>