<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;

}
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
  margin-top: 10px;
  font-size: 16px
}
input[type=submit] {
  background-color: #008CBA;
  font-size: 18px;
  font-weight: bold;
  color: white;
  padding: 12px 25px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  margin-top: 240px
}

input[type=submit]:hover {
  background-color: red;
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
.header {
	padding: 10px;
	text-align: center;
	background: #ff66ff;
	color: black;
	font-size: 20px;
}
h1{
color: #000099;
}
</style>
</head>
<body style="background-color: #ccff33">
<div class="header">
		<marquee scrollamount="15"><h1>
			*********Welcome to <i>CitiusTech Food Corner</i>*********
		</h1></marquee>
	</div>

<div class="alert success">
  <span class="closebtn">&times;</span>  
  <h2><strong>Success!...</strong></h2><h3>Thank you for Registering with Us.</h3>
</div>
<div >
  <div style="float: left; width: 40%;">
  <img id = "img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROm_vTpVSMVck1AXrIMKjwbELCJmG2EOTEG2-hLs4wvhfXq7-A-D_viSK-JPtPdsc0z6s&usqp=CAU"
   alt="Family image">
  </div>

<script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>
<a href="FoodCategory">
<input type="submit" value="Click Here to Order"></a>
</body>
</html>
