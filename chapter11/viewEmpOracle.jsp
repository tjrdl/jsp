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
	String sql = "select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="700" border="1">
		<tr>
			<td>사원번호</td>
			<td>사원명</td>
			<td>직급</td>
			<td>상관번호</td>
			<td>입사일자</td>
			<td>급여</td>
			<td>커미션</td>
			<td>부서번호</td>
		</tr>
		<%
		try {
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
			<td><%=rs.getInt("empno")%></td>
			<td><%=rs.getString("ename")%></td>
			<td><%=rs.getString("job")%></td>
			<td><%=rs.getInt("mgr")%></td>
			<td><%=rs.getDate("hiredate")%></td>
			<td><%=rs.getInt("sal")%></td>
			<td><%=rs.getInt("comm")%></td>
			<td><%=rs.getInt("deptno")%></td>
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