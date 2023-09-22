<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <jsp:useBean id="person" class="com.dao.Person" scope="request">
    <jsp:setProperty name="person" property="*"/>
    아이디 :  <%System.out.println(person.getId());%>
    이름   :  <%System.out.println(person.getName());%>
  </jsp:useBean>
</body>
</html>
