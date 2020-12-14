<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

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
        input,select{
            color: #FFFFFF; 
            font-family: Verdana; 
            font-weight: bold; 
            font-size: 24px; 
            background-color:black;
            margin: 5%;
        }
		
        </style>
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
<br>
<br>
<br>
<br>
<br>
<br>
<div align="center" style="color: white">
	<div class="container">

	
	
	<!-- Card Content -->
	<div  class="card-body bg-dark text-white py-4" ; align="center">
    <form action="/getHomePage">
    
        <h1><i>Your Available Balance is ${balance}</i></h1>
        <h2>Please upload any documents if any</h2>
        <table align="center">
            <tr>
            <td><label for="img" color="white">Choose image</label></td>
            <td><input type="file" id="img" name="img" accept="image/* " onchange="loadFile(event)"></td>
               </tr>
            <tr> <td>Uploaded Image  </td>
                <td><img id="output" width="200" height="100" /></td></tr>
            <tr>
            <td><input type="button" id="button1" value="Upload" onclick="add_element_to_array();" style="text-align:center"></td>
                <td><input type="submit" id="button2" value="Return to Home Page" onclick="/getHomePage" style="text-align:center"></td></tr>
            
            </table>
            
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
        </form>
        </div>
        </div>
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