<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function validate() {
	var name = document.form1.username.value;
	var pass = document.form1.password.value;

	var db_name = document.getElementById("un").value;
	var db_pass = document.getElementById("up").value;
	
	/* if(db_name == "invalid name" && db_pass == "invalid pass") {
		alert("invalid user details..");
		console.log("hello");
		return false;
	}else */ if(name.length==0) {
		alert("please enter name..");
		return false;
	}else if(pass.length==0) {
		alert("please enter pass..");
		return false;
	}
}
</script>
<body>
<h1 align="center">this is home page</h1>
<form action="success" name="form1" onsubmit="return validate()" method="post">
<table align="center">
	<tr>
		<td>Enter name :</td>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<td>Enter pass :</td>
		<td><input type="text" name="password"></td>
	</tr>
	<tr>
		<td><button type="submit">save</button></td>
	</tr>
 </table>
</form>

<c:if test="${invalid == 'invalid user'}">
	<script type="text/javascript">
		alert("invalid user details...");
	</script>
</c:if>

<input type="hidden" id="un" value="${un}">
<input type="hidden" id="up" value="${up}">
</body>
</html>