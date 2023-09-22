<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <jsp:useBean id="person" class="com.dao.Person" scope="request" />
  <p> 아이디 : <jsp:getProperty name="person" property="id"/></p>
  <p> 이름 : <jsp:getProperty name="person" property="name"/></p>

</body>
</html>
