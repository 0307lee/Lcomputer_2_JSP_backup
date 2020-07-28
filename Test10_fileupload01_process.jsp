<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%--http://servlets.com/cos/에서 "COS.JAR"을 다운해서  WebContent>web-inf> lib에 cos.jar을 넣으세요
    
    	파일을 하나의 저장소의 저장하는 여러 방법 중 servlets의 lib을 사용한 방법
    	해당 구조를 복붙해서 쓰면 되겟고 OR java자체에도 해당 유사? 동등? 기능이 있다.
    	
    	해당 기능 사용 시에는 upload에 자동 업로드 된다. 5mb 이하 파일, 또한 renamePolicy를 따른다. ㄷㄷ
    
    --%>
  
<%@ page import= "com.oreilly.servlet.*"%>
<%@ page import= "com.oreilly.servlet.multipart.*" %>
<%@ page import= "java.util.*" %>
<%@ page import= "java.io.*" %>
<%
	MultipartRequest multi = new MultipartRequest(request, 
			"C:\\upload", 5*1024*1024,"utf-8", new DefaultFileRenamePolicy());

	Enumeration params =multi.getParameterNames();
	
	while (params.hasMoreElements()){
		String name =(String)params.nextElement();
		String value = multi.getParameter(name);
		out.println(name+ "  =  "+ value + "<br>");
	}
	out.println(" ---------------  <br>");

	Enumeration files=multi.getFileNames();
	
	while (files.hasMoreElements()){
		String name =(String)files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original=multi.getOriginalFileName(name);
		String type= multi.getContentType(name);
		File file =multi.getFile(name);
		
		out.println("= 요청파라미터 이름  "+ name + "<br>");
		out.println("= 실제파일이름  "+ original + "<br>");
		out.println("= 저장파일 이름  "+ filename + "<br>");
		out.println("= 파일콘텐츠 유형  "+ type+ "<br>");
		
		if(file !=null){
			out.println("파일 크기: "+ file.length());
			out.println("<br>");
		}
		
		/*	오기입
		String title = multi.getParameter("title");	
		out.println("<h3>"+title +"<h3>");*/
	}
%>