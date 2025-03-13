<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h3>
		[jsp:forward 액션 태그에 대한 예제]
	</h3>
	</center>
	<hr>
	this is red.jsp file <br>
	web browser background color will be red? <br>
	backgroud color will be yellow <br>
	when forward action tag start this page must not be printed <br>
	<jsp:forward page="yellow.jsp"></jsp:forward>
</body>
</html>