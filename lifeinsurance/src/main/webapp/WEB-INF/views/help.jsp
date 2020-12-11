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
<title>help desk page</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<center><h2>Help Desk</h2></center>
	<div align="center">
		<form:form modelAttribute="help" method="POST" action="/getHelpPage">
			<table>
				<tr>
					<td>Customer Name</td>
					<td><form:input path="custName" type="text" name="custName" value="${custName}"/></td>
					<td><form:errors path="custName" /></td>
				</tr>
				<tr>
					<td>Issue</td>
					<td><form:input path="issue" name="issue" placeholder='issue' /></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><form:textarea path="description" rows="10" column="50" name="description" placeholder='description' /></td>
				</tr>
				<tr>
					<td>Date of Ticket</td>
					<td><form:input path="dateOfTicket" name="dateOfTicket" value="${autopopDate}"/></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="Submit" id="submitbutton"/>
			<br>
			<br>
			<a href="/getContactPage">Contact Us</a>
		</form:form>
	</div>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>	
</body>
</html>