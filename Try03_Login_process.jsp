<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>login process</title>
</head>
<body>
	<%@ include file="Test19_MySQLdriverLoading.jsp"%>
<%

	String user_id=request.getParameter("input_id");
	String user_pw=request.getParameter("input_pw");
	
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