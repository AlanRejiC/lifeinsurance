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
	<div class="bg-cover" align="center">
		<center><h3 class=" py-5 text-body  display-4"><strong class="text-white">Add New Policy</strong></h3></center>
		<div id="adminform" class="card-body bg-dark text-white col-md-4 rounded">
		<form:form modelAttribute="policy" action="/getPolicyAdd" method="POST">
			<table class="font-weight-bold">
			<tr>
				<td><h2 class="text-white">Policy Name</h2></td>
				<td><h2><form:input path="policyName" name="policyName"
						placeholder="Policy Name" /></h2></td>
				<td><h2><form:errors class="text-danger" path="policyName" /></h2></td>
			</tr>
			<tr>
				<td><h2 class="text-white">Policy Number</h2></td>
				<td><h2><form:input path="policyNumber" name="policyNumber"
						placeholder="Policy Number" /></h2></td>
				<td><h2><form:errors class="text-danger" path="policyNumber" /></h2></td>
			</tr>
			<tr>
				<td><h2 class="text-white">Description</h2></td>
				<td><h2><form:input path="policyDescription" type="text" name="policyDescription"
						placeholder="Policy Description" /></h2></td>
				<td><h2><form:errors class="text-danger" path="policyDescription" /></h2></td>
			</tr>
			<tr>
				<td><h2 class="text-white">Policy Term</h2></td>
				<td><h2><form:input path="policyTerm" type="number" name="policyTerm" /></h2></td>
				<td><h2><form:errors class="text-danger" path="policyTerm"></form:errors></h2></td>
			</tr>
			<tr>
				<td><h2 class="text-white">Net Amount Per Year</h2></td>
				<td><h2><form:input path="netAmountPerYear" type="number" name="netAmountPerYear"
						placeholder="Net Amount Per Year" /></h2></td>
				<td><h2><form:errors class="text-danger" path="netAmountPerYear" /></h2></td>
			</tr>
			<tr>
				<td><h2 class="text-white">Total Deductible</h2></td>
				<td><h2><form:input path="totDeductible" name="totDeductible"
						placeholder="Total Deductible Price" /></h2></td>
				<td><h2><form:errors class="text-danger" path="totDeductible" /></h2></td>
			</tr>
			<tr>
				<td><h2 class="text-white">Total Co Insurance</h2></td>
				<td><h2><form:input path="totCoInsurance" name="totCoInsurance"
						placeholder="Total Co Insurance" /></h2></td>
				<td><h2><form:errors class="text-danger" path="totCoInsurance" /></h2></td>
			</tr>
			<tr>
				<td><h2 class="text-white">Interest Rate</h2></td>
				<td><h2><form:input path="interestRate" type="number" name="interestRate"
						placeholder="Interest Rate" /></h2></td>
				<td><h2><form:errors class="text-danger" path="interestRate" /></h2></td>
			</tr>
		</table>
		<div>
		<br>
			<h2><input type="submit" class="text-white" value="Submit" id="submitbutton" /></h2>
		</div>
	</form:form>
	</div>
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