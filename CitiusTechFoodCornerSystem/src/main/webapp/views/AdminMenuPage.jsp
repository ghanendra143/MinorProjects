<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.center {
	margin: auto;
	position: absolute;
	border-radius: 18px;
	border: 3px solid black;
	margin-top: -2px;
	left: 32%;
	padding: 20px 60px;
	width: 27%
}

.button {
	background-color: #6495ED;
	color: white;
	
	font-size: 22px;
	text-align: center;
}
input[type=submit]:hover {
  background-color: red;
}

.button1 {
	border-radius: 18px;
	font-family : times new roman;
	padding: 10px 12px;
	width: 100%;
	align: center;
}

.header {
	padding: 10px;
	text-align: center;
	background: #00ccff;
	color: black;
	font-size: 20px;
}
h1{
color: #000099;
}
</style>
<meta charset="ISO-8859-1">
<title>AdminModule</title>
</head>
<body style="background-color: #ff6666">
	<div class="header">
		<marquee scrollamount="15"><h1><b>
			*********Welcome to <i>CitiusTech Food Corner</i>*********</b>
		</h1></marquee>
	</div>
	<hr>
	<h1 align="center" style="color: navy;">Welcome To The Admin Module -</h1>
	<div class="center">
		<h1 align="center" style="color: yellow; margin-top: -5px">Menu for Admin</h1>
		<a href="InsertFoodRecords">
			<input type="submit" class="button button1" value="Add New Item In Menu">
		</a> <br> <br> <a href="UpdateFoodRecords">
			<input type="submit" class="button button1" value="Update Item In Menu">
		</a> <br> <br> <a href="DeleteFoodRecords">
			<input type="submit" class="button button1" value="Remove Item In Menu">
		</a> <br> <br> <a href="InsertOfferEventRecords">
			<input type="submit" class="button button1" value="Add Offers & Events">
		</a> <br> <br>
	</div>
</body>
</html>