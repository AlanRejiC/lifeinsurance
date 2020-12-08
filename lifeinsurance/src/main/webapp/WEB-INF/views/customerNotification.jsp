<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<form:form modelAttribute="claim" action="/getNotificationpage" method="post">
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
<h4><a href="/getHomePage">Go to Home Page</a></h4>
</center>	
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</body>
</html>