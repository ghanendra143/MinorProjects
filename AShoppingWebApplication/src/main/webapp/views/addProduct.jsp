<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Add Product</h1>
<hr>
<form action="addProdSuccess">
<table align="center">
<tr><td>Enter Product Type</td><td><input type="text" name="prod_type"></td></tr>
<tr><td>Enter Product Name</td><td><input type="text" name="prod_name"></td></tr>
<tr><td>Enter Product Price</td><td><input type="number" name="prod_price"></td></tr>
<tr><td>Enter Product Brand</td><td><input type="text" name="prod_brand"></td></tr>
<tr><td></td><td><button type="submit">Add</button></td></tr>
</table>
</form>
</body>
</html>