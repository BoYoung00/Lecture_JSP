<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Exception </title>
</head>

<body>
	<%
		request.setCharacterEncoding("utf-8");
		String n1 = request.getParameter("num1");
		String n2 = request.getParameter("num2");
		int num1 = Integer.parseInt(n1);
		int num2 = Integer.parseInt(n2);
	%>
	<p> 덧셈결과 : <%=num1%> / <%=num2%> = <%=num1/num2 %>
</body>
</html>