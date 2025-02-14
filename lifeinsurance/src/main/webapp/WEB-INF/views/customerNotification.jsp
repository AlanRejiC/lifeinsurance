<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
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
<head>
<meta charset="ISO-8859-1">
<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>
<title>Customer Notification Page</title>
</head>

<body class="form" style="background-image: url('https://image.cnbcfm.com/api/v1/image/105964745-1560376510health-insurance-life-insurance-car-insurance.jpg?v=1561045239&w=1600&h=900')";>

<header class="bg-dark" >
<div class="bg-dark">
	<center ><h1 style="font-size:50px;" class=" text-white" id="home_heading"><strong>Life Insurance Management private Limited</strong></h1></center>
</div>

<nav class="navbar navbar-expand-sm bg-dark"> 
        <ul class="navbar-nav ml-auto"> 
        <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getHomePage" class="btn btn-warning btn-small navbar-btn" >Home Page</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/verification" class="btn btn-warning btn-small navbar-btn" >Change Password</a>
            </li> 
            <li class="nav-item"> 
                <a href="/getLogOut" class="btn btn-warning btn-small navbar-btn" >Log Out</a> 
            </li> 
        </ul> 
    </nav> 
</header>
<br>
<br>
<br>
<br>
<div class="container">
	<table class="table table-bordered view" text-align="center">
	<div align="center" style="color: white">
	<h5 class=" display-4 card-header success-color white-text text-center py-4"><strong>Claim notifications</strong></h5>
<!-- Card Content -->
	<div  class="card-body bg-dark text-white" >
	<div class="d-flex justify-content-center">
		<!-- Form -->
	<form:form modelAttribute="claim" action="/getNotificationpage" method="POST">
		
			<div class="form-row mb-5">
			<div >
			<div class="md-form text-white">
				
					<strong style="padding-right:10px;">Enter claim number</strong>
					<form:input path="claimNumber" type="text"
							name="claimNumber" style="padding-left:10px;"/>
					<form:errors path="claimNumber" cssClass="error" />
					</div>
						
		
		
		</table>
		<div class="d-flex justify-content-center">
			<button class="btn btn-warning  btn-rounded btn-small navbar-btn text-dark" type="submit" align="center">Submit</button>
		</div>
		<div style="font-size:40px" class="md-form text-white">
		<center>
		<strong><h1 style="color:white; font-size: 80px; background-color:powderblue;"">${status}</h1></strong>
		<strong><h1 style="color:white; font-size: 80px; background-color:red;"">${nullStatus}</h1></strong>
		<strong><h1 style="color:white; font-size: 80px; background-color:red;"">${invalidclaim}</h1></strong>
		</center>
		</div>
		</div>
		</div>
	</form:form>
	</div>
	
<center>
<h3><a href="/getClaimEdit?claimNumber=${number}" class="btn btn-warning btn-small navbar-btn">${Edit}</a></h3>

</center>	
</div>
<footer class="page-footer fixed-bottom font-small bg-dark text-white  teal pt-4">
<div class="bg-dark">
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
</div>	
</footer>
</body>
</html>