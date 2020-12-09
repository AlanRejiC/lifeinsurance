<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>
		<h1>Update user claim status</h1>
		 <!--  <form:form modelAttribute="claim" method="GET" action="/getUserUpdateSuccess">-->
		<table>
			<tr id="head">
				<td><label for="userId"><b>User Id</b></label></td>
				<td><label for="firstName"><b>Claim Status</b></label></td>
			</tr>
			<tr>
				<td>${userId}</td>
				<td>${status}</td>
				<form:form modelAttribute="claim">
				<td><a href="/getUserUpdateSuccess?status=accepted&userId=${userId}">Accepted</a></td>
				<td><a href="/getUserUpdateSuccess?status=rejected&userId=${userId}">Rejected</a></td>
			</tr>
			</center>
		</table>
		 <!-- </form:form>-->
		<h3>
			<a href="/getUserPage?role=All">Go to User Menu</a>
		</h3>
</body>
</html>
