<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h3>이 파일은 first.jsp입니다.</h3>
  <jsp:include page="include_second.jsp">
      <jsp:param name="date" value="<%= new java.util.Date()%>"/>
  </jsp:include>

<%--  <jsp:forward page="include_second.jsp">--%>
<%--    <jsp:param name="date" value="<%= new java.util.Date()%>"/>--%>
<%--  </jsp:forward>--%>

  - Forward : URL1에서 URL2로 전달할 경우 제어권이 URL2로 넘어가게되고
  따라서 URL1에서 처리한 결과화면이 클라이언트에게 보여지지 않고 URL2의 결과만
  뿌려지게 된다.

  - Include : URL1에서 URL2로 전달하고 제어권은 다시 URL1으로 돌아오게 된다.
  따라서 URL2의 화면이 URL1에 포함돼서 보여지게 된다.

  <p>JAVA Server Page</p>
</body>
</html>
