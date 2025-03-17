<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Money" id="myBean"></jsp:useBean>
<jsp:setProperty property="*" name="myBean"/>
<h4>
	입력된 금액
</h4>
<%= myBean.getM() %>은
<%= myBean.process() %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>