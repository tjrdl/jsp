<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String n = request.getParameter("num");
		int j = Integer.parseInt(n);
		for(int i = 1; i<=9; i++) {
			out.print(j*i);
			out.print("<br>");
		}
	%>	
</body>
</html>