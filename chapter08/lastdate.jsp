<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Cookie lastDate = null;
    	String msg = "";
    	boolean found = false;
    	String newValue = ""+System.currentTimeMillis(); // 현재 시간 정보를 위한 값
    	Cookie[] cookies = request.getCookies();
    	
    	if(cookies != null) {
    		out.print("@# cookies.length => "+cookies.length );
    	
    	for(int i = 0; i<cookies.length; i++) {
    		lastDate = cookies[i];
    		if(lastDate.getName().equals("lastDateCookie")) {
    			found = true;
    			break;
    		}
    		
    	}
    	if(!found){
    		msg="처음 방문입니다...";
    		lastDate = new Cookie("lastDateCookie",newValue);
    		lastDate.setMaxAge(365*24*60*60);
    		lastDate.setPath("/");
    		response.addCookie(lastDate);
    	}
    	else {
    		//String conv = lastDate.getValue();
    		long conv = Long.parseLong(lastDate.getValue());
    		msg="당신의 마지막 방문 :" + new Date(conv);
    		lastDate.setValue(newValue);
    		response.addCookie(lastDate);
    	}
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%= msg %></h2>
</body>
</html>