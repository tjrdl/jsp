<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.lang.Math"%>
	<%! Date date = new Date(); %>
	<%= "현재날짜: "+date %>
	<br>
	<%= "5의제곱: "+Math.pow(5,2) %>
	
</body>
</html>