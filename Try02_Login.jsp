<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%-- Session과 SQL 활용
 SQL상의 등록된 ID와 PW로 로그인 가능
  로그인 성/패 따라 관리자화면 접근 가능/경고문과 되돌아가기 
  20.07.31. login process에서 작업해야한다. 이제 그런데 시간도 없고 해서 일단 빽한다. session으로 보낸 것을(아직은 세션이 아님)
읽어야한다.  
  
  --%>
<html>
<head>
<meta charset="utf-8">
<title>login session</title>
</head>
	<h2>  [홈] 관리자 계정으로 로그인하세요 </h2>
<body>

	<form action="Try03_Login_process.jsp" method="POST">
	<p> ID : <input type ="text" name="input_id">
	<p> PW : <input type ="text" name="input_pw">
	<p> <input type ="submit" value="LOG-IN">
	</form>
	
	<form action="Try10_SignUp.jsp" method="POST">
	<p> <input type ="submit" value="SIGN-UP!">
	</form>
</body>
</html>