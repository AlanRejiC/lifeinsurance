<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
<%@ include file ="/WEB-INF/styles/style.css"%>
</style>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Contact and Support</title>
</head>
<body>

<header class="header">
<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<div align="center" >
	<h2>Phone Contact Details</h2>
	<form:form action="/getContactPage" method="POST" />
	
	<table>
		
		<tr>
		<td><label>Contact call center at 022 6895 1254</label></td>
		</tr>
		<tr>
		<td><label>Services now available 24x7</label></td>
		</tr>
	</table>
	<h2>SMS Help</h2>
	<table>
	<tr>
	<td><label>SMS LIMSHELP pol.no. to 9222492224 or SMS LIMSHELP pol.no. to 56767877</label></td>
	</tr>
	</table>
	
	<p>
		Toll free no. 18004259876 for Health Insurance policies from 10 AM to 5 PM on all working days. Our trained executive will talk to you.<br>
		Mail us at: reachLifms@lifms.in
	</p>
	
</div>

<div>
	<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations: Delhi, Mumbai, Chennai, Kolkata <br> Connect with us at www.LIFMS.in <br></p>
</footer>
</div>
</body>
</html>