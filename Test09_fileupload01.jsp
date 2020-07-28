<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>File Upload</title>
</head>
<body>
	<form name = "fileForm" method ="post" enctype="multipart/form-data" action="Test10_fileupload01_process.jsp">
		<p> 이름: <input type ="text" name= "name">
		<p> 제목: <input type ="text" name= "subject">
		<p> 파일: <input type ="file" name= "filename">
		<p> <input type ="submit" value= "(표기)파일올리기">
<%--file upload 시의 기본 구조. 해당 jsp실행시 action 기능 수행 (현, "Test10_fileupload01_process.jsp" 시행)--%>	
	</form> 
</body>
</html>