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
height: 200px;
  margin-left: 88%;
  border-radius: 50%
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
  <h2><strong>Success!...</strong></h2><h3>Thanks for Deleting the Food</h3>
</div>
	<div style="float: left; width: 40%;">
  <img id = "img" src="https://e-travel.gitbooks.io/instant-billings/content/assets/item-delete-success.png"
   alt="Family image">
  </div>
	<br>
	<a href="BackFromAddSuccess" style="background-color: #003ff0; color:white; padding: 15px 25px; text-decoration: none; display: inline-block; font-size: 20px; margin-left: 3%; margin-top: 17%"><b>Back</b></a>
</body>
</html>