<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment page</title>
</head>
<body>
	<div align="center">
		<h1>Payment Page</h1>
		<form:form action="/getPaymentPage" method="POST" name="payment"
			modelAttribute="payment">
			<table style="width: 80%">
				<tr>
					<td>Enter the Card Number</td>
					<td><form:input path="cardNo" name="cardNo" /></td>
					<td><form:errors path="cardNo" /></td>
				</tr>
				<tr>
					<td>Enter the CardHolderName</td>
					<td><form:input path="cardHolderName" name="cardHolderName" /></td>

				</tr>
				<tr>
					<td>Enter CVV</td>
					<td><form:input path="cvv" name="cvv" /></td>
					<td><form:errors path="cvv" /></td>
				</tr>
				<tr>
					<td>Enter ExpiryDate</td>
					<td><form:input path="expiryDate" name="expiryDate"
							placeholder="yyyy-MM-dd" /></td>

				</tr>
				<tr>
					<td>Select the Card Type</td>
					<td><form:select path="cardType" id="cardType"
							items="${cardList}" /></td>

				</tr>
				<tr>
					<td>Enter PIN</td>
					<td><form:input path="pin" name="pin" /></td>
					<td><form:errors path="pin" /></td>
				</tr>
			</table>
			<input type="submit" value="Confirm to Pay" />
		</form:form>
</body>
</html>