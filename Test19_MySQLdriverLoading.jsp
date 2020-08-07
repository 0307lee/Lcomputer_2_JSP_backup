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
 <%--https://mariadb.com/kb/en/about-mariadb-connector-j/ 다운(java8)
    	)"mariadb-java-client-2.6.2.jar")작업중인 dynamic web(ex.JSPBook) )) webcontents)) WEB-inf )) libs에 넣기--%>    
	
<%
//jsp로 jdbc 연결하기
  
   Connection conn= null;
	try{
		String url = "jdbc:mysql://localhost:3306/db01";
		String user="root";
		String password="1234";

		
		Class.forName("org.mariadb.jdbc.Driver");//변경된 이름 주의 web library에서 확인가능
		conn=DriverManager.getConnection(url,user,password);
		out.println("connect");
		out.println("============");
	}catch(SQLException e){
		out.print("error");
		e.getMessage();
	}
%>
</body>
</html>