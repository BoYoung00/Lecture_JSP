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

  <p>JAVA Server Page</p>
</body>
</html>
