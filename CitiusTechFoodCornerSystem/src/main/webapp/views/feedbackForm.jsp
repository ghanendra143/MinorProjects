<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
input[type=submit] {
  background-color: #008CBA;
  font-size: 18px;
  font-weight: bold;
  color: white;
  padding: 12px 25px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  margin-left: 38%
}

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;

}

input[type=submit]:hover {
  background-color: red;
}
.header {
	padding: 10px;
	text-align: center;
	background: #ff66ff;
	color: black;
	font-size: 20px;
}


.container {
  border-radius: 5px;
  padding: 20px;
  margin-left: 29%;
  outline-style: double;
  outline-width: 10px;
  outline-color: red;
  width: 41%;
  margin-top: -270px
}

.heading{
text-align: center;
color: red;
padding: 20px;
font-size: 35px;
font-family: Georgia

}
 input[type=text] {
  width: 55%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  margin-left: 20px;
  margin-bottom: 16px;
  resize: vertical;
}
 input[type=number] {
  width: 55%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  margin-left: 100px;
  margin-bottom: 16px;
  resize: vertical;
}

#hospitality{
width: 55%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  margin-left: 20px;
  margin-bottom: 16px;
  resize: vertical;
}
textarea{
width: 55%;
height: 100px;
padding: 12px 20px;
box-sizing: border-box;
border: 3px solid blue;
border-radious: 4px;
background-color: #f8f8f8;
font-size: 16px;
resize: none;
}

#imgF{
height: 130px;
width: 230px;
margin-left: 55px;
margin-top: 140px
}


h1{
color: #000099;
}
label{
font-weight: bold;color: #000099;font-size: 20px;

}
</style>
</head>
<body style="background-color: #ccff33">
<div class="header">
		<marquee scrollamount="15"><h1>
			*********Welcome to <i>CitiusTech Food Corner</i>*********
		</h1></marquee>
	</div>
<h2 class="heading">Feedback Form For Customer</h2>

<div class="feedbackImg">
<img alt="feedback" src="https://trustpulse.com/wp-content/uploads/2019/10/feedback-featured-image.png" id="imgF">
</div>

<div class="container">
  <form action="FeedbackSuccess"method="post" name="myForm" onsubmit="return validate()">
  <label for="customerName">Customer Name : -</label>
    <b></b><input type="text" id="fname" name="Customer_name" placeholder="Enter Your Name Here..."><br>

    &nbsp;<label for="rate"><u>Rate Our Products - From 0 to 5</u></label>
    <br><br><br>
    <label for="RateService">Service : - </label>
    <input type="number" id="serv" name="Service_rating" placeholder="Rate our Service..... " min="0" max="5"><br><br>
    <label for="RateQuality">Quality : - </label>
    <input type="number" id="quality" name="Quality_rating" placeholder="Rate our Quality.." min="0" max="5"><br><br>
    <label for="hospitality">Hospitality : - </label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" id="hospitality" name="Hospitality_rating" placeholder="Rate our Hospitality.." min="0" max="5"><br><br>
    <label for="hospitality">Any Suggestions : - </label>
    <textarea id="suggestion" name="Suggestions" placeholder="Write any suggestions.." rows="5" cols="10"></textarea><br><br>

    <input type="submit" value="Submit">
  </form>
</div>

<script type="text/javascript">
function validate(){
	
	var name=document.myForm.Customer_name.value;
	var serviceRate = document.myForm.Service_rating.value;
	var qualityRate = document.myForm.Quality_rating.value;
	var hospitalityRate = document.myForm.Hospitality_rating.value;
	if(name == "" && serviceRate == "" && qualityRate == "" && hospitalityRate == ""){
		alert("Please Fill all Fields....")
		return false;
	}else if(name.length <=1){
		alert("Please Enter Your Proper Name!!!");
		return false;
	}
	
}


</script>
</body>
</html>
