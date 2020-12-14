<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<style>
		<%@ include file="/WEB-INF/styles/style.css"%>
			body{
			margin:0;
			width:100vw;
			height:100vh;
		}
	</style>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body style="background-image: url('img/login.jpg'); height:auto; max-width:100%; ">
<header class="bg-dark" style="height: 6rem;">
	<div class="bg-dark">
		<center>
			<h1 style="font-size: 50px;" class="text-white" id="home_heading">
				<strong>Life Insurance Management private Limited</strong>
			</h1>
		</center>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark">
		<ul class="navbar-nav">
			<li class="nav-item " style="padding-right: 10px;">
			<a href="/getHelpPage" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Help Desk</h4></a>
			</li>
			<li class="nav-item " style="padding-right: 10px;">
				<a href="/getHomePage" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Home Page</h4></a>
			</li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item" style="padding-right: 10px; padding-left: 10px;">
				<a href="/verification" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Change Password</h4></a>
			</li>
			<li class="nav-item"><a href="/getLogOut" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Log Out</h4></a>
			</li>
		</ul>
	</nav>
</header>

<div>
	<form:form action="/getDashBoard">
		<center><h1 class=" py-5 text-body"><strong class="text-white display-4">Admin DashBoard</strong></h1></center>
		<div  class="card-body bg-dark text-white col-md-4 rounded py-5" style="margin: 0 auto; float:none;">
			<ul class=" navbar navbar-expand-sm navbar-nav">
				<li style="padding-left: 15px;">
					<h2><a class="btn bg-primary btn-lg active navbar-btn text-white font-weight-bold" 
					href="/getUserPage?role=All" >View Users</a></h2>
				</li>
				<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-right: 10px;">
					<h3><a class="btn bg-primary btn-lg active navbar-btn text-white font-weight-bold" 
					href="/getPolicyPage" >View Policies</a></h3>
				</li>
			</ul>	
			<ul class=" navbar navbar-expand-sm navbar-nav">
				<li style="padding-left: 15px;">
					<h3><a class="btn bg-success btn-lg active navbar-btn text-white font-weight-bold" 
					href="/getPolicyAdd" >Add Policies</a></h3>
				</li>
				<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-right: 10px;">
					<h3><a class="btn bg-success btn-lg active navbar-btn text-white font-weight-bold" 
					href="/getAgentDetails">Agent Details</a></h3>
				</li>
			</ul>
			<ul class=" navbar navbar-expand-sm navbar-nav">
				<li style="padding-left: 15px;">
					<h3><a class="btn bg-info btn-lg active navbar-btn text-white font-weight-bold" 
					href="/getHelpRequest" >Resolve Help Request</a></h3>
				</li>
				<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-right: 10px;">
					<h1><a class="btn bg-info btn-lg active navbar-btn text-white font-weight-bold" 
					href="/setQuestion">Set Questions</a></h1>
				</li>
			</ul>
		</div>
	</form:form>
</div>


<footer
	class="footer fixed-bottom bg-dark text-white" style="height: 8rem;">
	<!--/.First column-->
	<div class="container text-center mt-1 ">
		<h3><a href="/getFeedBackPage" class=" align-self-center ml-2 text-white"><strong>Customer FeedBack</strong></a><br> 
		<a href="/getContactPage" class="align-self-center ml-2 text-white"><strong>Contact Us</strong></a><br></h3>
	</div>
	<!--/.First column-->
	<!--/.Copyright -->
	<div class="footer-copyright text-center py-3">
		<h3>&copy; 2020 Copyright: 
		<a href="/getHomePage" class="text-white"><strong>LifeInsurance.com</strong></a></h3>
	</div>
	<!--/.Copyright -->
</footer>	
</body>
</html>