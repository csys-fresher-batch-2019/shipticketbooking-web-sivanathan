<%@page import="com.project.shipticket.shipdetails.ShipDetail"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<a href="updatecontact.jsp">update contact number</a>
<center>
<body>
<p>ENTER THE CORRECT SHIP ID FOR BOOKING</p>
	<h2>shipdetails</h2>
	

<table border="1">
<thead><tr><th>S.NO</th> <th>SHIP ID</th> <th>SHIP NAME</th> <th>SOURCE PLACE</th> <th>DESTINATION PLACE</th>  <th>CLASSES</th> <th>AMOUNT</th><th>seat</th></thead>
<tbody>
<%
ArrayList<ShipDetail>list=(ArrayList<ShipDetail>)session.getAttribute("ship");

if (list != null){
	%>


<%
int i=1;

for(ShipDetail ship: list)
{%>	
	
	<tr>
	<td><%= i++ %></td>
	<td><%=ship.getShipId()%></td>
	<td><%=ship.getShipName()%></td>
	<td><%=ship.getSourcePlace()%></td>
	<td><%=ship.getDestinationPlace()%></td>
	<td><%=ship.getClasses()%></td>
    <td><%=ship.getAmount()%></td>
	<td><a href="Next?shipid=<%=ship.getShipId()%>">click</a></td>
	</tr>
	<%}%> 	
	</tbody>
</table>
<%} %>

<body style="background-color: Cyan;">


	
<!--  	
<table style="width:100%">
  <tr>
    <th>SHIP ID</th>
    <th>SHIP NAME</th> 
    <th>SOURCE PLACE</th>
    <th>DESTINATION PLACE</th>
    <th>TOTAL NO OF SEATS</th>
    <th>CLASSES</th>
    <th>AMOUNT</th>
    
  </tr>
  <tr>
    <td><a href="aaa.jsp?shipid=112233">112233</td>
    <td>aaa ship</td>
    <td>amindivi</td>
    <td>lagoons</td>
    <td>200</td>
    <td>first class</td>
    <td>5000</td>
  </tr>
  <tr>
    <td><a href="bbb.jsp?shipid=114455">114455</a></td>
    <td>bbb ship</td>
    <td>kaavaratti</td>
    <td>minicoy</td>
    <td>100</td>
    <td>vip</td>
    <td>6000</td>  </tr>
  <tr>
    <td><a href="ccc.jsp?shipid=116677">116677</td>
    <td>ccc ship</td>
    <td>corals</td>
    <td>arabiansea</td>
    <td>150</td>
    <td>second class</td>
    <td>4000</td>
  </tr>
  <tr>
    <td><a href="ddd.jsp?shipid=117788">117788</td>
    <td>ddd ship</td>
    <td>amindivi</td>
    <td>arabiansea</td>
    <td>200</td>
    <td>second class</td>
    <td>3000</td>
  </tr>
  <br>
  
</table>-->
	<br>
  <br><a href="forget.jsp">Reset Password
</a>


</body>
<jsp:include page="logout.jsp"/>
</center>
</html>