<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
    <html>
       <head>
            <style>
			<%@ include file="style.css" %>
			</style>
       </head>
       <body>
           <div class="header">

           </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <h1>Edit Menu Item</h1>
            <table>
            <form:form modelAttribute="policy" method="GET" action="/policySave">
                <tr>
                <td><label for="policyNumber"><b>Policy Number</b></label></td>
                   <td></td>
                   <td><label for="policyName"><b>Policy Name</b></label></td>
                   <td><label for="policyDescription"><b>Description</b></label></td>
                   <td><label for="netAmountPerYear"><b>Net Amount Per Year</b></label></td>
                   <td><label for="tot_deductable"><b>Total Deductible</b></label></td>
                   <td><label for="totCoInsurance"><b>Total Co-Insurance</b></label></td>
               	   <td><label for="interestRate"><b>Interest Rate</b></label>
                    </tr>
                    <tr>
                    <form:input path="policyNumber" type="text" value="${item.policyNumber}" />
                    <form:input path="policyName" type="text" value="${item.policyName}" />
                    <form:input path="policyDescription" type="text" value="${item.policyDescription}" />
                    <form:input path="netAmountPerYear" type="text" value="${item.netAmountPerYear}" />
                    <form:input path="tot_deductable" type="text" value="${item.tot_deductable}" />
                    <form:input path="totCoInsurance" type="text" value="${item.totCoInsurance}" />
                     <form:input path="interestRate" type="text" value="${item.interestRate}" />
					</tr>                  
                    <input type="submit" value="Save">
                    </form:form>
                    <center><td><input type="Delete" id="button2" value="Return to Home Page" onclick="/policyDelete"></td></tr></center>
                </table>

        </body>
    </html>