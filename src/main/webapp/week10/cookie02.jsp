<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    Cookie[] cookies = request.getCookies();
    out.print("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
    out.print("=================================<br>");
    for (int i = 0; i < cookies.length; i++) {
      out.print("설정된 쿠키의 속성 이름 ["+ i + "] :" + cookies[i].getName() + "<br>");
      out.print("설정된 쿠키의 속성 값 ["+ i + "] :" + cookies[i].getValue() + "<br>");
      out.print("--------------------------------<br>");
    }
  %>
</body>
</html>
