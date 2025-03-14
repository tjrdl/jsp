<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! Calendar cal = Calendar.getInstance();
		public String info() {
			int a = cal.get(Calendar.YEAR)-1;
			int b = cal.get(Calendar.MONTH)-1;
			int c = cal.get(Calendar.DATE)-3;
			return a +"-"+ b +"-"+ c;
		}
	%>
	<% out.print(info()); %>

</body>
</html>