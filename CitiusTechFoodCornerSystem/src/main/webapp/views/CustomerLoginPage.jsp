<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
    <style>
         #h2-head{
            text-align: center;
color: red;
padding: 20px;
font-size: 30px;
font-family: Georgia;
font-weight: bold;
margin-top: -7px

        }
        #img
        {
            height: 130px;
            width: 130px;
            margin-left: 75%;
            margin-top: -30px;
            border-radius: 50%

        }

        #heading{
            color: darkblue;
            width: 30px;
            margin-top: -28px;

        }

        #h3-head
        {
            color: #000099;
        }
        h1{
color: #000099;
}

        #btn
       {
           color: white;
           background-color:steelblue;
           border: 1px solid black;
           height: 40px;
           width: 88px;
           border-radius: 5px;
           font-weight: bold;
           font-size: 16px
       }
       a: hover{
       background-color: red;
       }
       .header{
padding: 10px;
	text-align: center;
	background: #ff66ff;
	color: black;
	font-size: 20px;
	}
    </style>
</head>
<body style="background-color: #ccff33">
<div class="header">
		<marquee scrollamount="15"><h1><b>
			*********Welcome to <i>CitiusTech Food Corner</i>*********</b>
		</h1></marquee>
	</div>
    
    <h2 id ="h2-head">Welcome Customer to Food Corner</h2>
    <br>
    <div >
        <div style="float: left; width: 50%;">
        <img id = "img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROm_vTpVSMVck1AXrIMKjwbELCJmG2EOTEG2-hLs4wvhfXq7-A-D_viSK-JPtPdsc0z6s&usqp=CAU"
         alt="Family image">
        </div>
         <div style="float: right;width: 50%;">
            <br>
         <h2 id ="heading">New Customers?</h2>
        </div>
    </div>
<br> <br><br> <br><br>
<hr>
    <div style="position: relative;">
        <div style="float: left; width: 50%;">
            <h3 id = "h3-head" style="margin-left: 55%;">Do you want to Register?</h3>
        </div>
        <div style="float: left; width: 40%;">
            <br>
            <a href="CustomerRegistration">
            <button id = "btn" style="margin-left: 25%;">Register</button></a>
        </div>

    </div>

    <br><br>  <br><br>
    <div style="position: relative;">
        <div style="float: left; width: 50%;">
            <h3 id = "h3-head" style="margin-left: 55%;">Do you want to buy as Guest?</h3>
        </div>
        <div style="float: left; width: 40%;">
            <br>
            <a href="FoodCategory">
            <button id = "btn" style="margin-left: 25%;">Buy Food</button></a>
        </div>

    </div>
    <br><br><br><br>
    <hr>

</body>
</html>