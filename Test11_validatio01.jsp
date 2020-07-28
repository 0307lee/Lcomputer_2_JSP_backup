<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Validation</title>
</head>

<%--body내의 checkform()실행 시 해당 script 실행--%>	

<script type ="text/javascript">
	function checkform(){
		alert("ID: " + document.loginForm.id.value+"\n"+ "PW: "+document.loginForm.passwd.value);
	}
</script>

<body>
	<h2>이동훈_200728_Lcomputer_JSP</h2>
	<form name = "loginForm">
		<p> ID: <input type ="text" name= "id">
		<p> PW: <input type ="password" name= "passwd">
		<p> <input type ="submit" value= "(표기)LOG-IN" onclick= "checkform()">
	</form> 
</body>
</html>