<%@page import ="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>refresh 5sec</p>
	<%
		response.setIntHeader("Refresh", 5);
	%>
	<p><%= new Date() %></p>
</body>
</html>