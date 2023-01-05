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

input[type=text] {
  width: 45%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  margin-left: 10px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=number] {
  width: 45%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  margin-left: 10px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit]:hover {
  background-color: red;
}

.center {
	/* margin: auto;
	position: absolute;
	border-radius: 18px;
	border: 3px solid black;
	top: 35%;
	left: 30%;
	padding: 30px 70px; */
	
	margin-left: 24%;
       margin-top: -250px; 
       border-radius: 3px;
  padding: 30px 80px;
  outline-style: solid;
  outline-width: 5px;
  outline-color: blue;
  width: 40%;
}

.button {
	background-color: #6495ED;
	color: white;
	font-size: 20px;
	font-family : times new roman;
	margin-left: 170px;
	font-weight: bold
}

.button1 {
	border-radius: 18px;
	padding: 10px 12px;
	width: 28%;
	
}

#imgF{
height: 130px;
width: 230px;
margin-left: 26px;
margin-top: 120px;
border-radius: 50%
}

#imgF1{
height: 120px;
width: 220px;
float: right;
margin-right: 26px;
margin-top: -120px;
border-radius: 50%
}

label{
font-weight: bold;color: #000099;font-size: 20px;
margin-left: -15px
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
	
	<h1 align="center" style="color: yellow;">Add New Item In Menu</h1>
	<div class="feedbackImg">
<img alt="feedback" src="https://64.media.tumblr.com/c1361f3a0123a82df8442ed7a79ea7b7/7a46c4ff46f28f85-21/s1280x1920/8fc386a893288c8d1bfcef8e5829988256385153.jpg" id="imgF">
</div>
<div class="Img">
<img alt="feedback" src="https://res.cloudinary.com/purnesh/image/upload/w_540,f_auto,q_auto:eco,c_limit/11606372220861.jpg" id="imgF1">
</div>



	<div class="center">
		<form action="InsertSuccessPage" method="post" onsubmit="return validate()" name="myForm">
		<label for="ItemName"><b>Enter the Name Of Item - </b></label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="food_name" placeholder="Enter the Name of Food"><br>
		<label for="PriceItem"><b>Enter the Price Of Item - &nbsp;&nbsp;</b></label>
			 &nbsp;&nbsp;&nbsp;<input
				type="number" name="food_price" placeholder="Enter the Price"><br>
				
		<label for="ItemDesc"><b>Enter the Item Description - </b></label>
			<input type="text"
				name="food_desc" placeholder="Enter the Food Description"><br>
		<label for="FoodCategory"> <b>Enter the Category of Food - </b></label>
			<input type="text"
				name="food_category" placeholder="Enter the Food category"><br>
			<br>
			<input type="submit" class="button button1" value="Add">
				<!-- style="padding: 10px 40px; background-color: #800000; border: 5px; color: white; display: inline-block; font-size: 16px; margin: 4px 2px; margin-left: 130px"> -->
				
			
		</form>
	</div>
	
	<script type="text/javascript">
	function validate(){
		var name= document.myForm.food_name.value;
		var desc = document.myForm.food_desc.value;
		var cat = document.myForm.food_category.value;
		
		if(name == "" && desc == "" && cat == ""){
			alert("Please Fill all the details....");
			return false;
		}else if(name == null || name == ""){
			alert("Food name can't be empty...");
			return false;
		}else if(desc == null || desc == ""){
			alert("Please Enter Item Description");
			return false;
		}else if(cat == null || cat == ""){
			alert("Please Specify Food Category");
			return false;
		}
	}
	
	
	</script>
</body>
</html>