<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.sql.*"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Loading</title>
</head>
<body>
<%
//jsp로 jdbc 연결하기

	Connection conn= null;
	try{
		String url = "jdbc:mysql://localhost:3306/db01";
		String user="root";
		String password="1234";

		
		Class.forName("org.mariadb.jdbc.Driver");//변경된 이름 주의 web library에서 확인가능
		conn=DriverManager.getConnection(url,user,password);
		//out.print("connect");
	}catch(SQLException e){
		out.print("error");
		e.getMessage();
	}
%>
</body>
</html>