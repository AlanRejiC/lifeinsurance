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
<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>
<head>
<meta charset="ISO-8859-1">
<title>Policy Premium Calculator</title>
</head>

<body>

<div style="background-color: black; background-image: url('https://image.cnbcfm.com/api/v1/image/105964745-1560376510health-insurance-life-insurance-car-insurance.jpg?v=1561045239&w=1600&h=900');height:auto; max-width:100%; ">
<div class="form" >
<header class="bg-dark" style="height: 3rem;">
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
            <li> </li>
            <li class="nav-item" style="padding-right:10px;">
                <a href="/getSignUpPage" class="btn btn-warning btn-small navbar-btn" >Sign Up</a> 
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
<br>

	<div align="center" style="color: white">
	<div class="container">

	
	
	<!-- Card Content -->
	<div  class="card-body bg-dark text-white py-4" ;>
		<h2>Policy Premium Calculator</h2>
		<form:form action="/getPolicyPremium" method="POST"
			name="policyPremium" modelAttribute="policy">
			<table >
				<tr>
					<td style="text-align:center"><label>Choose the Policy</label></td>
					<td style="text-align:center"><form:select path="policyName" name="policyName" placeholder="Policy Name"
							items="${policyList}" style="text-align:center"/></td>
				</tr>
				
				<tr>
					<td style="text-align:center"><label>Annual Income</label></td>
					<td style="text-align:center"><select>
							<option>Upto 4lakhs</option>
							<option>5lakhs-10lakhs</option>
							<option>10lakhs-15lakhs</option>
							<option>Over 15lakhs</option>
					</select> </td>
				</tr>
				
				<tr>
					<td style="text-align:center"><label>${putvalue1}</label></td>
					<td style="text-align:center">${item1}</td>
				</tr>

				<tr>
					<td style="text-align:center"><label>${putvalue2}</label></td>
					<td style="text-align:center">${item}</td>
				</tr>

				<tr>
					<td style="text-align:center"><label>${putvalue3}</label></td>
					<td style="text-align:center">${term}</td>
				</tr>

				<tr>
					<td style="text-align:center">${putvalue4}</td>
					<td style="text-align:center">${netAmount}</td>
				</tr>
				<tr>
					<td style="text-align:center">${putvalue5}</td>
					<td style="text-align:center">${amountPerMonth}</td>
				</tr>

			</table>
			<br>
			<h1>${status}</h1>
			<br>
			<input type="submit" value="Calculate"
				style="background-color: green ; color:white" />

		</form:form>
</div>
	</div>
	</div>
</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
<footer class="page-footer font-small bg-dark text-white  teal pt-4">
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
  </div>
<!--/.Copyright -->
</footer>
</body>
</html>