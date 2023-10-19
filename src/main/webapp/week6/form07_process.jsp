<%@ page import="java.io.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>요청 파라미터 이름</th>
        <th>요청 파라미터 값</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");

        Enumeration paramNames = request.getParameterNames();
        while (paramNames.hasMoreElements()) {
            String name = (String) paramNames.nextElement();
            out.println("<tr><td>" + name + "</td>\n");
            String paramValue = request.getParameter(name);
            out.println("<td>" + paramValue + "</td></tr>\n");
        }
    %>
</table>
</body>
</html>
