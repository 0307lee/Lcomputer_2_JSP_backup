<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import= "java.util.Enumeration"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Session3</title>
</head>
<%--p423 TEST12에서 실행된 session 내용 불러오기 session의 Name(gdtAttributenames)과 Value --%>

<body>
	<%
	String name;
	String value;
	
	Enumeration en = session.getAttributeNames();
	
	int i=0;
	
	while(en.hasMoreElements()){
		i++;
		name= en.nextElement().toString();
		//name= session.getAttributeNames().nextElement().toString(); ㅈ망
		value=session.getAttribute(name).toString();
	
	out.println("SESSION properties NAME ["+ i +"]:"+name+"<br>");
	out.println("SESSION properties VALUE  ["+ i +"]:"+value+"<br>");
	}
	
	%>
</body>
</html>