<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h3>Home > 로그인</h3>
<hr>
<h3>로그인 화면</h3>
<form id="loginForm" method="post" action="loginAction.jsp" onsubmit="return loginBlankTest()">
  <p>아이디 : <input type="text" name="id" id="id"></p>
  <p>비밀번호 : <input type="password" name="password" id="password"></p>
  <button type="submit">로그인▶▶</button>
</form>
<script>
  function loginBlankTest() {
    let idBox = document.getElementById("id");
    let pwBox = document.getElementById("password");

    if (idBox.value === "") {
      alert("아이디를 입력해주세요");
      return false; // 폼 전송을 막음
    } else if (pwBox.value === "") {
      alert("비밀번호를 입력해주세요");
      return false; // 폼 전송을 막음
    }
    return true;
  }
</script>
</body>
</html>
