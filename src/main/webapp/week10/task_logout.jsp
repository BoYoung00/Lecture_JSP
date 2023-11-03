<%--
  Created by IntelliJ IDEA.
  User: qhdud
  Date: 2023-11-03
  Time: 오전 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        long lastTime = session.getLastAccessedTime();
        long startTime = session.getCreationTime();
        long userTime = (lastTime - startTime) / 60000;

        // 모든 섹션 삭제
        session.invalidate();
    %>
    <p>로그인 접속 시간 : <%=userTime%>분</p>
    <p>로그아웃 하셨습니다.</p>
</body>
</html>
