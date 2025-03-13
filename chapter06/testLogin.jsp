<%@page import="java.net.URLEncoder"%>
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
		String s_id = "hong";
		String s_pw = "1234";
		String s_name = "hong gill dong";
		
		if(s_id.equals(request.getParameter("id")) && s_pw.equals(request.getParameter("pw")))
		{
			response.sendRedirect("main.jsp?name="+URLEncoder.encode(s_name, "UTF-8"));
		}
		else {
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>