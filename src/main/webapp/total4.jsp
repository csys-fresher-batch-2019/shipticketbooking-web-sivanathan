<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%int amount=(Integer)request.getAttribute("total");
//String name = (String)request.getAttribute("statement");
//Integer availableseats = (Integer) session.getAttribute("seats");
%>
<body>
<body style="background-color: Cyan;">
<form action="ordered4.jsp">
total amount:<input type="number" name="amount" value="<%=amount %>" readonly >
payment through:<br><input type="radio" name="cash">credit card
				<br><input type="radio" name="cash">net banking
				<br><input type="radio" name="cash">wallet
				
<br> <button type="submit" >conform</button>
				
</form>
</body>
<jsp:include page="logout.jsp"/>
</html>