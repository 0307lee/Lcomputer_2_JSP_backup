# JSP_JavaServerPage
명덕_Lcomputer
==============
=======================================

설치 java이어서

3 톰캣 (JSP용_front엔드용)
>>이클(OR spring.io)와 톰캣 연동법

1 server프로잭트 생성 (상이할수 잇음)
이클>file>new>other>
server>server>next>newserver>Apache>tomcat v9.0server (또는 설치버전)>NEXT
tomcat server>browser>설치경로입력>jre9.0.4 >Finish

2확인
메뉴바>windows>preferences>server>runtime environments>apach tomcat확인
=====
3생성법
[3 1프로젝트생성> 3 2 JSP페이지 작성> 3 3 프로잭트 실행]
 
[3 1 프로젝트생성]
file>new>other>web>dynamic web proj
>name
	=JSPBook
>target runtime
	= apache tomcat9.0

> OK


[3 2  JSP페이지 작성]
생성한 JSP 파일애서
new>file >webcontent에서 hello.jsp입력 >BODY 안에 입력 아무거나

[3 3 프로잭트 실행]
하단 콘솔창쪽에서 servers탭선택>tomcat v9.0~~~>우클릭> Add and Remove
>JSPBook선택>ADD>Finish> 실행(재생, ctrl+f11)

<<확인법>>
run as> run on server

<<크롬에서확인법>>
메뉴창>window>web Browser에서 변경가능

<<구성>>
webcotetns
	>web-inf
	>JSP
	>html... 등 정적

	>web-inf
		>classes>class
		>lib
		web.xml

========================================================================================================================================================
cos.jar은 기능 활용하기 위하여
C:\Users\l3-evening\Documents\workspace-spring-tool-suite-4-4.7.0.RELEASE\JSPBook\WebContent\WEB-INF\lib
에 넣기
==============
Person1.java는 _연동하기위하여 
C:\Users\l3-evening\Documents\workspace-spring-tool-suite-4-4.7.0.RELEASE\JSPBook\src\com\id\dao
에 넣기

