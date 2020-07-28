<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Session2</title>
</head>
<%--p423 TEST12에서 실행된 session 내용 불러오기 session에 array로 저장되네 --%>

<body>
	<%
	String user_id	=(String)session.getAttribute("userID");
	String user_pw	=(String)session.getAttribute("userPW");
	
	out.println("SESSION VALUE[1]:"+user_id+"<br>");
	out.println("SESSION VALUE[2]:"+user_pw+"<br>");
	%>
</body>
</html>