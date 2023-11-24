<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원 탈퇴</title>
</head>
<body>	
	<form method="post" action="week13/delete02_process.jsp">
	<fieldset style = "width:200px">
	<legend> 회원 탈퇴 </legend>
		<p>	아이디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="password" name="passwd">		
		<p>	<input type="submit" value="탈퇴하기">
	</form>
</body>
</html>
