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
					<li class="nav-item " style="padding-right: 10px;">
						<a href="/getPolicyPage" class="btn btn-warning btn-small navbar-btn text-dark"><h4>Policies</h4></a>
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
		<center><h3 class="py-5 text-body display-4"><strong class="text-white">Edit Policy</strong></h3></center>
		<div class="d-flex justify-content-center">
            <form:form modelAttribute="policy" method="GET" action="/getPolicySave">
				<table class="table table-light font-weight-bold ">
                	<tr class="bg-dark text-white" style="font-size:25px;">
	                	<td><label for="policyNumber"><b>Policy Number</b></label></td>
	                   <td><label for="policyName"><b>Policy Name</b></label></td>
	                   <td><label for="policyDescription"><b>Description</b></label></td>
	                   <td><label for="policyTerm"><b>Policy Term</b></label></td>
                    </tr>
                    <tr>
                    	<td><h3><form:input path="policyNumber" type="text" value="${item.policyNumber}" /></h3></td>
	                    <td><h3><form:input path="policyName" type="text" value="${item.policyName}" /></h3></td>
	                    <td><h3><form:input path="policyDescription" type="text" value="${item.policyDescription}" /></h3></td>
	                    <td><h3><form:input path="policyTerm" type="text" value="${item.policyTerm}" /></h3></td>
                    </tr>
                    <tr class="bg-dark text-white" style="font-size:25px;">
                    	<td><label for="netAmountPerYear"><b>Net Amount Per Year</b></label></td>
	                   <td><label for="totDeductible"><b>Total Deductible</b></label></td>
	                   <td><label for="totCoInsurance"><b>Total Co-Insurance</b></label></td>
	               	   <td><label for="interestRate"><b>Interest Rate</b></label><td>
                    </tr>
                    <tr>
	                    <td><h3><form:input path="netAmountPerYear" type="text" value="${item.netAmountPerYear}" /></h3></td>
	                    <td><h3><form:input path="totDeductible" type="text" value="${item.totDeductible}" /></h3></td>
	                    <td><h3><form:input path="totCoInsurance" type="text" value="${item.totCoInsurance}" /></h3></td>
	                    <td><h3><form:input path="interestRate" type="text" value="${item.interestRate}" /></h3></td>
					</tr>    
                </table>
                <div class="d-flex justify-content-center">
					<h2><input type="submit" value="Submit" 
						class="btn btn-success btn-lg navbar-btn text-white font-weight-bold" /></h2>
				</div>
             </form:form>   
		</div>
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