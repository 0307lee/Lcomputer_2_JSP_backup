<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Action Tag</title>
</head>
<body>

	<%--200728 ? useBean에서 id는 Capital 상관X?  a그런가봐?ㅋㅋ--%>
	
	<jsp:useBean id ="Person1" class="com.id.dao.Person1" scope="request" />
	<p> 아이디: <%=Person1.getId()%>
	<p> 이   름: <%=Person1.getName()%>
		<%
			Person1.setId(20182342);
			Person1.setName("2번사람");
		%>
	
	<jsp:include page="Test07_useBean03.jsp"/>
</body>
</html>