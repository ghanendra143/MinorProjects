<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN - LOGIN</title>
<style>
.header {
	padding: 10px;
	text-align: center;
	background: #00ccff;
	color: black;
	font-size: 20px;
}
.formStyle{
        margin-left: 33%;
       margin-top: 10px; 
       border-radius: 3px;
  padding: 10px;
  outline-style: solid;
  outline-width: 5px;
  outline-color: blue;
  width: 30%;

       }

.button {
	background-color: #6495ED;
	color: white;
	font-size: 20px;
	font-family : times new roman;
	
}
.button: hover{
background-color: red;
}
.button1 {
	border-radius: 18px;
	padding: 10px 12px;
	width: 26%;
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
<script type="text/javascript">
	function validate() {
		let x = document.forms["myForm"]
		var name = document.myForm.uName.value;
		var password = document.myForm.pwd.value;
		if (name != "Admin" && password != "pass123") {
			alert("Please Enter Correct Credentials....");
			return false;
		} else if (name == "Admin" && password != "pass123") {
			alert("Please Enter Correct Password....");
			return false;
		} else if (name != "Admin" && password == "pass123") {
			alert("Please Enter Correct UserName....");
			return false;
		} else if (name == null && password == null) {
			alert("Please Enter the Details....");
			return false;
		}

	}
</script>
</head>
<body style="background-color: #ff6666">
	<div class="header">
		<marquee scrollamount="15"><h1><b>
			*********Welcome to <i>CitiusTech Food Corner</i>*********</b>
		</h1></marquee>
	</div>
	<hr>
	
	<h3 style="text-align: center; color: #ffff00; font-size: 20px; margin-right: 2%">
		<u><b>----------LOGIN FOR ADMIN----------</b></u>
	</h3>
	<br>
	<div class="formStyle">
	<form
		style="text-align: center; font-size: 25px; color: #660066; font-weight: bold"
		action="AdminMenu" method="post" name="myForm"
		onsubmit="return validate()">
		<br>
		UserName : - <input type="text" name="uName"
			style="width: 180px; height: 30px"><br>
		<br> Password : - &nbsp;&nbsp;<input type="text" name="pwd"
			style="width: 180px; height: 30px"><br>
		<br>
		<button type="submit" class="button button1">
			<!-- style="padding: 10px 25px; background-color: #800000; border: 5px; color: white; display: inline-block; font-size: 16px; margin: 4px 2px"> -->
			<b>Login</b>
		</button>
		<br>
		<br>
		<hr>
	</form>
</div>
</body>
</html>