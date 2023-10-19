<%@ page import="java.io.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>Home > 영화 평점 결과</p>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
    <p>재미있게 본 영화 : <%=request.getParameter("movie")%></p>
    <p>평점 : <%=request.getParameter("score")%></p>
    <p>소감 : <%=request.getParameter("comment")%></p>
</body>
</html>
