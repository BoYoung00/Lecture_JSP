<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>자기 소개서 폼 작성</h3>
<hr>
<form action="form07_process.jsp" method="post" name="member">
    <fieldset style="width: 360px">
        <legend>개인 정보</legend>
        <p> 닉네임 : <input type="text" name="id" id="id"> <input type="button" value="중복 검사">
        <p> 성별 : <input type="radio" name="sex" value="남성" checked>남
            <input type="radio" name="sex" value="여성">여
        <p> 게임장르 : 액션<input type="checkbox" name="hobby" value="액션" checked>
            퍼즐<input type="checkbox" name="hobby" value="퍼즐">
            전략<input type="checkbox" name="hobby" value="전략">
            리듬<input type="checkbox" name="hobby" value="리듬">
        <p> 혈액형 : <select name="bloodType">
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="O">O</option>
                    <option value="AB">AB</option>
        </select>
        <p> 자기소개 :
        <p><textarea name="comment" cols="30" rows="3" ></textarea>
        <p><input type="submit" value="제출하기">
            <input type="reset" value="다시 쓰기">
    </fieldset>

</form>
</body>
</html>
