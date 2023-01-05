<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 5px solid #0000cc;
	background-color: red;
	margin-top: -15px
}
.tab2{
overflow: hidden;
	border: 4px double #ff0066;
	background-color: #cc66ff;
	margin-top: 15px
}


/* Style the buttons inside the tab */
.tab button {
	background-color: #00ff00;
	float: center;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Style the buttons inside the tab2 */
.tab2 button {
	background-color: #ffff00;
	float: center;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 15;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #0000ff;
	color: white
}

/* Change background color of buttons on hover for tab2 */
.tab2 button:hover {
	background-color: #003300;
	color: white
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #cccc00;
	color: white
}

/* Create an active/current tablink class for tab2 */
.tab2 button.active {
	background-color: #0066ff;
	color: white
}
/* Style the tab content */
.tabcontent {
	display: none;
	padding: 10px 15px;
	border: 4px solid blue;
	border-top: none;
}
.tabBuyForDinnerItems{
display: none;
	padding: 10px 15px;
	border: 5px solid #ff3399;
	
	
}
.tabBuyForLunchItems{
display: none;
	padding: 6px 12px;
	border: 5px solid #ff3399;
	
}
.tabBuyForBreakfastItems{
display: none;
	padding: 6px 12px;
	border: 5px solid #ff3399;
	
}
.header{
padding: 10px;
	text-align: center;
	background: #ff66ff;
	color: black;
	font-size: 20px;
	}
	h1{
color: #000099;
}
h2{
text-align: center;
color: red;
padding: 20px;
font-size: 30px;
font-family: Georgia;
font-weight: bold;
margin-top: -10px

}
#btn2{
margin-left: 36%;
}
#btn3{
float: right
}
#btnForLunch{
margin-left: 26%;
}
#btnForDinner{
float: right;}
td,tr{
text-align: center;
}
label{
margin-left: 30%;
color: #000099;
font-weight: bold;
font-family: Verdana;
font-size: 17px
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
  margin-left: 42%
}
     input[type=submit]:hover {
  background-color: red;
}
#categoryID{
height: 100px;
width: 150px;
border: 3px double red;
border-radius: 6px;
}
option{
font-weight: bold;
font-size: 14px;
color: blue
}

