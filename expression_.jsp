<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! Calendar cal = Calendar.getInstance(); %>
	<% out.print(cal.get(Calendar.MONTH)+1); %>
	<br>
	<% out.print("hour:"+cal.get(Calendar.HOUR)); %>
	<br>
	hour: 
	<%= cal.get(Calendar.HOUR) %>
	<br>
	<%= cal.getTime() %>
	<br>
	<%= Calendar.getInstance().getTime() %>
</body>
</html>