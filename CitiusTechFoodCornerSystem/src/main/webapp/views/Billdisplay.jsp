<%@page import="java.util.ArrayList"%>
<%@page import="com.main.pojo.Food"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
th{
font-size: 17px;
color: #660066
}
p{
text-align: center;
font-size: 30px;
font-weight: bold;
color: #000099

}
td{
text-align: center;
color: #000099
}
.header{
padding: 10px;
	text-align: center;
	background: #ff66ff;
	color: black;
	font-size: 20px;
	}
	 #h2-head{
            text-align: center;
color: red;
padding: 20px;
font-size: 30px;
font-family: Georgia;
font-weight: bold;
margin-top: -10px
}
h1{
color: #000099;
}
</style>

</head>
<body style="background-color: #ccff33">
<div class="header">
		<marquee scrollamount="15"><h1><b>
			*********Welcome to <i>CitiusTech Food Corner</i>*********</b>
		</h1></marquee>
	</div>
    <h2 id ="h2-head"><b><u>BILL FOR YOUR ORDER</u></b></h2>
 <div style="margin-left: 38%; margin-top: -28px">
 <table border="2" style="background-color: #66ff99; border: 3px solid red; height: 130px; width: 300px">
 <th>Food Name</th>
 <th>Quantity</th>
 <th>Price</th>
 
 <tr>
 <c:forEach var="foods" items="${category_name}">
					<td style="font-size: 18px; font-weight: bold"><c:out
							value="${foods}"></c:out></td>&nbsp;&nbsp;&nbsp;
							<td style="font-size: 18px; font-weight: bold" ><c:out
							value="${Quantity}"></c:out></td>&nbsp;&nbsp;&nbsp;
<td style="font-size: 18px; font-weight: bold"><c:out
							value="${priceT}" ></c:out></td>&nbsp;&nbsp;&nbsp;
							</tr>
							</c:forEach>
 
<tr>
                <td colspan="2" style="text-align: center;font-size: 17px;"><b>Total Bill</b></td>
                <td colspan="2" id="tBill" style="text-align: center; font-weight: bold;">${TotalBill}</td>
            </tr>
 </table>
 
 
 
 </div>
<p>Your Bill For Your Order = ${TotalBill}</p>
<p style="color: red"><i><u>THANK YOU FOR VISITING US</u></i></p>
        <p>Your Feedback is Important For Us.</p>
        <a href="feedbackForm" style="background-color: #003ff0; color: white; padding: 20px 30px; text-decoration: none; display: inline-block; font-size: 20px; margin-left: 45%">
        <b>Feedback</b></a>

</body>
</html>