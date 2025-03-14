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
	<%
		Calendar cal = Calendar.getInstance();
		out.print(cal.get(Calendar.YEAR));
		out.print(cal.get(Calendar.MONTH)+2);
		out.print(cal.get(Calendar.DATE));
	%>
</body>
</html>