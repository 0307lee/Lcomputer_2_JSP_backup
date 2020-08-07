<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id ="person1" class="com.id.dao.Person1" scope="request" />
	<p> 아이디: <%=person1.getId()%>
	<p> 이   름: <%=person1.getName()%>
	<%--200728 useBean 같은건 jstl
	
	com.id.dao.Person#에서 가져와서 표기하자
		>>JSPBook>Java Resources>src>(Package)com.id.dao>Person.java활용
	
	id.com이라는 도메인에서 dao라는 기능을 하는 package이다.
	
	(cf1. 엄연하게는 dao라는 package는 이렇게 생기지 않았다. 
	cf2. dao보다는 vo를 더 쓴다.
	cf3. 자바빈즈.또 프로그램이 있다.)
	--%>
</body>
</html>