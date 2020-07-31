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
	request.setCharacterEncoding("utf-8");
	String user_id = request.getParameter("input_id");
	String user_pw = request.getParameter("input_id");
	String where = null;

	ResultSet rs=null;
	PreparedStatement pstmt =null;
	System.out.println("Good01");
	
	try{	
		String sql ="select * from login01" + where;
		pstmt = conn.prepareStatement(sql);
		rs =pstmt.executeQuery();
		System.out.println("000000000000");
		

	}catch(SQLException ex){
		out.print("errorSQL");
		ex.getMessage();
	}finally{
		if(rs!=null)
		rs.close();
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
	}
	%>
	
	<%
	if(user_id.equals("admin")&&user_pw.equals("1234")){
		
		session.setAttribute("userID",user_id);
		session.setAttribute("userPW",user_pw);
		out.println("SESSION SETUP DONE <br>");
		out.println(user_id+" WELCOME <br>");		
	}else{
		out.println("Login FAIL");
%>
	<input type="button" value="로그인 실패" onclick="alert('자동으로 뒤로갑니다.');" />
	<%
} 
	%>
</body>
</html>