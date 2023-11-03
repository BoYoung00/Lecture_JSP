<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session</title>
</head>
<body>
  <%
    String user_id = (String) session.getAttribute("userID");
    String user_pw = (String) session.getAttribute("userPW");

    out.print("설정된 세션의 속성 값[1] : " + user_id + "<br>");
    out.print("설정된 세션의 속성 값[2] : " + user_pw);

  %>
</body>
</html>
