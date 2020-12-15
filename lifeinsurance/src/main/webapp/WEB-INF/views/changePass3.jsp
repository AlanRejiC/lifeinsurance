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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"> </script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"> </script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	
	<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>
<title>Update Password</title>
</head>
<body class="bg" style="background-color: #484544;">

<div class="form">
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
	<h5 class=" display-4 card-header success-color white-text text-center py-4"><strong>Change Password?</strong></h5>
				</div>
				<div align="center"  style="font-size:30px" class="md-form text-white">
		
			
				<p >If you have forgotten your password you can reset it here.</p>
	
	</div>
	
					<div class="card-body text-white">
									
								
											<form:form action="/passwordReseted" modelAttribute="user" method="post">
											<div class="form-row mb-5">
			<div class="col-md-6">
			<form:input path="password" class="form-control input-lg"
			placeholder="New Password" name="new" type="text" />
			</div>
			</div>	
			<div class="form-row mb-5">
			<div class="col-md-6">
			<form:input path="confirmpassword" class="form-control input-lg"
			placeholder="Confirm Password" name="confirm" type="password" />							
			</div>
			</div>
			
			<div class="form-row mb-5">
			<div class="col-md-6">
				<input class="btn btn-small btn-rounded btn-primary"
				value="Update Password" type="submit">
			</div>
			</div>
											</form:form>
											</div>
			</div>
			</div>
			<center>
			<div style="font-size:25px" class="md-form text-white">
											<strong><h1>${status}</h1></strong>
											</div>
											</center>
										<footer class="page-footer fixed-bottom font-small bg-dark text-white  teal pt-4">
<!--/.First column-->  
      <div class="container text-center mt-1 ">
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
									
</body>
</html>