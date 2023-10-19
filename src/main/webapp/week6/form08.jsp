<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h3>Home > 영화 감상 후 평점</h3>
<hr>
<form action="form08_process.jsp" method="post" name="member">
  <fieldset style="width: 360px">
    <legend>영화 평점</legend>
    <p> 재미있게 본 영화 : <input type="text" name="movie" width="100%">
    <p> 평점 :
    <p><input type="radio" name="score" value="★★★★★" checked>★★★★★ <br>
      <input type="radio" name="score" value="★★★★☆">★★★★☆ <br>
      <input type="radio" name="score" value="★★★☆☆">★★★☆☆ <br>
      <input type="radio" name="score" value="★★☆☆☆">★★☆☆☆ <br>
      <input type="radio" name="score" value="★☆☆☆☆">★☆☆☆☆
    <hr>
    <p> 소감 :
    <p><textarea name="comment" cols="32" rows="3" ></textarea>
    <hr>
    <p><input type="submit" value="제출하기">
      <input type="reset" value="다시작성">
  </fieldset>

</form>
</body>
</html>
