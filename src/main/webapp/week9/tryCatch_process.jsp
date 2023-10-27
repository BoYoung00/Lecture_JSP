<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="tryCatch_errorPage.jsp" %>
<html>
<head>
<title>Exception</title>
</head>
<body>	   
<%
	try {
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
		int c = a / b;
		out.print (num1 + "/" + num2 + "=" + c);
	} catch (NumberFormatException e) {
		RequestDispatcher dis = request.getRequestDispatcher("tryCatch_error.jsp");
		dis.forward(request, response);
	} catch (ArithmeticException e) {
		RequestDispatcher dis = request.getRequestDispatcher("tryCatch_error2.jsp");
		dis.forward(request, response);
	}
	
%>
</body>
</html>