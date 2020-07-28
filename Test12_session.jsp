<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Session</title>
</head>
<body>
<%--p423 TEST12가 메인으로써 13 실행 
세션 개념은 빈도수 높은데이터를  서버에 잘 열리도록 만든 것 --%>

	<form action="Test13_session_process.jsp" method="POST">
	<p> ID : <input type ="text" name="id">
	<p> PW : <input type ="text" name="pw">
	<p> <input type ="submit" value="[표기]보내라">
	
	</form>
</body>
</html>