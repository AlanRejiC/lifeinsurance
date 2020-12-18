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
	<%@ include file="/WEB-INF/styles/style.css"%>
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
<title>Agent View Page</title>
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
				<a href="/getHomePage" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Home Page</h4></a>
			</li>
			<li class="nav-item " style="padding-right: 10px;">
				<a href="/getDashBoard" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Admin DashBoard</h4></a>
			</li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item" style="padding-right: 10px; padding-left: 10px;">
				<a href="/verification" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Change Password</h4></a>
			</li>
			<li class="nav-item"><a href="/getLogOut" class="btn btn-warning btn-small navbar-btn text-dark">
			<h4>Log Out</h4></a>
			</li>
		</ul>
	</nav>
</header>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>

<br><br><br>

<div align="center">
	<div  class="card-body bg-dark text-white col-md-5">
	<form:form modelAttribute="user" action="/getAgentDetails" method="POST">
		<h1 class=" display-3 card-header success-color white-text text-center py-5 ">Agent Details</h1><br>
		<table>
		<tr>
				<td><b><h2>Agent ID</h2></b></td>
				<td><h2> : </h2></td>
				<td><b><h2><label>${item.userId}</label></h2></b></td>
				<td><form:errors path="userId" /></td>
			</tr>
			<tr>
				<td><b><h2>Name</h2></b></td>
				<td><h2> : </h2></td>
				<td><label><h2>${item.firstName}</h2></label></td>
				<td><form:errors path="firstName"></form:errors></td>
			</tr>
			<tr>
				<td><b><h2>Email</h2></b></td>
				<td><h2> : </h2></td>
				<td><b><h2><label>${item.email}</label></h2></b></td>
				<td><form:errors path="email" /></td>
			</tr>
			<tr>
				<td><b><h2>Mobile Number</h2></b></td>
				<td><h2> : </h2></td>
				<td><b><h2><label>${item.contact}</label></h2></b></td>
				<td><form:errors path="contact" /></td>
			</tr>
			
			
		</table><br><br>
		<b><input type="submit" class="text-white" value="Return to View Agents" id="submitbutton" /></b>
		</form:form>
</div>
</div>
<div>
<footer class="page-footer fixed-bottom bg-dark text-white" style="height: 11rem; width:100%">
			<!--/.First column-->
			<div class="container text-center mt-1">
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
		</div>

</body>
</html>