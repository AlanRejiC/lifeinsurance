<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<style>
<%@include file="/WEB-INF/styles/style.css"%>
</style>
<head>
<meta charset="ISO-8859-1">
<title>Policy Premium Calculator</title>
</head>

<body>
	<header class="header">
		<center>
			<h1 id="home_heading">Life Insurance Management private Limited</h1>
		</center>
	</header>

	<div align="center">
		<h2>Policy Premium Calculator</h2>
		<form:form action="/getPolicyPremium" method="POST"
			name="policyPremium" modelAttribute="policy">
			<table border="1">
				<tr>
					<td><label>Choose the Policy</label></td>
					<td><form:select path="policyName" name="policyName" placeholder="Policy Name"
							items="${policyList }" /></td>
				</tr>
				
				<tr>
					<td><label>Annual Income</label></td>
					<td><select>
							<option>Upto 4lakhs</option>
							<option>5lakhs-10lakhs</option>
							<option>10lakhs-15lakhs</option>
							<option>Over 15lakhs</option>
					</select> </td>
				</tr>
				
				<tr>
					<td><label>Deposit per Year</label></td>
					<td><form:input path="netAmountPerYear" name="netAmountPerYear" value="${item1 }"/></td>
				</tr>

				<tr>
					<td><label>Interest Rate</label></td>
					<td><form:input path="interestRate" name="interestRate"
							value="${item}" /></td>
				</tr>

				<tr>
					<td><label>Term</label></td>
					<td><form:input path="policyTerm" name="policyTerm"  value="${term }" /></td>
				</tr>

				<tr>
					<td>Net Amount Assured</td>
					<td>${netAmount }</td>
				</tr>
				<tr>
					<td>Amount Payable Per Month</td>
					<td>${amountPerMonth }</td>
				</tr>

			</table>
			<input type="submit" value="Calculate"
				style="background-color: green ; color:white" />
			
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