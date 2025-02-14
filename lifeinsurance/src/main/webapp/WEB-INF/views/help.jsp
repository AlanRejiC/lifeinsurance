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

<title>help desk page</title>
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
<body style="background-image: url('img/login.jpg');max-width:100%"; >


	<!-- <div class="form" style="background-image: url('http://www.innitialliance.com/Images/life-insurance-claim.jpg')";> -->
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

	
	
	
	
	
	
	
	<div class="container-fluid " style="font-size:25px;">
		<div class="container" style="margin-top: 100px">
			<div class="align-center ml-10 text-light">
				
				<br>
				<h1 ><strong>Help Desk</strong></h1>
			</div>
			<br>
			<div class="container text-white "><h3><center>${success}</center></h3></div>
			<div class="container text-white "><h3><center>${invalid}</center> </h3></div>
			<br>
			
			<div class="container">
				<form:form modelAttribute="help" method="POST" action="/getHelpPage"
					class="w-100">
					<table>


						<div class="input-group mb-3 row col-md-12 w-100">
							<div class="col-md-3"></div>
							<div class="input-group-prepend col-md-2 ml-3 h-100">
								<span
									class="input-group-text w-100 input-group-text-border-custom h-16">Customer
									Name</span>
							</div>
							<div class="col-md-6">
								<form:input path="custName" type="text" name="custName"
									placeholder='Enter your name' value="${custName}"
									class="input-group-text-border-custom" />
								<form:errors path="custName" />
							</div>
						</div>

						<div class="input-group mb-3 row col-md-12 w-100">
							<div class="col-md-3"></div>
							<div class="input-group-prepend col-md-2 ml-3 h-100">
								<span
									class="input-group-text w-100 pl-5 input-group-text-border-custom h-16">Issue</span>

							</div>
							<div class="col-md-6">
								<form:input path="issue" name="issue"
									placeholder='What is the issue?'
									class="input-group-text-border-custom" />
							</div>
						</div>
						<div class="input-group mb-3 row col-md-12 w-100">
							<div class="col-md-3"></div>
							<div class="input-group-prepend col-md-2 ml-3 ">
								<span
									class="input-group-text w-100 pl-4 input-group-text-border-custom h-16">Description</span>
							</div>
							<div class="col-md-6">
								<form:textarea  path="description" rows="10" column="50"
									name="description" placeholder='Description of the issue in 50 words'
									class="input-group-text-border-custom textarea" style="min-width: 100%"/>
							</div>
						</div>
					</table>
					<br>
<!-- 					<div class="alert alert-warning alert-dismissible fade show" role="alert"> -->
					<div class="text-center row md-5">
						<input type="submit" value="Submit" id="submitbutton"
							 class="align-center col-md-3 ml-10" />
					</div>
<!-- 					</div> -->
					<br>

				</form:form>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>
	<footer class="page-footer fixed-bottom font-small bg-dark text-white  teal pt-4">
		<!--/.First column-->
		<div class="container text-center mt-1 ">

			<a href="/getFeedBackPage" class=" align-self-center ml-2 text-white"><strong>Customer
					FeedBack</strong></a><br> <a href="/getContactPage"
				class="align-self-center ml-2 text-white"><strong>Contact
					Us</strong></a><br>
		</div>
		<!--/.First column-->
		<!--/.Copyright -->
		<div class="footer-copyright text-center py-3">
			&copy; 2020 Copyright: <a href="/getHomePage" class="text-white"><strong>
					LifeInsurance.com</strong></a>
		</div>
		<!--/.Copyright -->
	</footer>

</body>
</html>