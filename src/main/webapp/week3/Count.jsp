<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%! int count1 = 0; %>
  Hello~
  <% int count2 = 0; %>
  <%
    System.out.println(++count1);
    System.out.println(++count2);
  %>
  <%= count1%>
  <%= count2%>

</body>
</html>
