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
<title>New User Registration Page</title>
</head>

<body style="background-color: #484544;">

<div class="form" style="background-image: url('https://image.cnbcfm.com/api/v1/image/105964745-1560376510health-insurance-life-insurance-car-insurance.jpg?v=1561045239&w=1600&h=900')";>
	
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
                <a href="/getLoginPage" class="btn btn-warning btn-small navbar-btn " >Sign In</a> 
            </li> 
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
	<!-- Registration form -->
	<div class="container">
	<table class="table table-bordered view">
	<div align="center" style="color: white">
	<h5 class=" display-4 card-header success-color text-white text-center py-4"><strong>New User Registration</strong></h5>
	
		<!-- Card Content -->
	<div  class="card-body bg-dark text-white">
	<!-- Form -->
		<form:form action="/getSignUpPage" method="POST" name="userRegister"
			modelAttribute="user">
			<br>
			<div class="form-row mb-5">
			<div class="col-md-6">
			<!-- First Name -->
			<div class="md-form text-white">
				<form:input path="firstName" name="firstName" class="form-control"/>
				<label for="firstname">First Name</label>
				<form:errors path="firstName" cssClass="error" />
			</div>
			</div>
			
						
				<div class="col-md-6">
				<!-- Last Name -->
				<div class="md-form text-white">
					<form:input path="lastName" name="lastName" class="form-control"/>
							<label for="lastname">Last Name</label>
							<form:errors path="lastName" cssClass="error"/>
				</div>
			    </div>
				</div>		
					
					
				<div class="row mb-5">
				<div class="col-md-2">
				<!-- DOB -->
				<div class="md-form text-white">
					<form:input path="dob" type="text" name="dob"
							placeholder="yyyy-mm-dd" class="form-control" />
					<label for="dob">DoB</label>
					<form:errors path="dob" cssClass="error"/>
				</div>
				</div>
				
			
				<div class="col-md-2">
				<!-- Gender -->
				<div class="md-form text-white">
				   <form:select path="gender" id="gender"
							items="${genderList}" class="form-control input-sm" />
					<label for="gender">Gender</label>
				  	<form:errors path="gender" cssClass="error"></form:errors>
				 </div>
				 </div>
							
					<div class="col-md-4">			
					<!-- Contact -->
						<div class="md-form text-white">
							<form:input path="contact" type="text" name="contact"
							class="form-control" />
							<label for="contact">Contact</label>		
							<form:errors path="contact" cssClass="error" />
						</div>
					</div>
					
					
					<div class="col-md-4">
					<!-- Email -->
					<div class="md-form text-white">
					<form:input path="email" name="email" class="form-control"/>
					<label for="email">Email</label>
					<form:errors path="email" cssClass="error"/>
					</div>
					</div>
					</div>
														
				
				
				<div class="row mb-5">
				<div class="col-md-4">
				<!-- User ID -->
				<div class="md-form text-white">
					<form:input path="userId" name="userId" class="form-control"/>
					<label for="userid">User ID</label>
					<form:errors path="userId" cssClass="error"/>
				</div>
				</div>
								
				
				<div class="col-md-4">
				<!-- Password -->
				<div class="md-form text-white">
					<form:input path="password" type="password"
							name="password"  class="form-control"/>
							<label for="password">Password</label>
							<small id="materialRegisterFormPasswordHelpBlock" class="form-text text-white mb-3">
                    At least 8 characters,1 digit and 1 special character.
                </small>
					<form:errors path="password" cssClass="error"/>		
				</div>
				</div>
				
				<div class="col-md-4">
				<!-- Confirm Password -->
				<div class="md-form text-white">
				<form:input path="confirmpassword" type="password"
							name="confirmpassword" class="form-control" />
					<label for="confirmpassword">Confirm Password</label>
					<small id="materialRegisterFormPasswordHelpBlock" class="form-text text-white mb-3">
                    Must match with password
                </small>
				<form:errors path="confirmpassword" cssClass="error" />
				</div>
				</div>
				</div>
							
				<div class="form-row mb-4">
				<div class="col-md-4">
				<!-- Security question 1 -->
				<div class="md-form text-white">
					<label for="ques1">Choose the first Question</label>
					<form:select path="security1" 
						items="${securityList}" class="form-control" />
					<form:errors path="security1" cssClass="error"></form:errors>	
				</div>
				</div>
				
				<div class="col-md-4">
				<!-- Security question 2 -->
				<div class="md-form text-white">
				<label for="ques2">Choose the second Question</label>
				<form:select path="security2" 
						items="${securityList}" class="form-control"/>
						 <form:errors path="security2" cssClass="error"></form:errors>
						 </div>
						 </div>
						 
				<div class="col-md-4">
				<!-- Security question 3 -->
				<div class="md-form text-white">				
				<label for="ques3">Choose the third Question</label>
				<form:select path="security3" 
						items="${securityList}"  class="form-control"/>
				<form:errors path="security3" cssClass="error"></form:errors>
				</div>
				</div>
				</div>
				
				
				
				<div class="form-row mb-5">
				<div class="col-md-4">
				<!-- Security answer 1 -->
				<div class="md-form text-white">
				<label for="ans1">Enter the answer</label>
				<form:input path="ans1" class="form-control"/>
				<form:errors path="ans1" cssClass="error" />
				</div>
				</div>	
				
						<div class="col-md-4">
						 <!-- Security Answer 2 -->
						 <div class="md-form text-white">
						 <label for="ans2">Enter the answer</label>
						 <form:input path="ans2" class="form-control" />
						 <form:errors path="ans2" cssClass="error"/>
						 </div>
						 </div>
						 
						 
			   <div class="col-md-4">
				<!-- Security Answer 3 -->
				<div class="md-from text-white">
				<label for="ans2">Enter the answer</label>
				<form:input path="ans3" class="form-control" />
				<form:errors path="ans3" cssClass="error"/>
				</div>
				</div>
				</div>
				
				<!-- .Launch Modal Button-->
		    <!-- Sign in button -->
		    <button class="btn btn-primary  btn-rounded btn-small navbar-btn text-white" type="submit" data-toggle="modal" data-target="#Mymodal" >Sign Up
		    </button>
		    
		    <!-- modal -->
			<div class="modal fade" id="Mymodal">
				<div class="modal-dialog">
				<div class="modal-content">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
                &times;
                </button> 
				<h4 class="modal-title">
                	Success
                </h4>                                                             
			</div> 
			<div class="modal-body">
				Details  submitted successfully!
			</div>   
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">
                	Close
                </button>
				<button type="button" class="btn btn-primary">
                	Ok
                </button>                                 
			</div>
		</div>                                                                       
	</div>                                      
</div>
		    

            </form:form>
	</div>
	</div>
	</table>
	
</div>
</div>

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
<!--/.Copyright -->
</footer>

	</body>
</html>