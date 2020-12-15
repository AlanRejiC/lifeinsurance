<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style><%@ include file="/WEB-INF/styles/style.css"%>
</style>
</style>
<title>FeedBackForm</title>
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
<body class="bg">
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
	<br>
	<br>
	<br>
	<div class="container-fluid " style="font-size: 25px;">
		<div class=" display-4 card-head success-color text-white text-center py-3">
			<h1>
				<strong>FeedBack Form</strong>
			</h1>
			<div class="container text-white ">
				<center>${success}</center>
			</div>
			<div class="container text-white ">
				<center>${invalid}</center>
			</div>
		</div>
		<form:form modelAttribute="questionnaire" method="POST"
			action="/getFeedBackPage">
			<div class="input-group mb-3 row col-md-12 w-100">
				<div class="col-md-3"></div>
				<div class="input-group-prepend col-md-2 ml-3 h-100">
					<span
						class="input-group-text w-100 input-group-text-border-custom h-16"><strong>Enter
							User ID</strong></span>
				</div>
				<div class="col-md-6">
					<form:input path="userId" type="text" name="userId" />
					<form:errors path="userId" placeholder="Enter Your User Id" />
				</div>
			</div>


			<div class="input-group mb-3 row col-md-12 w-100">
				<div class="col-md-3"></div>
				<div class="input-group-prepend col-md-2 ml-3 ">
					<span
						class="input-group-text w-100 pl-3 input-group-text-border-custom h-20"><strong>Description</strong></span>
				</div>
				<div class="col-md-6">
					<form:textarea path="feedback" rows="5" column="50"
						name="description" placeholder='Enter your Review or Feedback'
						style="min-width: 100%" />
				</div>
			</div>




			<div class="form-row mb-5 row-col-12 w-100 h-100"></div>




			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-6 text-white" style="padding-left: 500px;font-size: larger;">${q1}</div>
								<div class="col-md-6">
									<label for="ans1" class="text-white" style="margin-left: 200px;">Enter the answer</label>
									<form:input path="response1" name="ans1" placeholder="Answer for first question"/>
									<form:errors path="response1" />
								</div>
			</div>
			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-6 text-white" style="padding-left: 500px;font-size: larger;">${q2}</div>
								<div class="col-md-6">
									<label for="ans2" class="text-white" style="margin-left: 200px;">Enter the answer</label>
									<form:input path="response2" name="ans2" placeholder="Answer for second question"/>
									<form:errors path="response2" />
								</div>
			</div>
			<div class="form-row mb-5 row-col-12 w-100 h-100">
				<div class="col-md-6 text-white" style="padding-left: 500px;font-size: larger;">${q3}</div>
								<div class="col-md-6">
									<label for="ans3" class="text-white" style="margin-left: 200px;">Enter the answer</label>
									<form:input path="response3" name="ans3" placeholder="Answer for third question"/>
									<form:errors path="response3" />
								</div>
			</div>







		

		<center>

			<button type="submit"
				class="btn btn-success btn-lg active navbar-btn text-white font-weight-bold">
				Submit</a>
		</center>
		</form:form>
	</div>

	<footer
		class="page-footer fixed-bottom font-small bg-dark text-white  teal pt-4">
		<!--/.First column-->
		<div class="container text-center mt-1 ">
			</h6>
			<a href="/getContactPage" class="align-self-center ml-2 text-white"><strong>Contact
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