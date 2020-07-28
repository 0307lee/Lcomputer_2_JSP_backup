<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cookie</title>
</head>
<body>
<%--Test16_Cookie 실행시 ACTION --%>
<%

	String user_id=request.getParameter("id");
	String user_pw=request.getParameter("passwd");
	
	if(user_id.equals("admin")&&user_pw.equals("1234")){
		
	   /*
		* cf . SESSION의 경우
		* session.setAttribute("userID",user_id);
		*/
		
		Cookie cookie_id= new Cookie("userID",user_id);
		Cookie cookie_pw= new Cookie("userPW",user_pw);
		response.addCookie(cookie_id);
		response.addCookie(cookie_pw);
		
		out.println("COOKIE MAKING SUCCESS<br>");
		out.println(user_id+" WELCOME <br>");		
	}else{
		out.println("COOKIE MAKING FAIL");
	}
%>
</body>
</html>