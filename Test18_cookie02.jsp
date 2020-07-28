<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie</title>
</head>
<body>
	<%	Cookie[] cookies =request.getCookies();
		out.println("NOW COOKIES =>" +cookies.length+" EA <br>");
		out.println("=============================<br>");
		for(int i= 0;i<cookies.length; i++){
			out.println("설정된 쿠키 속성이름 [ "+i+"] :"+cookies[i].getName()+"<br>");
			out.println("설정된 쿠키 속성값 [ "+i+"] :"+cookies[i].getValue()+"<br>");
			out.println("=============================<br>");
		}
	%>
</body>
</html>