<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style><%@ include file="/WEB-INF/styles/style.css"%>
</style>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Contact and Support</title>
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
<body>

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
	<div class="container">
		<br>
		<br>
		<br>
		<br>
		<h1 class="font-weight-bold text-center"><strong>Phone Contact Details</strong></h1>

<br><br><br>
		<center><p><h2>Contact call center:</h2><h3> 022 6895 1254<br>
		Services now available 24x7</h3></p></center>

<br><br><br>
		<h1 class="font-weight-bold text-center"><strong>SMS Help</strong></h1>
<br><br><br>
		<center><h3><label>SMS LIMSHELP pol.no. to 9222492224 or SMS LIMSHELP pol.no. to 56767877</label>


		<p>
			Toll free no. 18004259876 for Health Insurance policies from 10 AM to
			5 PM on all working days. Our trained executive will talk to you.<br>
			Mail us at: reachLifms@lifms.in
		</p></center></h3>

	</div>

	<div>
		<footer class="page-footer fixed-bottom font-small bg-dark text-white  teal pt-4">
			<!--/.First column-->
			<div class="container text-center mt-1 ">

				<a href="/getFeedBackPage"
					class=" align-self-center ml-2 text-white"><strong>Customer
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
	</div>
</body>
</html>
