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
<style>
	<%@include file="/WEB-INF/styles/style.css"%>
</style>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
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
				<h5 class=" display-4 card-header success-color white-text text-center py-4"><strong>Enter the Security Answers for a Recovery  ID</strong></h5>
			</div>
			<br>
			<br>
			<form:form action="/forgotUserId" method="POST" name="userRegister"
				modelAttribute="user" class="w-100">
				<form:hidden path="contact" />
				<form:hidden path="email" />
				<br>
				<div class="input-group mb-3 row  w-100">
					<div class="col-md-3"><form:errors path="security1"></form:errors></div>
						<div class="input-group-prepend col-md-4 ml-3 h-100">
							<div style="font-size:25px" class="md-form text-white">
								<strong>${Question1}</strong>				
							</div>
						</div>
						<div>
							<form:input path="ans1" />
							<form:errors path="ans1" />
						</div>
				</div>
				<br>
				<br>
				<div class="input-group mb-3 row  w-100">
					<div class="col-md-3"><form:errors path="security2"></form:errors></div>
						<div class="input-group-prepend col-md-4 ml-3 h-100">
							<div style="font-size:25px" class="md-form text-white">
								<strong>${Question2}</strong>
							</div>	
						</div>
						<div >			
							<form:input path="ans2" />
							<form:errors path="ans2" />
						</div>
				</div>
				<br>
				<br>
				<div class="input-group mb-3 row  w-100">
					<div class="col-md-3"><form:errors path="security3"></form:errors></div>
					<div class="input-group-prepend col-md-4 ml-3 h-100">
						<div style="font-size:25px" class="md-form text-white">
								<strong>${Question3}</strong>		
						</div>
					</div>
					<div >
						<form:input path="ans3" />
						<form:errors path="ans3" />
					</div>
				</div>			
			</table>
			<center>
				<button class="btn btn-warning  btn-rounded btn-small navbar-btn text-dark" type="submit">Submit</button>
				<div style="font-size:25px" class="md-form text-white">
					<h2>${id}</h2>
				</div>
			</center>
		</form:form>
	<footer class="footer fixed-bottom bg-dark text-white">
				<!--/.First column-->
				<div class="container text-center mt-1 ">
					<h3>
						<a href="/getFeedBackPage"
							class=" align-self-center ml-2 text-white"><strong>Customer
								FeedBack</strong></a><br> <a href="/getContactPage"
							class="align-self-center ml-2 text-white"><strong>Contact
								Us</strong></a><br>
					</h3>
				</div>
				<!--/.First column-->
				<!--/.Copyright -->
				<div class="footer-copyright text-center py-3">
					<h3>
						&copy; 2020 Copyright: <a href="/getHomePage" class="text-white"><strong>LifeInsurance.com</strong></a>
					</h3>
				</div>
				<!--/.Copyright -->
	</footer>
</body>
</html>