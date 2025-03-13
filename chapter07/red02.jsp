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
	this is red02.jsp file <br>
	web browser background color will be red? <br>
	backgroud color will be yellow <br>
	when forward action tag start this page must not be printed <br>
	<jsp:forward page="yellow02.jsp">
		<jsp:param value="red02.jsp" name="url"/>
		<jsp:param value="Happy New Year!" name="news"/>
	</jsp:forward>
</body>
</html>