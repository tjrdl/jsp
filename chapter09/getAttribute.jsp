<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h3>
	[세션 값을 얻어오는 예제]
	</h3>
	</center>
	<hr>얻어온 세션값은 다음과 같습니다.
	<hr>
	
		<%
// 		Object obj_getdata = session.getAttribute("Testing");
// 		String str_getdata = (String)obj_getdata;
		
// 		// auto unboxing
// 		int int_primitive = (Integer)session.getAttribute("Mydata");
		// "Testing" 키의 세션 값 가져오기
		Object obj_getdata = session.getAttribute("Testing");
		String str_getdata = (obj_getdata != null) ? obj_getdata.toString() : "값이 설정되지 않음";
		
		// "MyData" 키의 세션 값 가져오기 (Integer 확인 후 변환)
		Object obj_myData = session.getAttribute("MyData");
		int int_primitive = (obj_myData instanceof Integer) ? (Integer) obj_myData : 0;
		
		out.print("설정된 세션값[1] => " + str_getdata + "<br><br>");
		out.print("설정된 세션값[2] => " + int_primitive + "<br><br>");
		%>
		out.print("설정된 세션값[1]=> "+str_getdata+"<br><br>");
		out.print("설정된 세션값[2]=> "+int_primitive+"<br><br>");
</body>
</html>