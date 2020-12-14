<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
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
<title>User Page</title>
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
			<li class="nav-item " style="padding-right: 10px;">
				<a href="/getDashBoard" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Admin DashBoard</h4></a>
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
<center><h3 class=" py-5 text-body  display-4"><strong class="text-white">Users</strong></h3></center>
<div class="d-flex justify-content-left">
	<form:form action="/getSearch" modelAttribute="search" method="POST">
		<ul class=" navbar navbar-expand-sm navbar-nav">
			<li style="padding-right: 10px; padding-left: 10px; "><form:input class="form-control input-lg" path="name"/></li>
			<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-right: 10px;">
			<input type="submit" class="btn btn-primary btn-lg active navbar-btn text-white font-weight-bold"
			 value="Search"/></li>
		</ul >	
	</form:form>
	<div class="navbar navbar-expand-sm navbar-nav ml-auto">
		<ul class=" navbar navbar-expand-sm navbar-nav">
			<li><h3><strong>Search based on Role :</strong></h3></li>
			<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-left: 10px; padding-right: 10px;">
				<h3><a class="btn btn-info btn-lg active navbar-btn text-white font-weight-bold" 
					href="getUserPage?role=customer" >Customer</a></h3>
			</li>
			<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-right: 10px;">
				<h3><a class="btn btn-info btn-lg active navbar-btn text-white font-weight-bold" 
					href="getUserPage?role=agent">Agent</a></h3>
			</li>
			<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-right: 10px;">
				<h3><a class="btn btn-info btn-lg active navbar-btn text-white font-weight-bold" 
					href="getUserPage?role=admin">Admin</a></h3>
			</li>
		</ul>
	</div>
</div>	
<div>
	<table class="table table-light font-weight-bold border border-dark" >
	<tr id="head" class="bg-dark text-white">
		<td><label for="userId"><b>User Id</b></label></td>
		<td><label for="firstName"><b>First Name</b></label></td>
		<td><label for="lastName"><b>Last Name</b></label></td>
		<td><label for="gender"><b>Gender</b></label></td>
		<td><label for="dob"><b>Date of Birth</b></label></td>
		<td><label for="contact"><b>Contact Number</b></label></td>
		<td><label for="email"><b>Email Id</b></label>
		<td><label for="role"><b>Role</b></label></td>
	</tr>
	<c:forEach var="user" items="${user}">
		<tr>
			<td>${user.userId}</td>
			<td>${user.firstName}</td>
			<td>${user.lastName}</td>
			<td>${user.gender}</td>
			<td>${user.dob}</td>
			<td>${user.contact}</td>
			<td>${user.email}</td>
			<td>${user.role}</td>
			<td><h3><a class="btn btn-info btn-lg active navbar-btn text-white font-weight-bold" 
					 href="/userEdit?userId=${user.userId}">Edit</a></h3></td>
			<td><h3><a class="btn btn-success btn-lg active navbar-btn text-white font-weight-bold" 
					 href="/userUpdate?userId=${user.userId}">Update Claim Status</a></h3></td>	
			<td><h3><a class="btn btn-danger btn-lg active navbar-btn text-white font-weight-bold" 
					 href="/userDelete?userId=${user.userId}">Delete</a></h3></td>		 	 
		</tr>
	</c:forEach>
	
</table>

</div>


	<div class="d-flex justify-content-center">
		<ul>
			<li class="navbar navbar-expand-sm navbar-nav ml-auto" style="padding-right: 10px;">
					<h3><a class="btn btn-success btn-lg active navbar-btn text-white font-weight-bold" 
					href="/download/users.xlsx" >Import</a></h3>
			</li>
		</ul>
	</div>
<footer
	class="footer fixed-bottom bg-dark text-white" style="height: 7rem;">
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