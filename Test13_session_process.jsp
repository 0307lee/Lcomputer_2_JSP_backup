<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Session</title>
</head>
<body>
<%--p423 TEST12가 메인으로써 13 실행 된다.
이러한 개념으로 만들어짐 --%>
<%

	String user_id=request.getParameter("id");
	String user_pw=request.getParameter("pw");
	
	if(user_id.equals("admin")&&user_pw.equals("1234")){
		
		session.setAttribute("userID",user_id);
		session.setAttribute("userPW",user_pw);
		out.println("SESSION SETUP DONE <br>");
		out.println(user_id+" WELCOME <br>");		
	}else{
		out.println("SETUP FAIL");
	}
%>
</body>
</html>