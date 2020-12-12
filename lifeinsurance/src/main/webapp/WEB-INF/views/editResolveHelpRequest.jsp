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
<title>Insert title here</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<center><h2>Resolve Help Requests</h2></center>
	<div align="center">
	<form:form modelAttribute="help" method="GET" action="resolveSuccess">
		<table>
			<tr id="head">
				<th><label for="requestId"><b>Request ID</b></label></th>
				<th><label for="custName"><b>Customer Name</b></label></th>
				<th><label for="issue"><b>Issue</b></label></th>
				<th><label for="description"><b>Description</b></label></th>
				<th><label for="dateOfTicket"><b>Date of Ticket</b></label></th>
				<th><label for="resolutionByAdmin"><b>Resolution</b></label></th>
			</tr>
			<form:hidden path="requestId" value="${item.requestId}"/>
			<tr>
				<td><label>${item.requestId}</label></td>
				<td><label>${item.custName}</label></td>
				<td><label>${item.issue}</label></td>
				<td><label>${item.description}</label></td>
				<td><label>${item.dateOfTicket}</label></td>
				<td><form:input path="resolutionByAdmin" type="text"  name="resolutionByAdmin" value="${item.resolutionByAdmin}" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Save"></td>
			</tr>
		</table>
	</form:form>	
	</div>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</body>
</html>