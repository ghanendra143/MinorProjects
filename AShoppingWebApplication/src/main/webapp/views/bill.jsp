<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Bill</h1>
<hr>
<br>
<table align="center" border="2" width="40%" cellpadding="2">
<tr><td>Product Id</td><td>${productId}</td></tr>
<tr><td>Product Name</td><td>${productName}</td></tr>
<tr><td>Product Quantity</td><td>${quantity}</td></tr>
<tr><td>Product Price</td><td>${productPrice}</td></tr>
<tr><td>Bill</td><td>${bill} Rs.</td></tr>
</table>
<br>
<div align="center"><button onclick="window.print()">Print Bill</button></div>
<hr>
<h1 align="center">Thank you for Shopping</h1>
<div align="center"><a href="adminMenu"><button type="submit">Admin Menu</button></a></div><br>
<div align="center"><a href="home"><button type="submit">Home Page</button></a></div><br>
<div align="center"><a href="startShopping"><button type="submit" >Shopping Menu</button></a></div><br>
</body>
</html>