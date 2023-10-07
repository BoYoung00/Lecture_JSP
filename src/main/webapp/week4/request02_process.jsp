<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");
    String userid = request.getParameter("id");
    String passweord = request.getParameter("passwd");
  %>

  <p> 아이디 : <%=userid%></p>
  <p> 비밀번호 : <%=passweord%></p>

</body>
</html>
