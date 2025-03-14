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

	
	for(int i = 0; i<cookies.length; i++) {
		out.print(i+"번째 쿠키의 이름->"+cookies[i].getName()+" 삭제<br>");
		cookies[i].setMaxAge(0);
		cookies[i].setPath("/");
		response.addCookie(cookies[i]);
		
	}
%>
</body>
</html>