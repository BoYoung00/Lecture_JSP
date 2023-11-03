<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <title>Session</title>
</head>
<body>
<%
    String user_id = request.getParameter("id");
    String user_pw = request.getParameter("passwd");

    if (user_id.equals("admin") && user_pw.equals("1234")) {
        session.setAttribute("userID", user_id);
        session.setAttribute("userPW", user_pw);
        out.print("로그인에 성공했습니다. <br>");
        out.print(user_id + "님 환영합니다.");
        out.print("<p> <input type='button' value='Logout' onclick=\"location = 'task_logout.jsp'\">");
        out.print("<p> <input type='button' value='내 정보 보러가기' onclick=\"location = 'task_information.jsp'\">");
    } else {
        out.print("로그인에 실패했습니다.");
        out.print("<p> <input type='button' value='로그인하기' onclick=\"location = 'task_login_form.jsp'\">");
    }
%>
</body>
</html>