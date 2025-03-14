<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//testCookie => 쿠키 이름, FirstCookie => 쿠키값
    	Cookie info = new Cookie("testCookie","FirstCookie");
    	// 쿠키속성 설정
    	info.setMaxAge(365*24*60*60);
    	info.setPath("/");
    	// 3단계 쿠키 추가
    	response.addCookie(info);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키를 처음 설정하는 중..</h2>
</body>
</html>