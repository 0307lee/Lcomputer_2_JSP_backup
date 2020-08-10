<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%-- Session과 SQL 활용
 SQL상의 등록된 ID와 PW로 로그인 가능
  로그인 성/패 따라 관리자화면 접근 가능/경고문과 되돌아가기 
  20.07.31. login process에서 작업해야한다. 이제 그런데 시간도 없고 해서 일단 빽한다. session으로 보낸 것을(아직은 세션이 아님)
읽어야한다.  
  
  --%>
<html>
<head>
<meta charset="utf-8">
<title>SIGN UP</title>

<script>
	var doc = document; 
	var form_sign = doc.getElementById('form_sign'); 
	var terms = doc.getElementById('Terms_OK'); 

	var Terms_OK = doc.getElementById('Terms_OK'); 
	  
	function checkboxListener() {
		form_sign_data[this.name] = this.checked; //각각 자신의 checkBox를 Checked 상태로 바꿈 
	}
	
	form_sign.onsubmit = function(e) {
		e.preventDefault();
		
		if ( !form_sign_data['Terms_OK'] ) {
		 alert('이용동의 약관에 동의하지 않았습니다.');  
		 return false; 
		}	
		this.submit(); 
	}; 
</script>
</head>
	<h2>  계정을 만드세요 </h2>
	
<body>

	<form action="Try02_Login.jsp" method="POST" id="form_sign">
	<p> I  D : <input type ="text" name="input_id">
	<p> P  W : <input type ="text" name="input_pw">
	<p> PW확인 : <input type ="text" name="input_pw2">
	<p> <input type ="submit" value="회원가입 신청" >
	</form>
	<tr>
	   <td><input type="checkbox" name="약관동의" id="Terms_OK"></td>
	   <td align="left"><font size="2">이용약관에 동의합니다.</font></td>
 	 </tr>
 	 <!-- check Box 이벤트처리를 위한 Script -->
	
</body>
</html>