<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.net.URLEncoder"%>
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
//	String sql = "select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<%
		String id="", pw="", name="", vclass="",phone1="",phone2="",phone3="";
		
		id= request.getParameter("id");
		pw= request.getParameter("pw");
		name= request.getParameter("name");
		vclass= request.getParameter("mclass");
		phone1= request.getParameter("phone1");
		phone2= request.getParameter("phone2");
		phone3= request.getParameter("phone3");
		//PreparedStatement pstmt = null;
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			//연결
			conn = DriverManager.getConnection(url, user, password);
			//쿼리
			stmt = conn.createStatement();
			//결과
			//rs = stmt.executeQuery(sql);
			
			// insert 쿼리 조립
			StringBuffer insertQuery = new StringBuffer();
			insertQuery.append("insert into member2 values('");
			insertQuery.append(id+"','");
			insertQuery.append(pw+"','");
			insertQuery.append(name+"','");
			insertQuery.append(vclass+"','");
			insertQuery.append(phone1+"-");
			insertQuery.append(phone2+"-");
			insertQuery.append(phone3+"')");

			//조립된 쿼리 확인문
			out.print(insertQuery);
			// executeUpdate: insert 할 때 사용된다
			int re = stmt.executeUpdate(insertQuery.toString());
			
// 			String insertSQL = "INSERT INTO member2 (id, pw, name, vclass, phone) VALUES (?, ?, ?, ?, ?)";
// 		    pstmt = conn.prepareStatement(insertSQL);
// 		    pstmt.setString(1, id);
// 		    pstmt.setString(2, pw);
// 		    pstmt.setString(3, name);
// 		    pstmt.setString(4, vclass);
// 		    pstmt.setString(5, phone1 + "-" + phone2 + "-" + phone3);
			
			if(re== 1) {
				%> 
					추가 성공
					<br>
					<a href="addFormOracle.html">추가작업</a>
					<a href="viewMemberOracle.jsp">조회작업</a>
				<%
			} else {
				%>
					추가 실패
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
</body>
</html>