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
<title>Agent Details</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>

<table border="1">
               <tr id="head">
                <td><label for="firstName"><b>Agent Name</b></label></td>
                   <td><label for="email"><b>Agent Email</b></label></td>
                   <td><label for="contact"><b>Agent Mobile Number</b></label></td>
                   
                   <td><b>Links to view Agents</b></td>
                    <td><b>Links to Delete Agents</b></td>
                   
                    </tr>
                    
                    
                    <c:forEach var="user" items="${user}">
			<tr>
				
				<td>${user.firstName}</td>
				<td>${user.contact}</td>
				<td>${user.email}</td>
			
				<td><a href="/getAgentView?userId=${user.userId}">View</a></td>
				
				<td><a href="/getAgentDelete?userId=${user.userId}">Delete</a></td>

			</tr>
		</c:forEach>
		</table>

</body>
</html>