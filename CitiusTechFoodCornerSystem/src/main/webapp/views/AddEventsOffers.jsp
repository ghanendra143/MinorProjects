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

input[type=submit]:hover {
  background-color: red;
}
.center {
	position: absolute;
	border-radius: 18px;
	border: 3px solid black;
	top: 36%;
	left: 29%;
	padding: 30px 70px;
}

.button {
	background-color: #6495ED;
	color: white;
	font-size: 20px;
	font-family : times new roman;
	margin-left: 60px;
	font-weight: bold
}
.button1 {
	border-radius: 18px;
	padding: 10px 12px;
	width: 68%;
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
label{
font-weight: bold;color: #000099;font-size: 20px;
margin-left: -15px
}
#event_date{
margin-left: 16%;
width: 35%
}
#offer_desc{
margin-left: 10%;
}
#imgF{
height: 130px;
width: 230px;
margin-left: 55px;
margin-top: 120px;
border-radius: 50%
}

#imgF1{
height: 120px;
width: 220px;
float: right;
margin-right: 66px;
margin-top: -120px;
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
	<h1 align="center" style="color: yellow;">Add Events and Offers - </h1>
	<div class="feedbackImg">
<img alt="feedback" src="data:image/jpeg;base64,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" id="imgF">
</div>
<div class="Img">
<img alt="feedback" src="https://media.istockphoto.com/vectors/vector-hand-drawn-illustration-for-fast-food-cafe-special-offer-or-vector-id1060405650" id="imgF1">
</div>
	
	
	
	
	
	
	<div class="center">
		<form action="SuccessEventsAndOrders" method="post">
		<label for="coupnCode"><b>Enter Coupon Code - </b></label>
			<input type="text"
				name="event_name" placeholder="Enter Coupon Code"><br>
			<br> 
			<label for="DoE"><b>Date Of Event -</b></label>
			<input
				type="text" name="event_date" id="event_date" style="width: 165px" placeholder="Enter Date"><br>
			<br> 
			<label for="OfferEve"><b>Offers on Events -</b></label>
			<input type="text"
				name="offer_desc" id="offer_desc" style="height: 120px; width: 160px" placeholder="Enter Offer Description"><br>
			<br>
			<input type="submit" class="button button1" value="ADD EVENTS & OFFERS">
				<!-- style="padding: 10px 40px; background-color: #800000; border: 5px; color: white; display: inline-block; font-size: 16px; margin: 4px 2px; margin-left: 100px"> -->
				<b></b>
			</button>
		</form>
	</div>
</body>
</html>