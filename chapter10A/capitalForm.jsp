<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Capital"  id="myBean"></jsp:useBean>
<jsp:setProperty property="*" name="myBean"/>

<%= myBean.process() %>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>