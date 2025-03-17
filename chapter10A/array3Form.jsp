<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Array3"  id="myBean"></jsp:useBean>
<jsp:setProperty property="*" name="myBean"/>
입력된 정수의 갯수 <%= myBean.getNum() %> <br>
<%= myBean.process() %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>