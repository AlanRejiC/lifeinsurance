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
<title>View policy details</title>
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
			<li class="nav-item"><a href="/getLogOut" class="btn btn-warning btn-small navbar-btn text-dark">
			<h4>Log Out</h4></a>
			</li>
		</ul>
	</nav>
</header>
<center><h3 class="py-5 text-body display-4"><strong class="text-white">Policies</strong></h3></center>
<body>
<center>
            <table class="table table-light font-weight-bold border border-dark col-md-10" >
			<tr id="head" class="bg-dark text-white font-weight-bold">
                   <td><label for="policyNumber"><b><h3>Policy Number</h3></b></label></td>
                   <td><label for="policyName"><b><h3>Policy Name</h3></b></label></td>
                   <td><label for="policyDescription"><b><h3>Description</h3></b></label></td>
                   <td><label for="policyTerm"><b><h3>Policy Term</h3></b></label></td>
                   <td><label for="netAmountPerYear"><b><h3>Net Amount Per Year</h3></b></label></td>
                   <td><label for="tot_deductable"><b><h3>Total deductible</h3></b></label></td>
                   <td><label for="totCoInsurance"><b><h3>Total Co Insurance</h3></b></label></td>
               	   <td><label for="interestRate"><b><h3>Interest Rate</h3></b></label>
               	   
               </tr>
               
            	<c:forEach var="item" items="${policyList}">
            	<tr>
            	<td><h3>${item.policyNumber}</h3></td>
            	<td><h3>${item.policyName}</h3></td>
            	<td><h3>${item.policyDescription}</h3></td>
            	<td><h3>${item.policyTerm}</h3></td>
            	<td><h3>${item.netAmountPerYear}</h3></td>
            	<td><h3>${item.totDeductible}</h3></td>
            	<td><h3>${item.totCoInsurance}</h3></td>
            	<td><h3>${item.interestRate}</h3></td>
            	<td><h3><a class="btn btn-info btn-lg active navbar-btn text-white font-weight-bold" 
					 href="/getPolicyEdit?policyName=${item.policyName}">Edit</a></h3></td>
            	<td><h3><a class="btn btn-danger btn-lg active navbar-btn text-white font-weight-bold" 
					 href="/getPolicyDelete?policyName=${item.policyName}">Delete</a></h3></td>
            	</tr>
            	</c:forEach>
                </table>
           </center>
</body>
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

</html>