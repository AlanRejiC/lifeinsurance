<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>
<title>Customer Notification Page</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<div align="center">
	<form:form modelAttribute="claim" action="/getNotificationpage" method="POST">
		<h3>Claim notifications </h3>
		<table>
				<tr>
					<td>Enter claim number</td>
					<td><form:input path="claimNumber" type="text"
							name="claimNumber" /></td>
					<td><form:errors path="claimNumber" /></td>
				</tr>		
		</table>
		<input type="submit" value="Submit" id="submitbutton"/>
		<h3>${status}</h3>
		<h3>${nullStatus}</h3>
		<h3>${invalidclaim}</h3>
	</form:form>
<center>
<h3><a href="/getClaimEdit?claimNumber=${Number}">Edit</a></h3>
<h4><a href="/getHomePage">Go to Home Page</a></h4>
</center>	
</div>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</body>
</html>