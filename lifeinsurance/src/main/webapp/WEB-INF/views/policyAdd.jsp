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
<title>New Policy Registration Page</title>
</head>
<body>
	<header class="header">
<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<div align="center">
	<h2>Add New Policy</h2>
	<form:form modelAttribute="policy" action="/getPolicyAdd" method="POST">
			<table border="1">
			<tr>
				<td>Policy Name</td>
				<td><form:input path="policyName" name="policyName"
						placeholder="Policy Name" /></td>
				<td><form:errors path="policyName" /></td>
			</tr>
			<tr>
				<td>Policy Number</td>
				<td><form:input path="policyNumber" name="policyNumber"
						placeholder="Policy Number" /></td>
				<td><form:errors path="policyNumber" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><form:input path="policyDescription" type="text" name="policyDescription"
						placeholder="Policy Description" /></td>
				<td><form:errors path="policyDescription" /></td>
			</tr>
			<tr>
				<td>Policy Term</td>
				<td><form:input path="policyTerm" type="number" name="policyTerm" /></td>
				<td><form:errors path="policyTerm"></form:errors></td>
			</tr>
			<tr>
				<td>Net Amount Per Year</td>
				<td><form:input path="netAmountPerYear" type="number" name="netAmountPerYear"
						placeholder="Net Amount Per Year" /></td>
				<td><form:errors path="netAmountPerYear" /></td>
			</tr>
			<tr>
				<td>Total Deductible</td>
				<td><form:input path="totDeductible" name="totDeductible"
						placeholder="Total Deductible Price" /></td>
				<td><form:errors path="totDeductible" /></td>
			</tr>
			<tr>
				<td>Total Co Insurance</td>
				<td><form:input path="totCoInsurance" name="totCoInsurance"
						placeholder="Total Co Insurance" /></td>
				<td><form:errors path="totCoInsurance" /></td>
			</tr>
			<tr>
				<td>Interest Rate</td>
				<td><form:input path="interestRate" type="number" name="interestRate"
						placeholder="Interest Rate" /></td>
				<td><form:errors path="interestRate" /></td>
			</tr>
		</table>
		<div>
			<input type="submit" value="Submit" style="background-color: green" />
		</div>
	</form:form>

	</div>

	<footer class="footer">
		<p>
			Life Insurance copyrights 2020<br> Locations <br> Connect
			with us <br>
		</p>
	</footer>
</body>
</html>