input[type=number] {
  width: 13%;
  padding: 12px;
  border: 1px solid blue;
  border-radius: 4px;
  border-width: 3px;
  box-sizing: border-box;
  resize: vertical;
  margin-left: 10px
}
</style>
</head>
<body style="background-color: #ccff33">
<div class="header">
		<marquee scrollamount="15"><h1><b>
			*********Welcome to <i>CitiusTech Food Corner</i>*********</b>
		</h1></marquee>
	</div>

	<h2>Order the Food from Category - </h2>

	<div class="tab">
		<button class="tablinks" onclick="openTab(event, 'Breakfast')"><b>Breakfast</b></button>
		<button class="tablinks" id = "btn2" onclick="openTab(event, 'Lunch')"><b>Lunch</b></button>
		<button class="tablinks" id = "btn3" onclick="openTab(event, 'Dinner')"><b>Dinner</b></button>
	</div>
	<div class="tab2">
	<button class="ButtonTabs2" onclick="openForum2(event,'BUYBreakFastFood')"><b>BUY BREAKFAST FOODS</b></button>
	<button class="ButtonTabs1" id = "btnForLunch" onclick="openForum1(event,'BUYLunchFood')"><b>BUY LUNCH FOODS</b></button>
	<button class="ButtonTabs" id = "btnForDinner" onclick="openForum(event,'BUYDinnerFood')"><b>BUY DINNER FOODS</b></button>
	</div>
	
	
	<div id="BUYDinnerFood" class="tabBuyForDinnerItems">
	<form action="FoodBillCalculation" method="post" name="FormForDinnerOrder" onsubmit="return validateDinnerForm()">
	<label for="selectFood">Select your Food Category : - &nbsp;</label>
	<select name="category" id = "categoryID"multiple>
	<c:forEach items="${Dinner_food_list}" var="dCat">
	<option value="${dCat.food_name}">${dCat.food_name}</option>
	</c:forEach>
	
	</select><br><br>
	<label for="Qty">Enter your Quantity : - </label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="number" name="Qty"><br><br>
	<label for="Price">Enter the Respective Price : - </label>
	<input type="number" name="price"><br><br>
	<input type="submit" value="ORDER">
			<!-- style="padding: 10px 25px; background-color: #800000; border: 5px; color: white; display: inline-block; font-size: 16px; margin: 4px 2px"> -->
			
		
		</form>
	
	</div>
	
	 <div id="BUYLunchFood" class="tabBuyForLunchItems">
		<form action="FoodBillCalculation" method="post" name="FormForLunchOrder" onsubmit="return validateLunchForm()">
	<label for="selectFood">Select your Food Category : - &nbsp;</label>
	<select name="category" id = "categoryID" multiple>
	<c:forEach items="${Lunch_food_list}" var="lCat">
	<option value="${lCat.food_name}">${lCat.food_name}</option>
	</c:forEach>
	
	</select><br><br>
	<label for="Qty">Enter your Quantity : - </label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="number" name="Qty"><br><br>
	<label for="Price">Enter the Respective Price : - </label>
	<input type="number" name="price"><br><br>
	<input type="submit" value="ORDER">
			<!-- style="padding: 10px 25px; background-color: #800000; border: 5px; color: white; display: inline-block; font-size: 16px; margin: 4px 2px"> -->
			
		
		</form>

	</div>
	
	<div id="BUYBreakFastFood" class="tabBuyForBreakfastItems">
		<form action="FoodBillCalculation" method="post" name="FormForBreakfastOrder" onsubmit="return validateBreakfastForm()">
	<label for="selectFood">Select your Food Category : - &nbsp;</label>
	<select name="category" id = "categoryID" multiple>
	<c:forEach items="${Breakfast_food_list}" var="bCat">
	<option value="${bCat.food_name}">${bCat.food_name}</option>
	</c:forEach>
	
	</select><br><br>
	<label for="Qty">Enter your Quantity : - </label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="number" name="Qty"><br><br>
	<label for="Price">Enter the Respective Price : - </label>
	<input type="number" name="price"><br><br>
	<input type="submit" value="ORDER">
			<!-- style="padding: 10px 25px; background-color: #800000; border: 5px; color: white; display: inline-block; font-size: 16px; margin: 4px 2px"> -->
			
		
		</form>

	</div>
	
	

	<div id="Breakfast" class="tabcontent">
		<table border="1" style="border-color: red; margin-left: 30%; border: 7px double red">
			<tr style="color: #800000; font-weight: bold">
				<td>Food Name</td>
				<td>Food Price</td>
				<td>Food Description</td>
			</tr>
			<tr>
				<d:forEach var="Bfood" items="${Breakfast_food_list}">
					<td style="color: black; font-size: 18px; font-weight: bold"><e:out
							value="${Bfood.food_name}"></e:out></td>&nbsp;&nbsp;&nbsp;
		<td style="color: black; font-size: 18px; font-weight: bold"><e:out
							value="${Bfood.food_price}"></e:out></td>&nbsp;&nbsp;&nbsp;
		<td style="color: black; font-size: 18px; font-weight: bold"><e:out
							value="${Bfood.food_desc}"></e:out></td>&nbsp;&nbsp;&nbsp;
   </tr>
   </d:forEach>
<hr>
			
		</table>
	</div>

	<div id="Lunch" class="tabcontent">
		<table border="1" style="border-color: red; margin-left: 30%; border: 7px double red">
			<tr style="color: #800000; font-weight: bold">
				<td>Food Name</td>
				<td>Food Price</td>
				<td>Food Description</td>
			</tr>
			<tr>
				<d:forEach var="Lfood" items="${Lunch_food_list}">
					<td style="color: black; font-size: 18px; font-weight: bold"><d:out
							value="${Lfood.food_name}"></d:out></td>&nbsp;&nbsp;&nbsp;
		<td style="color: black; font-size: 18px; font-weight: bold"><d:out
							value="${Lfood.food_price}"></d:out></td>&nbsp;&nbsp;&nbsp;
		<td style="color: black; font-size: 18px; font-weight: bold"><d:out
							value="${Lfood.food_desc}"></d:out></td>&nbsp;&nbsp;&nbsp;
   </tr>
   </d:forEach>
