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
				<td>Enter claim Number:</td>
				<td><form:input path="claimNumber" name="claimNumber" /></td>
			</tr>
		</table>
	</form:form>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</body>
</html>