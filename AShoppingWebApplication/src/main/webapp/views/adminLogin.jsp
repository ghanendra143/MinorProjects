<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function validate() {
		let x = document.forms["myForm"]
		var name = document.myForm.uname.value;
		var password = document.myForm.pass.value;
		if (name != "ghanendra" && password != "gh1234") {
			alert("Please Enter Correct Credentials....");
			return false;
		} else if (name == "ghanendra" && password != "gh1234") {
			alert("Please Enter Correct Password!!");
			return false;
		} else if (name != "ghanendra" && password == "gh1234") {
			alert("Please Enter Correct UserName!!");
			return false;
		} else if (name == null && password == null) {
			alert("Please Enter the Details!!");
			return false;
		}

	}
</script>
</head>
<body>
<h1 align="center">Login Required</h1>
<hr>
<h2 align="center">Enter your login details</h2>
<form action="adminMenu" name="myForm" onsubmit="return validate()">
<table align="center">
<tr><td>Enter UserName</td><td><input type="text" name="uname"></td></tr>
<tr><td>Enter Password</td><td><input type="password" name="pass"></td></tr>
<tr><td></td><td><button type="submit">Enter</button></td></tr>
</table>
</form>
</body>
</html>