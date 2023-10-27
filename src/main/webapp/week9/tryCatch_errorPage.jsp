<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Exception</title>
</head>
<body>
    <p>0으로 나누는 연산을 하였습니다. (by Page 디렉티브)
    <p>	<%=" 숫자1 : " + request.getParameter("num1")%>
    <p>	<%=" 숫자2 : " + request.getParameter("num2")%>
</body>
</html>