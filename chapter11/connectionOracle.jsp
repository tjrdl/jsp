<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		try{ 
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "tjr";
			String password ="1234";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,user,password);
			out.print("데이터 베이스 연결 성공");
		}
		catch(SQLException ex) {
			out.print("데이터 베이스 연결 실패.");
			out.print(ex.getMessage());
		}
		finally{
			// 객체에 연결 정보가 있으면 종료
			if(conn != null) {
				conn.close();
			}
		}
	%>
</body>
</html>