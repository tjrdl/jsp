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
	<% 
	 	Cookie[] cookies = request.getCookies();
		
	 	for(int i = 2; i<cookies.length; i++) {
		out.print(cookies[i].getName()+"님 반갑습니다");
		}
	 %>
		<a href="cookie_out.jsp">로그아웃</a>
		
</body>
</html>