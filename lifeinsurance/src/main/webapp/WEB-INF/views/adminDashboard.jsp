<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<form:form>
		<center><h1>Admin Dashboard</h1></center>
		<table>
		<tr><h3><a id="userlink" href="/getUserPage?role=All" >User Menu</a></h3></tr>
		<tr><h3><a id="premiumlink" href="" >Policy Premium Calculator</a></h3></tr>
		<tr><h3><a id="policylink" href="/getPolicyPage" >View Policies</a></h3></tr>
		<tr><h3><a id="addpolicylink" href="/getPolicyAdd">Add Policies</a></h3></tr>
		<tr><h3><a id="agentDetails" href="/getAgentDetails">Agent Details</a></h3></tr>
		</table>
	</form:form>
</body>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</html>