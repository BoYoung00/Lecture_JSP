<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html; charset=utf-8"%>


<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<%
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/database0614"
					+ "?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false", "root", "rlaqhdud2@");
			out.println(">> 연결 성공 : " + conn);
		} catch (ClassNotFoundException e) {
			out.println(">> 연결 실패 : 드라이버 복사 필요!");
		} catch (SQLException ex) {
			out.println(">> 연결 실패 : SQL 명령문 확인 필요!");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				;
			}
		}
	%>
</body>
</html>