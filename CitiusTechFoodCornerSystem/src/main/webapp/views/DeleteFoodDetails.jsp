<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products Operations Page</title>
<style>
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
.center {
	margin: auto;
	position: absolute;
	border-radius: 18px;
	border: 3px solid black;
	top: 38%;
	left: 28%;
	padding: 30px 70px;
}

.button {
	background-color: #6495ED;
	color: white;
	font-size: 20px;
	font-family : times new roman;
	margin-left: 140px;
	font-weight: bold
}
input[type=submit]:hover {
  background-color: red;
}
.button1 {
	border-radius: 18px;
	padding: 10px 12px;
	width: 28%;
}
label{
font-weight: bold;color: #000099;font-size: 20px;
margin-left: -15px
}
input[type=number] {
  width: 46%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  margin-left: 3px;
  margin-bottom: 16px;
  resize: vertical;
}
#imgF{
height: 130px;
width: 230px;
margin-left: 26px;
margin-top: 40px;
border-radius: 50%
}

#imgF1{
height: 120px;
width: 220px;
float: right;
margin-right: 42px;
margin-top: -115px;
border-radius: 50%
}
</style>
</head>
<body style="background-color: #ff6666">
	<div class="header">
		<marquee scrollamount="15"><h1><b>
			*********Welcome to <i>CitiusTech Food Corner</i>*********</b>
		</h1></marquee>
	</div>
	<hr>
	<br>
	<h1 align="center" style="color: yellow; margin-top: -5px">Delete Old Item From Menu
		-</h1>
		<img alt="feedback" src="https://64.media.tumblr.com/c1361f3a0123a82df8442ed7a79ea7b7/7a46c4ff46f28f85-21/s1280x1920/8fc386a893288c8d1bfcef8e5829988256385153.jpg" id="imgF">
</div>
<div class="Img">
<img alt="feedback" src="https://res.cloudinary.com/purnesh/image/upload/w_540,f_auto,q_auto:eco,c_limit/11606372220861.jpg" id="imgF1">
</div>
		
	<div class="center">
		<form action="DeleteSuccessPage" method="post">
				<label for="dltItem"><b>Delete Old Item in Menu - </b></label>
				<input type="number" name="food_id" placeholder="Enter ID of Food Item"><br>
			<br> <br>
			<input type="submit" class="button button1" value="DELETE">
			<!-- style="padding: 10px 40px; background-color: #800000; border: 5px; color: white; display: inline-block; font-size: 16px; margin: 4px 2px; margin-left: 120px"> -->
		</form>
	</div>
</body>
</html>