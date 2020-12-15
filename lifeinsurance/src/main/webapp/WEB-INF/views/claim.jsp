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
<%@include file="/WEB-INF/styles/style.css"%>
</style>

<head>
<meta charset="ISO-8859-1">
<title>Insurance Claim Submission</title>
</head>



<body class="form" style="background-image: url('https://image.cnbcfm.com/api/v1/image/105964745-1560376510health-insurance-life-insurance-car-insurance.jpg?v=1561045239&w=1600&h=900')";>

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
            <li class="nav-item"> 
                <a href="/getLogOut" class="btn btn-warning btn-small navbar-btn" >Log Out</a> 
            </li> 
        </ul> 
    </nav> 
</header>

	<br>
	<br>
	<!-- Claim Form -->
	<div class="container">
	<table class="table table-bordered view">
	<div align="center" style="color: white">
	<h5 class=" display-4 card-header success-color white-text text-center py-4"><strong>Insurance Claim Submission Form</strong></h5>
<!-- Card Content -->
	<div  class="card-body bg-dark text-white" >
	<!-- Form -->
	

		
		<form:form action="/getClaimPage" method="POST" name="userRegister"
			modelAttribute="claim">
			<br>
			
			<div class="form-row mb-5">
			<div class="col-md-6">
			<div class="md-form text-white">
					<strong>Old claim number</strong>
					<form:input path="claimNumber" type="text"
							name="claimNumber" />
					<form:errors path="claimNumber" cssClass="error"/>
			</div>
			</div>
		
				
			
		
				
			
			<div class="col-md-6">
			<div class="md-form text-white">
				
					<strong>Customer Name</strong>
					<form:input path="custName" type="text"
							name="custName" />
					<form:errors path="custName" cssClass="error" />
			</div>
			</div>
			</div>
			
						
			<div class="form-row mb-5">
			<div class="col-md-6">
			<div class="md-form text-white">
				
					<strong>Incurred date</strong>
					<form:input path="incurredDate" type="text"
							name="incurredDate" />
					<form:errors path="incurredDate" cssClass="error"/>
					
			
			</div>
			</div>
		
		
		
			<div class="col-md-6">
			<div class="md-form text-white">
				
					<strong>Reported date</strong>
					<form:input path="reportedDate" type="text"
							name="reportedDate" />
					<form:errors path="reportedDate" cssClass="error" />
					
					</div>
			</div>
			</div>
			
			<div class="form-row mb-5">
			<div class="col-md-6">
			<div class="md-form text-white">
			
				
					<strong>Date of claim paid</strong>
					<form:input path="datePaid" type="text" name="datePaid" />
					<form:errors path="datePaid"  cssClass="error" />
					
					
			</div>
			</div>
				
			<div class="col-md-6">
			<div class="md-form text-white">
			
				
					<strong>Date of admission</strong>
					<form:input path="admitDate" type="text" name="admitDate" />
					<form:errors path="admitDate" cssClass="error"></form:errors>
					
					</div>
			</div>
			</div>
			
			<div class="form-row mb-5">
			<div class="col-md-6">
			<div class="md-form text-white">
			
					
					
			
				
					<strong>Date of discharge</strong>
					<form:input path="releaseDate" type="text"
							name="releaseDate" />
					<form:errors path="releaseDate"  cssClass="error"/>
					
						
			</div>
			</div>
			
			
			<div class="col-md-6">
			<div class="md-form text-white">
			
				
				
					<strong>Total Charges</strong>
					<form:input path="totalCharge" name="totalCharge" />
					<form:errors path="totalCharge"  cssClass="error"/>
					
					</div>
			</div>
			</div>
			
				<div class="form-row mb-5">
			<div class="col-md-6">
			<div class="md-form text-white">
					
					
				


				
					<strong>Total pre-hospital charges</strong>
					<form:input path="preCharge" name="preCharge" />
					<form:errors path="preCharge" cssClass="error" />
					
						
			</div>
			</div>
			
				
			<div class="col-md-6">
			<div class="md-form text-white">
					
				
				
					<strong>Total post-hospital charges</strong>
					<form:input path="postCharge" name="postCharge" />
					<form:errors path="postCharge"  cssClass="error" />
								</div>
			</div>
			</div>
			<center>
			<div class="form-row mb-5">
			<div class="col-md-6">
			
			<div class="md-form text-white">
					
			


				
					<strong>${Totaldeductiblepaid}</strong>
					</div>
					</div>
					<div class="col-md-6">
			
			<div class="md-form text-white">
					
					<strong>${totDeductible}</strong>
					
					</div>
			</div>
			</div>
				
				<div class="form-row mb-5">
				<div class="col-md-6">
		
			<div class="md-form text-white">
					<strong>${Totalcoinsuranceamount}</strong>
					</div>
					</div>
					
						<div class="col-md-6">
						<div class="md-form text-white">
						<strong>${totCoInsurance}</strong>
					
						</div>
			</div>
			</div>
					
				<div class="form-row mb-5">
					<div class="col-md-6">
			
			<div class="md-form text-white">
				
					<strong>${Totalexcludedamount}</strong>
					</div>
					</div>
					<div class="col-md-6">
					<div class="md-form text-white">
					<strong>${totExcludedAmt}</strong>
					</div>
			</div>
			</div>
				<div class="form-row mb-5">
				<div class="col-md-6">
			
			<div class="md-form text-white">
			
			
					<strong>${Totalexceededamount}</strong>
					</div>
					</div>
					<div class="col-md-6">
					<div class="md-form text-white">
					<strong>${totExceededAmt}</strong>
					</div>
			</div>
			</div>
				
				<div class="form-row mb-5">
					<div class="col-md-6">
			
			<div class="md-form text-white">
				
					<strong>${Totalbenefitpaid}</strong>
					</div>
					</div>
					<div class="col-md-6">
					<div class="md-form text-white">
					<strong>${totBenefit}</strong>
						</div>
			</div>
			</div>
			</center>
				


<div class="form-row mb-5">
			<div class="col-md-6">
			<div class="md-form text-white">
		
<label for="img"><strong>Choose image</strong></label>
            <input type="file" id="img" name="img" accept="image/* " onchange="loadFile(event)">
            </div>
			</div>
			</div>
			
			<div class="form-row mb-5">
			<div class="col-md-6">
			<div class="md-form text-white">
               
            <strong>Uploaded Image </strong> 
                <img id="output" width="200" height="100" />
                  </div>
			</div>
			</div>
			</center>
           
          
            
        <h2><div id="Result"></div></h2>
       
            <script>
                    var loadFile = function(event) {
                        var image = document.getElementById('output');
                        image.src = URL.createObjectURL(event.target.files[0]);
                    };
                var x = 0;
                var array = Array();

                function add_element_to_array()
                {
                     //array[x] = document.getElementById("artid").value;
                    // alert("Element: " + array[x] + " Added at index " + x);
                    document.getElementById("Result").innerHTML="File Uploaded Successfully";
                     //x++;
                     //document.getElementById("artid").value = "";
                }

            </script>

</div>
			
			</div>
</div>
<center>
<button class="btn btn-warning  btn-rounded btn-small navbar-btn text-dark" type="submit">Submit</button>
			
			<div style="font-size:40px" class="md-form text-white"><strong>${success}</strong></div>
			</center>
		</form:form>
		</table>

	</div>
	<footer class="page-footer font-small bg-dark text-white  teal pt-4">
<!--/.First column-->  
      <div class="container text-center mt-1 ">
	        </h6>
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
