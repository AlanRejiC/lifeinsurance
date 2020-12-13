<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">


<style>
<%@ include file="/WEB-INF/styles/style.css"%>

</style>
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
<title>home page</title>
</head>
<!-- <body  style="background-image: url(''); background-size:100% 100%; height:500px; background-size: cover; "> -->


<body style="background-image: url('https://wallpaperaccess.com/full/749813.jpg')";>
<div class="form"> 

<header class="bg-dark" style="height: 3rem;">
<div class="bg-dark">
	<center ><h1 style="font-size:50px;" class=" text-white" id="home_heading"><strong>Life Insurance Management private Limited</strong></h1></center>
</div>

    <nav class="navbar navbar-expand-sm bg-dark"> 
    	<ul class="navbar-nav">
    		<li class="nav-item " style="padding-right:10px;"> 
				<a href="/getHelpPage" class="btn btn-warning btn-small navbar-btn text-dark">Help Desk</a>
            </li>
			<li class="nav-item" style="padding-right:10px;"> 
				<a href="/getAgentPage" class="btn btn-warning btn-small navbar-btn text-dark" >Become an Agent</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getPolicyPremium" class="btn btn-warning btn-small navbar-btn text-dark" >Term Premium calculator</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getClaimPage" class="btn btn-warning btn-small navbar-btn text-dark" >Claim</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getInsurancePage" class="btn btn-warning btn-small navbar-btn text-dark" >Apply for Insurance</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getNotificationpage" class="btn btn-warning btn-small navbar-btn text-dark" >Notifications</a>
            </li>
    	</ul>
        <ul class="navbar-nav ml-auto"> 
            <li class="nav-item" style="padding-right:10px; padding-left:10px;"> 
				<a href="/verification" class="btn btn-warning btn-small navbar-btn text-dark" >Change Password</a>
            </li> 
            <li class="nav-item" style="padding-right:10px;"> 
                <a href="/getLoginPage" class="btn btn-warning btn-small navbar-btn text-dark" >Sign In</a> 
            </li> 
            <li class="nav-item" style="padding-right:10px;">
                <a href="/getSignUpPage" class="btn btn-warning btn-small navbar-btn text-dark" >Sign Up</a> 
            </li> 
            <li class="nav-item"> 
                <a href="/getLogOut" class="btn btn-warning btn-small navbar-btn text-dark" >Log Out</a> 
            </li> 
        </ul> 
    </nav> 
</header>
<br>
<br>
<br>
<br>
<h4 style="color: white; font-size: 30px";><Strong>Types of Life Insurance</Strong></h4><br>

<p style="color: white; font-size: 25px";><strong>What Is Life Insurance?
<br>
Life insurance is a contract between an insurer and a policy-holder. <br>A life insurance policy guarantees the insurer pays a sum of money to named beneficiaries when the insured policyholder dies, in exchange for the premiums paid by the policyholder during their lifetime.<br><br>

KEY TAKEAWAYS<br>
<br>

1)Life insurance is a legally binding contract.<br>

2)For the contract to be enforceable , the life insurance application must accurately disclose the insured <br>past and current health conditions and high-risk activities.<br>

3)For a life insurance policy to remain in force, the policy holder must pay a single premium up front or pay regular premiums over time.<br>

4)When the insured dies, the policy's named beneficiaries will receive the policy's face value, or death benefit.<br>

5)Term life insurance policies expire after a certain number of years. Permanent life insurance policies remain active until the insured dies,<br> stops paying premiums, or surrenders the policy.<br>

6)A life insurance policy is only as good as the financial strength of the company that issues it. State guaranty funds may pay claims if the issuer canâ€™t.</strong></p>

</div>
<br>
<br>
<br>
<br>
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