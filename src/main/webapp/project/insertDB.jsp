<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="dbConn.jsp"></jsp:include>
<%
        request.setCharacterEncoding("UTF-8");

        Connection connection = (Connection) session.getAttribute("dbConnection");

        String user_name = request.getParameter("userName");
        String user_pwd = request.getParameter("userPassword");
        String user_email = request.getParameter("userEmail");

        try {
                String sql = "INSERT INTO users (username, password, email, join_date) VALUES (?, ?, ?, ?)";

                PreparedStatement pstmt = connection.prepareStatement(sql);

                pstmt.setString(1, user_name);
                pstmt.setString(2, user_pwd);
                pstmt.setString(3, user_email);
                pstmt.setTimestamp(4, new java.sql.Timestamp(new java.util.Date().getTime()));
                int result = pstmt.executeUpdate();

                if (result > 0) {
                        response.sendRedirect("signUpSuccess.jsp");
                } else {
                        out.println("회원 등록 실패");
                }

        } catch (SQLException e) {
                throw new RuntimeException(e);
        }
%>
</body>
</html>
