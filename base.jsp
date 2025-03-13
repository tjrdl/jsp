<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String name = "hong gill dong";
		int a = 1;
	%>
	<% String addr="Seoul SongPaGu SuckCheonDong"; 
		int b = 2;	
	%>
	<br>
	<%-- 두가지 종류의 출력 --%>
	이름:
	<%= name %>
	<br>
	주소:
	<% out.print(addr);%>
	<br>
	<%= a+b %>
	<br>
	<jsp:include page="age.jsp"></jsp:include>
</body>
</html>