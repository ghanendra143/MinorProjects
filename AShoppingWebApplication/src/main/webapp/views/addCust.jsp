<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Add Customer</h1>
<hr>
<form action="addCustSuccess">
<table align="center">
<tr><td>Enter Customer Name</td><td><input type="text" name="cust_name"></td></tr>
<tr><td>Enter Customer Email</td><td><input type="email" name="cust_email"></td></tr>
<tr><td>Enter Customer Phone</td><td><input type="number" name="cust_phone"></td></tr>
<tr><td>Enter Customer Address</td><td><input type="text" name="cust_address"></td></tr>
<tr><td></td><td><button type="submit">Add</button></td></tr>
</table>
</form>
</body>
</html>