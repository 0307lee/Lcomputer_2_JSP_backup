<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cookie</title>
</head>
<%--p456 쿠키-서버보다는 개인에게 저장되는 데이터들 별로 안중요한 것들--%>
<body>
	<form action="Test17_cookie_process.jsp" method="POST">
		<p> ID : <input type ="text" name="id">
		<p> PW : <input type ="text" name="passwd">
		<p> <input type ="submit" value="[표기]보내라">
	
	</form>
</body>
</html>