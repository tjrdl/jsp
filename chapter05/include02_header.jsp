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
		int pageCount = 0;
		void addCount() {
			pageCount++;
		}%>
	<% addCount(); %>
	<%= pageCount %>
	<p>이 사이트의 방문은 <%= pageCount %> </p>
</body>
</html>