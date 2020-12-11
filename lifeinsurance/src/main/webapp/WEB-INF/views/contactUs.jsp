<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
<%@ include file ="/WEB-INF/styles/style.css"%>
</style>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Contact and Support</title>
</head>
<body>

<header class="header">
<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<div align="center">
	<h2>Contact Us</h2>
	<form:form action="/getContactPage" method="POST" />

</div>
</body>
</html>