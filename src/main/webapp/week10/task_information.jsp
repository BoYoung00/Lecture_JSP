<%@ page import="java.util.Enumeration" %><%--
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
    String name;
    String value;

    Enumeration en = session.getAttributeNames();
    int i = 0;

    while (en.hasMoreElements()) {
        i++;
        name = en.nextElement().toString();
        value = session.getAttribute(name).toString();
        out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
        out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
    }

%>
</body>
</html>
