<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>

<h1>Home -> 회원 가입</h1>


<fieldset style="width: 180px">
    <legend>회원 가입 화면</legend>
    <form method="post" action="insertDB.jsp" name="form" onsubmit="return checkForm()" >
        <p>아이디 : </p>
        <input type="text" name="userName"><br>
        <p>비밀번호 : </p>
        <input type="password" name="userPassword"> <br>
        <p>이메일 : </p>
        <input type="email" name="userEmail"> <br>
        <hr>
        <button type="reset">◀ 다시작성 </button>
        <button type="submit">가입하기 ▶ </button>
    </form>
</fieldset>


</body>

<script>
    function checkForm(){
        let form = document.form;
        let regExpName = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
        let regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        let name = form.userName.value;
        let passwd = form.userPassword.value;
        let email = form.userEmail.value;

        if (!regExpName.test(name)){
            alert("아이디는 문자로 시작해 주세요")
            return false;
        }
        if (passwd === "" || passwd.length < 6){
            alert("비밀번호는 6자 이상으로 입력해야 합니다.")
            return  false;
        }
        if (!regExpEmail.test(email)){
            alert("이메일 입력을 확인해 주세요")
            return false;
        }
        return true;
    }

</script>


</html>
