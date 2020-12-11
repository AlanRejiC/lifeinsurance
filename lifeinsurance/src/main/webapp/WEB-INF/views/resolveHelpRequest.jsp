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
	<form:form method="POST" actin="/getHelpRequest" modelAttribute="help" >
		<table>
			<tr id="head">
				<td><label for="requestId"><b>Request ID</b></label></td>
			</tr>
				<c:forEach var="help" items="${help}">
			<tr>
				<td><a href="/getEditHelpRequest?requestId=${help.requestId}">${help.requestId}</a></td>
			</tr>
		</c:forEach>
		</table>
	</form:form>
		
	</div>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>	
</body>
</html>