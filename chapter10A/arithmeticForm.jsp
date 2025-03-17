<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Arithmetic" id="myBean"></jsp:useBean>
<jsp:setProperty property="*" name="myBean"/>
<jsp:getProperty property="operator" name="myBean"/>
<br>
<%= myBean.process() %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>