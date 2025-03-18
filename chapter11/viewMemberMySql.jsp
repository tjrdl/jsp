<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String password = "1234";
	String sql = "select id,pw,name,class,tel from member";%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td>id</td>
			<td>name</td>
			<td>class</td>
			<td>tel</td>
		</tr>
		<%
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			//연결
			conn = DriverManager.getConnection(url, user, password);
			//쿼리
			stmt = conn.createStatement();
			//결과
			rs = stmt.executeQuery(sql);


			while (rs.next()) {

		%>
		<tr>
			<td><%=rs.getString("id")%></td>
			<td><%=rs.getString("name")%></td>

			<td>
				<%=
// 				int n_class = rs.getInt("class");
// 				if (n_class == 1) {
// 					out.print("일반회원");
// 				} else {
// 					out.print("교수님");
// 				}
				rs.getInt("class")
				%>
			</td>

			<td><%=rs.getString("tel")%></td>
		</tr>
		<%
		}


		out.print("데이터 베이스 연결 성공");
		} catch (SQLException ex) {
		out.print("데이터 베이스 연결 실패.");
		out.print(ex.getMessage());
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		} catch (SQLException ex) {
		ex.printStackTrace();
		}
		}
		%>
	</table>
</body>
</html>