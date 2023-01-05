<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.header{
padding: 10px;
text-align: center;
background: #00ccff;
color: black;
font-size: 20px;
}
h1{
color: #000099;
}
.alert.success {background-color: #04AA6D;}
.alert.info {background-color: #2196F3;}
.alert.warning {background-color: #ff9800;}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
#img
{
  margin-left: 98%;
  border-radius: 50%
}
a{
margin-top: 12%;
margin-left: 5%
}
</style>
</head>
<body style="background-color: #ff6666">
<div class="header">
		<marquee scrollamount="15"><h1>
			*********Welcome to <i>CitiusTech Food Corner</i>*********
		</h1></marquee>
	</div>
	<div class="alert success">
  <span class="closebtn">&times;</span>  
  <h2><strong>Success!...</strong></h2><h3>Thanks for Updating the Food</h3>
</div>
<div >

<div style="float: left; width: 40%;">
  <img id = "img" src="data:image/jpeg;base64,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"
   alt="Family image">
  </div>
	<br>
	<a href="BackFromAddSuccess" style="background-color: #003ff0; color:white; padding: 15px 25px; text-decoration: none; display: inline-block; font-size: 20px"><b>Back</b></a>
</body>
</html>