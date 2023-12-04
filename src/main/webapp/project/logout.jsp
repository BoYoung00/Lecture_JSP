<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session = request.getSession();
    //세션을 가지고오고
    session.invalidate();
    //세션 지우기
%>
    <h3>Home > 로그아웃</h3>
    <hr>
    <p>세션 종료 후 로그아웃을 수행하였습니다.</p>
    <p>그동안 수고 많으셨습니다.</p>
    <button onclick="location.href=`main.jsp`">메인 화면으로 이동 ▶</button>
</body>
</html>
