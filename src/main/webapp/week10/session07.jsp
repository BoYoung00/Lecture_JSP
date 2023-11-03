<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h4>--- 세션 유효 시간 변경 전 ---</h4>
  <%
    int time = session.getMaxInactiveInterval() / 60;

    out.print("세션 유효 시간 : " + time + "분<br>");
  %>
  <h4>--- 세션 유효 시간 변경 후 ---</h4>

  <%
      session.setMaxInactiveInterval(10);
      time = session.getMaxInactiveInterval();

      out.print("세션 유효 시간 : " + time + "초<br>");

//      session.setMaxInactiveInterval(60 * 60);
//      time = session.getMaxInactiveInterval() / 60;
//
//      out.print("세션 유효 시간 : " + time + "분<br>");
  %>
</body>
</html>
