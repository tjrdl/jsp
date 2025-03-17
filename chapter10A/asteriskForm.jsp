<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Asterisk"  id= "myBean"></jsp:useBean>
<jsp:setProperty property="*" name="myBean"/>
<h4>입력된 정수</h4>
<%= myBean.getNum() %>는
<br>
<% for(int i = myBean.getNum(); i>0; i--) {
	for(int j = i; j>0; j--) {
		out.print(myBean.process());
	}
	out.print("<br>");
}
	%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>