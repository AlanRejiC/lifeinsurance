<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
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
	<meta charset="ISO-8859-1">
	<title>Admin Login Page</title>
</head>
 
<body id="adminloginbody">
<header id="adminloginheader" class="bg-dark">
	<div class="bg-dark">
		<center>
			<h1 class="text-white display-4" >
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
				<a href="/getLoginPage" class="btn btn-warning btn-small navbar-btn text-dark" ><h4>User Login</h4></a> 
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
	<div class="col-lg-6 col-md-8  mx-auto text-center form p-5">
		<h1 class=" py-4 text-body"><strong class="text-white display-4">Admin Login</strong></h1>
		<div  class="card-body bg-dark text-white col-md-8 rounded" style="margin: 0 auto; float:none;">
			<form:form action="/getAdminLoginPage" method="post" modelAttribute="user" class="h-100 justify-content-center">
				<div class="form-group">
					<h2><label class="text-white">Enter Admin ID</label></h2>
					<h2><form:input path="userId" name="userId" /></h2>
					<h2><form:errors class="text-danger" path="userId"></form:errors></h2>
				</div>
				<div class="form-group">
					<h2><label class="text-white">Enter Password</label></h2>
					<h2><form:input path="password" name="password" /></h2>
					<h2><form:errors  class="text-danger" path="password"></form:errors></h2>
				</div>
				<br>
				<h2><input type="submit" class="text-white" value="Submit" id="submitbutton" /></h2>
				<br>
				<h3 class="text-danger">${invalid}</h3>
				<h3 class="text-danger">${invalidRole}</h3>
				<a href="/forgotEnter" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Forgot Id</h4></a>
				
			</form:form>
		</div>
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