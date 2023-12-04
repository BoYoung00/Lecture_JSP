<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String adminID = "space";
    String id = (String) session.getAttribute("id");

    if (id.equals(adminID)){
  %>
    <h3>Home > 관리자 로그인</h3>
    <p>새로운 세션 생성 성공!</p>
    <p>관리자 [<%=id%>] 님이 입장하셨습니다.<p/>
    <button onclick="location.href=`membersList.jsp`"> ◀ 등록 회원 관리하기</button>
    <button onclick="location.href=`logout.jsp`"> 로그 아웃 ▶</button>
  <%
    }else {
      out.println("ADMIN 계정으로만 접속할수 있습니다.");
      out.println("<script>window.location.href='login.jsp';</script>");
    }
  %>
</body>
</html>
