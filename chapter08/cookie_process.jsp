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
		String s_id = "admin";
		String s_pw = "admin";
		
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("pw");
		
		Cookie[] cookies = request.getCookies();
		Cookie lastDate = null;
		
		if(s_id.equals(u_id) && s_pw.equals(u_pw))
		{
			lastDate = new Cookie(u_id,u_id);
    		lastDate.setMaxAge(365*24*60*60);
    		lastDate.setPath("/");
    		response.addCookie(lastDate);
    		response.sendRedirect("welcome.jsp");
    		
		}
		else {
			response.sendRedirect("cookie.jsp");
		}
		
	%>
</body>
</html>