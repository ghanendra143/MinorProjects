<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.a {
	color: blue;
	text-decoration: none;
}

.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	font-size: 20px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>
<body>
	<h2 align="center">success page</h2>
	<div>
		<div class="dropdown">
		  <button class="dropbtn">Pan</button>
		  <div class="dropdown-content">
			  <a href="panBulk">Bulk Pan Verification</a>
			  <a href="uploadFiles">Upload Files</a>
			  <a href="downloadFiles">Download Files</a>
		  </div>
		</div>&nbsp;&nbsp;&nbsp;
		<span><a href="home"><button class="dropbtn">logout</button></a></span>
		<span style="float:right"><button class="dropbtn">timer</button></span>
	</div>
	<br>
	<div style="float: right; border: 2px solid red">
		your id : ${id} <br> your name : ${vn} <br> your pass :
		${vp} <br> your email : ${e} <br>
	</div>
</body>
</html>