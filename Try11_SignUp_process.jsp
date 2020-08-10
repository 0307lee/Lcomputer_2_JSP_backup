<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "javax.swing.JOptionPane"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SignUp process</title>
</head>
<body>
	<%@ include file="Test19_MySQLdriverLoading.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");
	System.out.println("====signup 실행시작 === ");
	session.setMaxInactiveInterval(1); //1초간 유지
	
	//session으로 받기 (PW 제외한 모든 것들(ex. ID, Name)을 SQL에 보내면 된다.)
	String user_id_s= request.getParameter("input_id");
	String user_pw= request.getParameter("input_pw");
	String user_pw2= request.getParameter("input_pw");
			
	//SQL에서 찾기위한 구문 작성
	String where_id = "";
	String and_pw = "";
	ResultSet rs=null;
	PreparedStatement pstmt =null;

	where_id = " where L_ID = '"+user_id_s+"' ";
	and_pw = "and L_PW = '"+user_pw+"' ";

	try{	
		System.out.println("chk03_try활성여부 "); //확인용
		String sql ="select * from login01 " + where_id + and_pw;// 이렇게 SQL에 보낼것이다.
		System.out.println("chk04_sql: " + sql); //확인용
	
		//SQL에 찾는 내용 보낸다.
		pstmt = conn.prepareStatement(sql);
		rs =pstmt.executeQuery();
			
		while(rs.next()){	//1개여도 while 필요! (안하면 Err)	
			//pw제외한 내용을 세션에 저장
			session.setAttribute("Key_Id", user_id_s);
			session.setAttribute("Key_No", rs.getString("L_NO"));
			session.setAttribute("Key_Lv", rs.getString("L_LV"));
			session.setAttribute("Key_Name", rs.getString("L_NAME"));
						
			System.out.println("chk05_SQL에서받기: "+rs.getInt("L_NO")+rs.getInt("L_LV")+rs.getString("L_NAME"));//확인용
			System.out.println("chk06_Session(키)에서받기: "+session.getAttribute("Key_No")+session.getAttribute("Key_Lv")+session.getAttribute("Key_Name"));//확인용
			
			//호출  (jsp redirect)
			if(Integer.parseInt(session.getAttribute("Key_Lv").toString())>= 1) { //Lv를 체크하지만 또는 존재여부자체로만 (!==null) 접근도 가능
				
				System.out.println("chk08_Lv1이상으로 높음 "+Integer.parseInt(session.getAttribute("Key_Lv").toString()));
				String redirectURL = "Try04_Login_Success.jsp";
	   			response.sendRedirect(redirectURL);
			}
		}
		
		//sql에서 찾은 내용이 없으면(찾는 내용 중 하나의 값이 없는 것으로) 되돌아가기
		if(session.getAttribute("Key_No")==null){
			String redirectURL1 = "Try02_Login.jsp";
			response.sendRedirect(redirectURL1);	
			
			System.out.println("chk09_권한 없음");
			JOptionPane.showMessageDialog(null, " ID 또는 PW 이상 아니면 등록된 ID 없음"," LOGIN_FAIL ",JOptionPane.ERROR_MESSAGE);
			
		}else{System.out.println("chk11_머지_이메세지가 뜨는거는 아이디가 SQL Table내에 없고, session에 남아있기 때문인가");
		}
	}catch(SQLException ex){
		  System.out.println("Message String = "+ ex.getMessage()); 
	}finally{
		System.out.println("====실행종료 === ");
		System.out.println("");
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	}
	%>
</body>
</html>