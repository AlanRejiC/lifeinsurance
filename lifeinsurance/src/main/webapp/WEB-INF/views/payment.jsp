<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
body{
			margin:0;
			width:100vw;
			height:100vh;
		}
</style>
<title>Payment page</title>
</head>
<body>
<body style="background-color: #484544;">
<div class="form" style="background-image: url('https://image.cnbcfm.com/api/v1/image/105964745-1560376510health-insurance-life-insurance-car-insurance.jpg?v=1561045239&w=1600&h=900')";>
<header class="bg-dark" style="height: 3rem;">
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


	<div align="center" style="color: white">
	<div class="container">

	<div  class="form-area1 text-white text-large">
	
	<!-- Card Content -->
	<div  class="card-body bg-dark text-white py-4" ;>
		<h1>Payment</h1>
		<form:form action="/getPaymentPage" method="POST" name="payment"
			modelAttribute="payment">
			<div class="form-row mb-5">
			<div class="col-md-15">
			<!-- First Name -->
			<div class="md-form text-white">
					<h5>Enter the Card Number</h5>
					<form:input path="cardNo" name="cardNo" />
					<form:errors path="cardNo" />
				</div>
				</div>
				</div>
				<div class="form-row mb-5">
			<div class="col-md-15">
			<!-- First Name -->
			<div class="md-form text-white">
					<td>Enter the CardHolderName</td>
					<td><form:input path="cardHolderName" name="cardHolderName" class="form-control"/></td>
</div>
</div>
</div>
				
				
				<div class="form-row mb-5">
				<div class="col-md-15">
			<!-- First Name -->
			<div class="md-form text-white">
					<td>Enter ExpiryDate</td>
					<td><form:input path="expiryDate" name="expiryDate"
							placeholder="yyyy-MM-dd" /></td>
				</div>
				</div>
				</div>
				<div class="form-row mb-5">
				<div class="col-md-15">
			<!-- First Name -->
			<div class="md-form text-white">
					<td>Select the Card Type</td>
					<td><form:select path="cardType" id="cardType"
							items="${cardList}" /></td>
							</div>
				</div>
				</div>
<div class="form-row mb-5">
				<div class="col-md-6">
			<!-- First Name -->
			<div class="md-form text-white">
				
					<td>Enter PIN</td>
					<td><form:input path="pin" name="pin" type="password" class="form-control"/></td>
					<td><form:errors path="pin" /></td>
				</div>
				</div>
				
				<div class="col-md-6">
			<!-- First Name -->
			<div class="md-form text-white">
					Enter CVV
					<td><form:input path="cvv" name="cvv" class="form-control"/></td>
					<td><form:errors path="cvv" /></td>
				</div>
				</div>
				</div>
			<h2 class=" text-white" >${rejected}</h2>
			 <button class="btn btn-warning  btn-rounded btn-small navbar-btn text-dark" type="submit">Confirm to Pay</button>
		</form:form>
		</div>
		</div>
		</div>
		</div>
</body>
</html>