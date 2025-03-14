<%@ page import =" java.util.Calendar" %>
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
		response.setIntHeader("Refresh", 5);
		Calendar cal = Calendar.getInstance();
		int i = cal.get(Calendar.AM_PM);
		String str = (i== Calendar.AM)?"AM":"PM";
	%>
	<%= Calendar.getInstance().HOUR+":" + Calendar.getInstance().MINUTE+ ":" + Calendar.getInstance().SECOND+" " + str %>
	<br>
	<a href = "response_data.jsp"> Google 홈페이지로 이동하기</a>
</body>
</html>