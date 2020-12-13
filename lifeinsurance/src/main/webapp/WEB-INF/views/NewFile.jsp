<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
    
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	
<title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body style="background-color: #292828;">

<header class="bg-dark" style="height: 3rem;">
<div class="bg-dark">
	<center ><h1 style="font-size:50px;" class=" text-white" id="home_heading"><strong>Life Insurance Management private Limited</strong></h1></center>
</div>

<nav class="navbar navbar-expand-sm bg-dark"> 
    	<ul class="navbar-nav">
    	<li class="nav-item " style="padding-right:10px;"> 
				<a href="/getAboutUs" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark">About Us</a>
            </li>
    	
    		<li class="nav-item " style="padding-right:10px;"> 
				<a href="/getHelpPage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark">Help Desk</a>
            </li>
			<li class="nav-item" style="padding-right:10px;"> 
				<a href="/getAgentPage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Become an Agent</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getPolicyPremium" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Term Premium calculator</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getClaimPage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Claim</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getInsurancePage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Apply for Insurance</a>
            </li>
            <li class="nav-item" style="padding-right:10px;"> 
				<a href="/getNotificationpage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Notifications</a>
            </li>
    	</ul>
        <ul class="navbar-nav ml-auto"> 
            <li class="nav-item" style="padding-right:10px; padding-left:10px;"> 
				<a href="/verification" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Change Password</a>
            </li> 
            <li class="nav-item" style="padding-right:10px;"> 
                <a href="/getLoginPage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Sign In</a> 
            </li> 
            <li class="nav-item" style="padding-right:10px;">
                <a href="/getSignUpPage" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Sign Up</a> 
            </li> 
            <li class="nav-item"> 
                <a href="/getLogOut" style="font-size: 20px" class="btn btn-warning btn-small navbar-btn text-dark" >Log Out</a> 
            </li> 
        </ul> 
    </nav>    		
</header>
<br>
<br>
<br>
<br>
<br>


<div class="container">
  <center><h2 style="color:white; font-weight: bold">WELCOME TO LIFE INSURANCE PVT LTD</h2></center>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
       <li data-target="#myCarousel" data-slide-to="3" class="active"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="https://img.etimg.com/thumb/width-1200,height-900,imgsize-172170,resizemode-1,msid-70444745/wealth/insure/life-insurance/8-major-death-cases-which-are-not-covered-in-term-life-insurance.jpg" alt="Term Life Insurance" style="height:100%; width:100%; background-size: cover;  " >
      </div>

      <div class="item">
        <img src="https://mk0ehealtheletsj3t14.kinstacdn.com/wp-content/uploads/2016/12/health-insurance.jpg" alt="Insurance" style="width:100%;">
      </div>
      
      <div class="item">
        <img src="https://pe-insights.com/wp-content/uploads/2020/09/life-insurance.jpg" alt="Health Insurance" style="width:100%;">
      </div>
    
         
    <div class="item">
        <img src="https://cpb-us-e1.wpmucdn.com/blogs.cornell.edu/dist/a/7543/files/2017/11/Insurance_Social-Media-A-Game-Changer_HD-1uukuxp.jpg" alt="Life Insurance" style="width:100% ;background-size: cover;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
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