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
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "tjr";
	String password = "1234";
	//String sql = "select column_name, data_type, data_length, nullable from user_tab_columns where table_name = ";%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="700" border="1">
		<tr>
			<td>컬럼명</td>
			<td>컬럼형식</td>
			<td>컬럼길이</td>
			<td>널값여부</td>
		</tr>
		<%
		try {
			String str = request.getParameter("table");
			String sql = "select column_name, data_type, data_length, nullable from user_tab_columns where table_name = " + "'"
			+ str + "'";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//연결
			conn = DriverManager.getConnection(url, user, password);
			//쿼리
			stmt = conn.createStatement();
			//결과
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("column_name")%></td>
			<td><%=rs.getString("data_type")%></td>
			<td><%=rs.getString("data_length")%></td>
			<td><%=rs.getString("nullable")%></td>

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