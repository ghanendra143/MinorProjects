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
    body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;

}
        #h2-head{
            text-align: center;
color: red;
padding: 20px;
font-size: 30px;
font-family: Georgia;
font-weight: bold;
margin-top: -24px
        }
        #img
        {
            height: 90px;
            width: 110px;
            margin-left: 75%;
            margin-top: -45px;
            border-radius: 50%

        }

        #heading{
            color: darkblue;
            width: 30px;
            margin-top: -60px;
			font-family: sans-sarif;
			font-size: 38px;
        }

        #h3-head
        {
            color: steelblue;
        }
        input[type=submit]:hover {
  background-color: red;
}

        #btn
       {
           color: white;
           background-color:steelblue;
           border: 1px solid black;
           height: 32px;
           border-radius: 5px;
       }
       .formStyle{
       margin-left: 27%;
       margin-top: -10px;
       border-radius: 1px;
  padding: 20px;
  outline-style: solid;
  outline-width: 10px;
  outline-color: red;
  width: 48%;

       }
 
h1{
color: #000099;
}
.header{
padding: 10px;
	text-align: center;
	background: #ff66ff;
	color: black;
	font-size: 20px;
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
input[type=submit] {
  background-color: #008CBA;
  font-size: 18px;
  font-weight: bold;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  margin-left: 38%
}

input[type=number] {
  width: 55%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  margin-left: 72px;
  margin-bottom: 16px;
  resize: vertical;
}
label{
font-weight: bold;color: #000099;font-size: 20px;

}
    </style>
</head>
<body style="background-color: #ccff33">
<div class="header">
		<marquee scrollamount="15"><h1><b>
			*********Welcome to <i>CitiusTech Food Corner</i>*********</b>
		</h1></marquee>
	</div>
    <br>
    <h2 id ="h2-head"><u>Add New Customer</u></h2>
    <br>
    <div >
        <div style="float: left; width: 50%;">
        <img id = "img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROm_vTpVSMVck1AXrIMKjwbELCJmG2EOTEG2-hLs4wvhfXq7-A-D_viSK-JPtPdsc0z6s&usqp=CAU"
         alt="Family image">
        </div>
         <div style="float: right;width: 50%;">
            <br>
         <h2 id ="heading">New Customers</h2>
        </div>
    </div>
<br> <br><br>
<br>
<div class="formStyle">
    <form action="RegistrationSuccessfull" method="post" onsubmit="return validate()" name="myForm">
    <label for="customerName">Name Of Customer - </label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Customer_Name"><br><br>
    <label for="customerAddress">Address Of Customer - </label>
    <input type="text" name="Customer_Address"><br><br>
    <label for="customerPhone">Contact Number - </label>
    <input type="number" name="Customer_Contact"><br><br>
    
    <input type="submit" value="Register">
    
    
    
    </form>
    </div>
    
    <script type="text/javascript">
    function validate(){
    	var name = document.myForm.Customer_Name.value;
        var address = document.myForm.Customer_Address.value;
        var phone = document.myForm.Customer_Contact.value;
    	if(name == "" && address == ""){
    		alert("Please Fill all details....")
    		return false;
    	}else if(name == null || name == ""){
    		alert("Please Enter your Name...!!");
    		return false;
    	}else if(address == null || address == ""){
    		alert("Please Enter your Address...!!");
    		return false;
    	}
    }
    
    
    
    </script>

</body>
</html>