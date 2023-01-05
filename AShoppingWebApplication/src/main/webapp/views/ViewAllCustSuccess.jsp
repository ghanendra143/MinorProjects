<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.model.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">All Customers fetched successfully</h1>
<hr>
<table align="center" border="2" width="50%" cellpadding="2">
<tr><th>Id</th><th>Customer Name</th><th>Customer Email</th><th>Customer Phone</th><th>Customer Address</th></tr>
<%List<Customer> cust_list = (List<Customer>)request.getAttribute("customers");
for(Customer c:cust_list)
{
	int id = c.getCust_id();
	String name = c.getCust_name();
	String email = c.getCust_email();
	int phone = c.getCust_phone();
	String address = c.getCust_address();
%>
<tr>
<td><% out.print(id);%></td>
<td><% out.print(name);%></td>
<td><% out.print(email);%></td>
<td><% out.print(phone);%></td>
<td><% out.print(address);%></td>
<%}%>
</tr>
</table>
<br>
<div align="center"><a href="adminMenu"><button type="submit">Admin Menu</button></a></div><br>
<div align="center"><a href="home"><button type="submit">Home Page</button></a></div><br>
</body>
</html>