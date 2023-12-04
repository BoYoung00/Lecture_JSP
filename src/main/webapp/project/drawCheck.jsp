<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="dbConn.jsp"></jsp:include>

<%
    request.setCharacterEncoding("UTF-8");

    Connection connection = (Connection) session.getAttribute("dbConnection");

    String user_id = (String) request.getParameter("userId");

    String sql = "delete from users where username=?";
    try {
        PreparedStatement pstmt = connection.prepareStatement(sql);
        pstmt.setString(1, user_id);

        int result = pstmt.executeUpdate();

        if (result > 0) {
            response.sendRedirect("drawSuccess.jsp");
        } else {
            response.sendRedirect("drawErr.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

