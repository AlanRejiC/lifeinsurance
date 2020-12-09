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
<title>Become an agent</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
<div align="center">
	<form:form modelAttribute="agent" action="/getAgentPage" method="POST">
		<h3>Become an Agent</h3>
		<table>
			<tr>
				<td>Name</td>
				<td><form:input path="agentName" name="agentName"></form:input></td>
				<td><form:errors path="agentName"></form:errors></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="agentEmail" name="agentEmail"
						placeholder="ID@Domain" /></td>
				<td><form:errors path="agentEmail" /></td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td><form:input path="agentMobileNo" type="text" name="agentMobileNo"
						placeholder="MobileNo" /></td>
				<td><form:errors path="agentMobileNo" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="agentAddress" type="textbox" name="agentAddress" /></td>
				<td><form:errors path="agentAddress"></form:errors></td>
			</tr>
		</table>
		<input type="submit" value="Submit" id="submitbutton"/>
	</form:form>
</div>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</body>
</html>