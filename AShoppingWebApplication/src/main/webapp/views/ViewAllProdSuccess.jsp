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
<h1 align="center">All Products fetched successfully</h1>
<hr>
<table align="center" border="2" width="50%" cellpadding="2">
<tr><th>Id</th><th>Product Type</th><th>Product Name</th><th>Product Price</th><th>Product Brand</th></tr>
<%List<Product> prod_list = (List<Product>)request.getAttribute("prodlist");
for(Product e:prod_list)
{
	int id = e.getProd_id();
	String type = e.getProd_type();
	String name = e.getProd_name();
	int price = e.getProd_price(); 
	String brand = e.getProd_brand();
%>
<tr>
<td><% out.print(id);%></td>
<td><% out.print(type);%></td>
<td><% out.print(name);%></td>
<td><% out.print(price);%></td>
<td><% out.print(brand);%></td>
<%}%>
</tr>
</table>
<br>
<div align="center"><a href="adminMenu"><button type="submit">Admin Menu</button></a></div><br>
<div align="center"><a href="home"><button type="submit">Home Page</button></a></div><br>
</body>
</html>