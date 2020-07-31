<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.sql.*"%>   
<%@ page import = "java.io.IOException"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Database SQL</title>
</head>
<body>
	<%@ include file="Test19_MySQLdriverLoading.jsp"%>
	<p> 검색해보세요
	<%
	request.setCharacterEncoding("utf-8");
	String Chksort = request.getParameter("sort");
	String Chkname = request.getParameter("name01");
	String where = null;

	if (Chkname != null) {
		where = "where "+Chksort+" like '%" + Chkname + "%'";
	}else {
		where = "";
		}//여기 안에는 ChkName에 없는 값이 들어오면 그대로 나와야겠지
	%>
	
	<table style="width: 300px; border: 1px solid green;">
		<tr>
			<th>useKey	</th>
			<th>name	</th>
			<th>gender	</th>
		</tr>
		<%		
		ResultSet rs=null;
		PreparedStatement pstmt =null;
		System.out.println(Chkname+"< 검색어");
		try{	
			String sql ="select * from user01 " + where;
			System.out.println("sql: " + sql);			
			pstmt = conn.prepareStatement(sql);
			rs =pstmt.executeQuery();
			
			while(rs.next()){
				System.out.println("Read From SQL");
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
			  System.out.println("Message String = "+ ex.getMessage()); 
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
	
	<form name="fileForm" method ="post" > <%--action="Test21_show_selected.jsp"> --%>
		<select name="sort">
		    <option value="u_userkey"disabled>전체 (그냥 검색버튼 누르기)</option>
		    <option value="u_userkey">번호</option>
		    <option value="u_name">이름</option>
		    <option value="u_gender">성별</option>
		</select>
		<p> 검색어: <input type ="text" name= "name01">
		<input type="submit" value="검색">
	</form> 
	
</body>
</html>