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
<body id="adminbody">
	<header id="adminheader" class="bg-dark">
		<div class="bg-dark">
			<center>
				<h1 class="text-white display-4">
					<strong>Life Insurance Management private Limited</strong>
				</h1>
			</center>
		</div>
		<nav class="navbar navbar-expand-sm bg-dark">
			<ul class="navbar-nav">
				<li class="nav-item " style="padding-right: 10px;"><a
					href="/getHelpPage"
					class="btn btn-warning btn-small navbar-btn text-dark"><h4>Help
							Desk</h4></a></li>
				<li class="nav-item " style="padding-right: 10px;"><a
					href="/getHomePage"
					class="btn btn-warning btn-small navbar-btn text-dark"><h4>Home
							Page</h4></a></li>
				<li class="nav-item " style="padding-right: 10px;"><a
					href="/getHelpRequest"
					class="btn btn-warning btn-small navbar-btn text-dark"><h4>Resolve Help Request</h4></a></li>		
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"
					style="padding-right: 10px; padding-left: 10px;"><a
					href="/verification"
					class="btn btn-warning btn-small navbar-btn text-dark"><h4>Change
							Password</h4></a></li>
				<li class="nav-item"><a href="/getLogOut"
					class="btn btn-warning btn-small navbar-btn text-dark"><h4>Log
							Out</h4></a></li>
			</ul>
		</nav>
	</header>
	<div>
		<center>
				<h1 class=" py-5 text-body">
					<strong class="text-white display-4">Give Solution</strong>
				</h1>
			</center>
		<div class="d-flex justify-content-center">
			<form:form modelAttribute="help" method="GET" action="resolveSuccess">
				<table class="table table-sm table-dark text-light font-weight-bold col-md-70" >
					<tr style="font-size:30px; width:50%" >
						<th class="col-10"><label for="requestId"><b>Request ID</b></label></th>
						<td>:</td>
						<td><label>${item.requestId}</label></td>
					</tr>
					<tr style="font-size:30px">
						<th><label for="custName"><b>Customer Name</b></label></th>
						<td>:</td>
						<td><label>${item.custName}</label></td>
					</tr>
					<tr style="font-size:30px">
						<th><label for="issue"><b>Issue</b></label></th>
						<td>:</td>
						<td><label>${item.issue}</label></td>
					</tr>
					<tr style="font-size:30px">
						<th><label for="description"><b>Description</b></label></th>
						<td>:</td>
						<td><label>${item.description}</label></td>
					</tr>
					<form:hidden path="requestId" value="${item.requestId}" />
					<tr style="font-size:30px">
						<th><label for="dateOfTicket"><b>Date of Ticket</b></label></th>
						<td>:</td>
						<td><label>${item.dateOfTicket}</label></td>	
					</tr>
					<tr style="font-size:30px">
						<th><label for="resolutionByAdmin"><b>Resolution</b></label></th>
						<td>:</td>
						<td><form:textarea path="resolutionByAdmin" type="text" rows="5" column="50"
								name="resolutionByAdmin" value="${item.resolutionByAdmin}" /></td>
					</tr>
				</table>
				<div class="d-flex justify-content-center">
					<h2><input type="submit" value="Submit" 
						class="btn btn-success btn-lg navbar-btn text-white font-weight-bold" /></h2>
				</div>
				
			</form:form>
		</div>	
	</div>
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