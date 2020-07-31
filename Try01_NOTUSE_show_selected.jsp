<%-- 이페이지의 기능은  Test20 하나로 합쳤다 --%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.sql.*"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Database SQL</title>
</head>
<body>
	<%@ include file="Test19_MySQLdriverLoading.jsp"%>
	<table style="width: 300px; border: 1px solid green;">
		<tr>
			<th>useKey	</th>
			<th>name	</th>
			<th>gender	</th>
		</tr>
		<%
		ResultSet rs=null;
		PreparedStatement pstmt =null;
		System.out.println("01");
		String where = "";
		try{	
			String sql ="select * from user01" + where;
			pstmt = conn.prepareStatement(sql);
			rs =pstmt.executeQuery();
			System.out.println("000000000000");
			
			while(rs.next()){
				System.out.println("11111111111");
				String id = rs.getString("u_userkey");
				String name = rs.getString("u_name");
				String gender = rs.getString("u_gender");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=name%></td>
			<td><%=gender%></td>
		</tr>
		<%					
			}
		}catch(SQLException ex){
			out.print("error01");
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
	</table>
	
	<form name = "fileForm" method ="post" > <%--action="Test21_show_selected.jsp"> --%>
	<p> 이름: <input type ="text" name= "name">
	<input type="submit" value="검색">
	</form> 
	
	<%
	request.setCharacterEncoding("utf-8");
	String Chkname = request.getParameter("name");
	 where = "";
	if (Chkname != null) {
		where += " where u_name like '%" + Chkname + "'%";
	}
	%>
	
	<p>NAME : <%=Chkname %>
</body>
</html>