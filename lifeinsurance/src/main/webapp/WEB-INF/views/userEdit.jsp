<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
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
<title>Edit User Details</title>
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
			<li class="nav-item " style="padding-right: 10px;">
				<a href="/getPolicyPage" class="btn btn-warning btn-small navbar-btn text-dark"><h4>View Users</h4></a>
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
	<div class="header"></div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center><h1 class="text-body"><strong class="text-white">Edit User</strong></h1></center>
	<br><br>
	<div>
	<h1 align="center" style="background-color:powderblue;">${status}</h1>
	<form:form modelAttribute="user" method="GET" action="/userSuccess">
	<table class="table table-sm table-light font-weight-bold border border-dark" >
			<tr id="head" class="bg-dark text-white">
				<th><h3><label for="userId"><b>User Id</b></label></h3></th>
				<th><h3><label for="firstName"><b>First Name</b></label></h3></th>
				<th><h3><label for="lastName"><b>Last Name</b></label></h3></th>
				<th><h3><label for="gender"><b>Gender</b></label></h3></th>
			</tr>
			<tr>
				<form:hidden path="userId" value="${item.userId}"/>
				<td><h3><label>${item.userId}</label></h3></td>
				<td><h3><form:input path="firstName" type="text" value="${item.firstName}" /></h3></td>
				<td><h3><form:input path="lastName" type="text" value="${item.lastName}" /></h3></td>
				<td><h3><form:input path="gender" type="text" value="${item.gender}" /></h3></td>
			</tr>	
			<tr id="head" class="bg-dark text-white">
				<th><h3><label for="dob"><b>Date of Birth</b></label></h3></th>
				<th><h3><label for="contact"><b>Contact Number</b></label></h3></th>
				<th><h3><label for="contact"><b>Password</b></label></h3></th>
				<th><h3><label for="contact"><b>Confirm Password</b></label></h3></th>
			</tr>
			<tr>
				<td><h3><form:input path="dob" type="text" value="${item.dob}" /></h3></td>
				<td><h3><form:input path="contact" type="text" value="${item.contact}" /></h3></td>
				<td><h3><form:input path="password" type="password" value="${item.password}" /></h3></td>
				<td><h3><form:input path="confirmpassword" type="password" value="${item.confirmpassword}" /></h3></td>
			</tr>
			<tr id="head" class="bg-dark text-white">
				<th><h3><label for="email"><b>Email Id</b></label></h3></th>
				<th><h3><label for="role"><b>Role</b></label></h3></th>
				<th><h3><label for="security1"><b>Security question 1</b></label></h3></th>
				<th><h3><label for="ans_1"><b>Answer 1</b></label></h3></th>
			</tr>
			<tr>
				<td><h3><form:input path="email" type="text" value="${item.email}" /></h3></td>
				<td><h3><label>${item.role}</label></h3></td>
				<td><h3><form:input path="security1" type="text" value="${item.security1}" /></h3></td>
				<td><h3><form:input path="ans1" type="text" value="${item.ans1}" /></h3></td>
			</tr>
			<tr id="head" class="bg-dark text-white">
				<th><h3><label for="security2"><b>Security question 2</b></label></h3></th>
				<th><h3><label for="ans_2"><b>Answer 1</b></label></h3></th>
				<th><h3><label for="security3"><b>Security question 3</b></label></h3></th>
				<th><h3><label for="ans_3"><b>Answer 1</b></label></h3></th>
			</tr>	
			<tr>
				<td><h3><form:input path="security2" type="text" value="${item.security2}" /></h3></td>
				<td><h3><form:input path="ans2" type="text" value="${item.ans2}" /></h3></td>
				<td><h3><form:input path="security3" type="text" value="${item.security3}" /></h3></td>
				<td><h3><form:input path="ans3" type="text" value="${item.ans3}" /></h3></td>
				<form:hidden path="login"></form:hidden>
			</tr>
		</table>
		<div class="d-flex justify-content-center">
			<h1><input type="submit" value="Submit" 
						class="btn btn-success btn-lg navbar-btn text-white font-weight-bold" /></h1>
		</div>
	</form:form>
</div>

<div>
	<footer id="adminfooter" class="footer fixed-bottom bg-dark text-white">
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
</div>

</body>
</html>