<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="dbConn.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%

    class UserDTO {
        private Long userId;
        private String username;
        private String email;
        private Date date;

        public UserDTO() {
        }

        public UserDTO(Long userId, String username, String email, Date joinDate) {
            this.userId = userId;
            this.username = username;
            this.email = email;
            this.date = joinDate;
        }

        public Long getUserId() {
            return userId;
        }

        public String getUsername() {
            return username;
        }

        public String getEmail() {
            return email;
        }

        public Date getDate() {
            return date;
        }
    }
%>


<%
    request.setCharacterEncoding("UTF-8");

    List<UserDTO> userDTOS = new ArrayList<>();

    try {
        Connection connection = (Connection) session.getAttribute("dbConnection");

        String sqlQuery = "SELECT user_id, username, email, join_date FROM users";

        PreparedStatement pstmt = connection.prepareStatement(sqlQuery);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            Long id = rs.getLong("user_id");
            String name = rs.getString("username");
            String email = rs.getString("email");
            Timestamp joinDateTimestamp = rs.getTimestamp("join_date");
            Date joinDate = new Date(joinDateTimestamp.getTime());

            UserDTO userDTO = new UserDTO(id, name, email, joinDate);

            userDTOS.add(userDTO);
        }
%>
    <h3>Home > 등록 회원 관리</h3>
    <hr>
    <%
        for (UserDTO user : userDTOS) {
    %>

    <p><%= user.getUserId() %> : <%= user.getUsername() %> / <%= user.getEmail() %> / <%= user.getDate() %> </p>

    <%
        }
    %>
    <hr>
    <button onclick="location.href=`withDraw.jsp`"> ◀ 회원탈퇴시키기</button>
    <button onclick="location.href=`logout.jsp`"> 로그 아웃 ▶</button>
<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>
