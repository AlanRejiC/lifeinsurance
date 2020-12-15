<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
<title>Insurance Form page</title>
</head>
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
<br>
<!-- Apply for insurance form -->
<div align="center" style="color: white">
	<div class="container">

	
	
	<!-- Card Content -->
	<div  class="card-body bg-dark text-white py-4" ;>
		<form:form modelAttribute="insurance" method="POST" action="/getInsurancePage">
			<center><h2>Insurance Application Form</h2></center>
			


						<h3>Personal Details Section</h3>
					<div class="form-row mb-5">
			<div class="col-md-3">
			<!-- First Name -->
			<div class="md-form text-white">
						<label>Name</label>
						<form:input path="custName" name="custName" class="form-control"></form:input>
						<form:errors path="custName"></form:errors>
			</div>
			</div>

			<!-- DOB -->
			<div class="col-md-3">
			<div class="md-form text-white">
								<label>	Date of Birth </label>
						<form:input path="custDob" type="text" name="custDob" placeholder="yyyy-MM-dd" class="form-control"/>
						<form:errors path="custDob" />

				</div>
			    </div>
				
						
								<div class="col-md-3">
				<!-- Gender -->
				<div class="md-form text-white">
						<label>Gender</label>
						<form:select path="custGender" id="custGender"
								items="${genderList}" class="form-control input-sm"/>
					<form:errors path="custGender"></form:errors>
							
						</div>
						</div>		
								<div class="col-md-3">
						<!-- Relationship -->		
			    
						<div class="md-form text-white">
						<label>Relationship</label>
						<form:select path="custRelationship"
								id="custRelationship" items="${relationshipList}" class="form-control input-sm" />
						<form:errors path="custRelationship"></form:errors>
						</div>
						</div>
						</div>
						<h3>Residence History</h3>
											<div class="form-row mb-5">
			<div class="col-md-4">
			<!-- Residence Date -->
			<div class="md-form text-white">
						

						<label>Residence Date</label>
						<form:input path="custResidenceDate" type="text"
								name="custResidenceDate" placeholder="yyyy-MM-dd" class="form-control"/>
						<form:errors path="custResidenceDate"></form:errors>
						</div>
						</div>

						<div class="col-md-4">
						<!-- Residence Date -->
						<div class="md-form text-white">
						<label>Village</label>
						<form:input path="custVillage" type="text"
								name="custVillage" class="form-control"/>
						<form:errors path="custVillage"></form:errors>
						</div>
						</div>
						<div class="col-md-4">
						<!-- Residence Date -->
						<div class="md-form text-white">
						<label>Block</label>
						<form:input path="custBlock" type="text" name="custBlock" class="form-control" />
						<form:errors path="custBlock"></form:errors>
						</div>
						</div>
						</div>
						<div class="form-row mb-5">
						<div class="col-md-4">
						<!-- Residence Date -->
						<div class="md-form text-white">
						<label>District</label>
						<form:input path="custDistrict" type="text"
								name="custDistrict" class="form-control"/>
						<form:errors path="custDistrict"></form:errors>
						</div>
						</div>
						
						<div class="col-md-4">
						<!-- state -->
						<div class="md-form text-white">
						<label>State</label>
						<form:input path="custState" type="text" name="custState" class="form-control" />
						<form:errors path="custState"></form:errors>
						</div>
						</div>

						<div class="col-md-4">
						<!-- Pincode -->
						<div class="md-form text-white">
						<label>PinCode</label>
						<form:input path="custPin" type="text" name="custPin" class="form-control" />
						<form:errors path="custPin"></form:errors>
						</div>
						</div>
						</div>

						
						<h3>Occupation History</h3>
						<div class="form-row mb-5">
						<div class="col-md-4">
						<!-- Residence Date -->
						<div class="md-form text-white">
						
						Occupation
						<form:input path="custOccupation" type="text"
								name="custOccupation"  class="form-control" />
						<form:errors path="custOccupation"></form:errors>
						</div>
						</div>
						
						<div class="col-md-4">
						<!-- Residence Date -->
						<div class="md-form text-white">
						Industry
						<form:input path="custIndustry" type="text"
								name="custIndustry"  class="form-control"/>
						<form:errors path="custIndustry"></form:errors>
						</div>
						</div>
						
						<div class="col-md-4">
						<!-- Residence Date -->
						<div class="md-form text-white">
						Salary
						<form:input path="custSalary" type="text"
								name="custSalary"  class="form-control" />
						<form:errors path="custSalary" ></form:errors>
						</div>
						</div>
						</div>

						<h3>Medical History</h3>
						<div class="form-row mb-5">
						<div class="col-md-3">
						<!-- Residence Date -->
						<div class="md-form text-white">
						

						<td>Diagnosis Date</td>
						<td><form:input path="diagnosisDate" type="text"
								name="diagnosisDate" placeholder="yyyy-MM-dd" class="form-control"/></td>
						<td><form:errors path="diagnosisDate" /></td>
						</div>
						</div>
						
						<div class="col-md-3">
						<!-- Residence Date -->
						<div class="md-form text-white">
						<td>Disease (ICD code)</td>
						<td><form:input path="diseaseCode" type="text"
								name="diseaseCode" class="form-control"/></td>
						<form:errors path="diseaseCode"></form:errors>
						</div>
						</div>
						
						<div class="col-md-3">
						<!-- Residence Date -->
						<div class="md-form text-white">
						Policy Name
						<form:input path="policyName" type="text"
								name="policyName" class="form-control input-sm" />
						<form:errors path="policyName"  />
						</div>
						</div>
						
						<div class="col-md-3">
						<!-- Residence Date -->
						<div class="md-form text-white">
						Policy Mature Date
						<form:input path="matureDate" type="text"
								name="matureDate" placeholder="yyyy-MM-dd" class="form-control"/>
						<form:errors path="matureDate" />
						</div>
						</div>
						</div>
						
			 <button class="btn btn-warning  btn-rounded btn-small navbar-btn text-dark" type="submit">Proceed</button>
		</form:form>
		</div>
		</div>
		</div>
	</div>
	</div>
	
	</body>

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
	

</html>