<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h3>회원 가입</h3>
  <form action="joinForm01_process.jsp" method="post" name="member">
    <p> 아이디 : <input type="text" name="id" id="id"> <input type="button" value="아이디 중복 검사">
    <p> 비밀번호 : <input type="password" name="passwd" id="passwd">
    <p> 이름 : <input type="text" name="name" id="name">
    <p> 연락처 : <input type="text" name="phone1" id="phone1" maxlength="4" size="4">
      - <input type="text" name="phone2" id="phone2" maxlength="4" size="4"> -
      <input type="text" name="phone3" id="phone3" maxlength="4" size="4">
    <p> 성별 : <input type="radio" name="sex" value="남성" checked>남성
              <input type="radio" name="sex" value="여성">여성
    <p> 취미 : 독서<input type="checkbox" name="hobby" value="독서" checked>
      운동<input type="checkbox" name="hobby" value="운동">
      영화<input type="checkbox" name="hobby" value="영화">
    <p><textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해주세요"></textarea>
    <p><input type="submit" value="가입하기">
      <input type="reset" value="다시 쓰기">
  </form>
</body>
</html>