<hr>
			
		</table>
	</div>
	
	
	<div id="Dinner" class="tabcontent">
		<table border="1" style="border-color: red;margin-left: 25%; border: 7px double red">
			<tr style="color: #800000; font-weight: bold; text-align: center">
				<td>Food Name</td>
				<td>Food Price</td>
				<td>Food Description</td>
				
			</tr>
			<tr>
				<c:forEach var="foods" items="${Dinner_food_list}">
					<td style="color: black; font-size: 18px; font-weight: bold"><c:out
							value="${foods.food_name}"></c:out></td>&nbsp;&nbsp;&nbsp;
		<td style="color: black; font-size: 18px; font-weight: bold"><c:out
							value="${foods.food_price}"></c:out></td>&nbsp;&nbsp;&nbsp;
		<td style="color: black; font-size: 18px; font-weight: bold" ><c:out
							value="${foods.food_desc}"></c:out></td>&nbsp;&nbsp;&nbsp;
		
		
			</tr>
			
			
			</c:forEach>
			<hr>
	</div>
	
			

	<script>
		function openTab(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}
		
		function openForum(evt, press){
			var i, tabBuy, ButtonTabs;
			tabBuy = document.getElementsByClassName("tabBuyForDinnerItems");
			for (i = 0; i < tabBuy.length; i++) {
				tabBuy[i].style.display = "none";
			}
			ButtonTabs = document.getElementsByClassName("ButtonTabs");
			for (i = 0; i < ButtonTabs.length; i++) {
				ButtonTabs[i].className = ButtonTabs[i].className.replace(
						" active", "");
			}
			document.getElementById(press).style.display = "block";
			evt.currentTarget.className += " active";
		}
		
		 function openForum1(evt, press){
			var i, tabBuy1, ButtonTabs1;
			tabBuy1 = document.getElementsByClassName("tabBuyForLunchItems");
			for (i = 0; i < tabBuy1.length; i++) {
				tabBuy1[i].style.display = "none";
			}
			ButtonTabs1 = document.getElementsByClassName("ButtonTabs1");
			for (i = 0; i < ButtonTabs1.length; i++) {
				ButtonTabs1[i].className = ButtonTabs1[i].className.replace(
						" active", "");
			}
			document.getElementById(press).style.display = "block";
			evt.currentTarget.className += " active";
		} 
		 
		 function openForum2(evt, press){
				var i, tabBuy2, ButtonTabs2;
				tabBuy2 = document.getElementsByClassName("tabBuyForBreakfastItems");
				for (i = 0; i < tabBuy2.length; i++) {
					tabBuy2[i].style.display = "none";
				}
				ButtonTabs2 = document.getElementsByClassName("ButtonTabs2");
				for (i = 0; i < ButtonTabs2.length; i++) {
					ButtonTabs2[i].className = ButtonTabs2[i].className.replace(
							" active", "");
				}
				document.getElementById(press).style.display = "block";
				evt.currentTarget.className += " active";
			} 
		
		function validateDinnerForm() {
			let x = document.forms["FormForDinnerOrder"]
			var price = document.FormForDinnerOrder.price.value;
			var quantity = document.FormForDinnerOrder.Qty.value;
			if (price == 0 &&  quantity== 0) {
				alert("Please Fill the Fields....");
				return false;
			} else if (price == 0 ||  quantity== 0) {
				alert("Please Fill all fields....");
				return false;
			}
		}
			
		function validateLunchForm() {
				let x = document.forms["FormForLunchOrder"]
				var price = document.FormForLunchOrder.price.value;
				var quantity = document.FormForLunchOrder.Qty.value;
				if (price == 0 &&  quantity== 0) {
					alert("Please Fill the Fields....");
					return false;
				} else if (price == 0 ||  quantity== 0) {
					alert("Please Fill all fields....");
					return false;
				} else{
					return true;
				}

		} 
		
		function validateBreakfastForm() {
			let x = document.forms["FormForBreakfastOrder"]
			var price = document.FormForBreakfastOrder.price.value;
			var quantity = document.FormForBreakfastOrder.Qty.value;
			if (price == 0 &&  quantity== 0) {
				alert("Please Fill the Fields....");
				return false;
			} else if (price == 0 ||  quantity== 0) {
				alert("Please Fill all fields....");
				return false;
			} else{
				return true;
			}

	}
	</script>



</body>
</html>
