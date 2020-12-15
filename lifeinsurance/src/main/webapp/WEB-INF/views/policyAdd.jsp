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
			body{
			margin:0;
			width:100vw;
			height:100vh;
		}
		.bg-cover{
			background-image: url('img/login.jpg');
			background-size:cover;
			height:100%;
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
	<title>New Policy Registration Page</title>
</head>
<header class="bg-dark " style="height: 6rem;">
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

<body>
	<div class="jumbotron jumbotron bg-cover" align="center">
		<center><h3 class=" py-5 text-body  display-4"><strong class="text-white">Add New Policy</strong></h3></center>
	<form:form modelAttribute="policy" action="/getPolicyAdd" method="POST">
			<table class="font-weight-bold ">
			<tr>
				<td>Policy Name</td>
				<td><form:input path="policyName" name="policyName"
						placeholder="Policy Name" /></td>
				<td><form:errors path="policyName" /></td>
			</tr>
			<tr>
				<td>Policy Number</td>
				<td><form:input path="policyNumber" name="policyNumber"
						placeholder="Policy Number" /></td>
				<td><form:errors path="policyNumber" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><form:input path="policyDescription" type="text" name="policyDescription"
						placeholder="Policy Description" /></td>
				<td><form:errors path="policyDescription" /></td>
			</tr>
			<tr>
				<td>Policy Term</td>
				<td><form:input path="policyTerm" type="number" name="policyTerm" /></td>
				<td><form:errors path="policyTerm"></form:errors></td>
			</tr>
			<tr>
				<td>Net Amount Per Year</td>
				<td><form:input path="netAmountPerYear" type="number" name="netAmountPerYear"
						placeholder="Net Amount Per Year" /></td>
				<td><form:errors path="netAmountPerYear" /></td>
			</tr>
			<tr>
				<td>Total Deductible</td>
				<td><form:input path="totDeductible" name="totDeductible"
						placeholder="Total Deductible Price" /></td>
				<td><form:errors path="totDeductible" /></td>
			</tr>
			<tr>
				<td>Total Co Insurance</td>
				<td><form:input path="totCoInsurance" name="totCoInsurance"
						placeholder="Total Co Insurance" /></td>
				<td><form:errors path="totCoInsurance" /></td>
			</tr>
			<tr>
				<td>Interest Rate</td>
				<td><form:input path="interestRate" type="number" name="interestRate"
						placeholder="Interest Rate" /></td>
				<td><form:errors path="interestRate" /></td>
			</tr>
		</table>
		<div>
			<input type="submit" value="Submit" style="background-color: green" />
		</div>
	</form:form>
		<footer class="page-footer bg-dark text-white" style="height: 11rem; width:100%">
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