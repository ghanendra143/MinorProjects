<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.model.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Product fetched successfully</h1>
<hr>
<table align="center" border="2" width="50%" cellpadding="2">
<tr><th>Id</th><th>Product Type</th><th>Product Name</th><th>Product Price</th><th>Product Brand</th></tr>
<%Product p = (Product)request.getAttribute("prod");
	int id = p.getProd_id();
	String type = p.getProd_type();
	String name = p.getProd_name();
	int price = p.getProd_price();
	String brand = p.getProd_brand();
%>
<tr>
<td><% out.print(id);%></td>
<td><% out.print(type);%></td>
<td><% out.print(name);%></td>
<td><% out.print(price);%></td>
<td><% out.print(brand);%></td>
</tr>
</table>
<br>
<div align="center"><a href="adminMenu"><button type="submit">Admin Menu</button></a></div><br>
<div align="center"><a href="home"><button type="submit">Home Page</button></a></div><br>
</body>
</html>