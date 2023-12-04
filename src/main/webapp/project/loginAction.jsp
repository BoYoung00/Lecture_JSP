<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%
  String adminID = "space";
  String adminPassword = "123456";

  String loginID = request.getParameter("id");
  String loginPassword = request.getParameter("password");

  if (loginID.equals(adminID) && loginPassword.equals(adminPassword)){
    session.setAttribute("id",adminID);
    session.setAttribute("password",adminPassword);

    out.println("<script>window.location.href='loginSuccess.jsp';</script>");
%>

<%
  }
  else {
    //loginErr.jsp 페이지로 이동
    out.println("<script>window.location.href='loginErr.jsp';</script>");
  }
%>

</body>
</html>
