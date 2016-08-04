1. Spring Starter Project 생성
	- name: MosaicWeb
	- Type: Gradle(buildShip)
	- Packaging: war
	- Language: Java
	- Artifact: MosaicWeb
	-프로젝트를 다 만들었으면 엔코딩해라.

2. 형상관리 
	- Remote Repository 생성(github.com)
	- Local Repository 생성
		- >> dir /a > .gitignore (형상관리 비대상만 추가)
		- >> git init
		- >> git add .
		- >> git commit -m "first commit"
	
	- Local => Remote Push(최초 동기화)
		- >> git remote add origin http://github.com/leewoo5/MosaicWeb.git
		- >> git remote remove origin(리모트를 삭제할 때)
		- >> git remote -v(리모트 상태 체크)
		- >> git push -u origin master
		- >> git status(동기화 상태 체크)
		- >> git log(commit 히스토리 보기)
	
	- 개발자2가 Clone 수행
		- >> git clone http://github.com/leewoo5/MosaicWeb.git
		- >> git clone http://github.com/leewoo5/MosaicWeb.git MosaicWebDev
			  (MosaicWebDev 폴더를 만들어서 클론해라)
		- >> Eclipse Gradle Import(클론한 폴더를 그래들프로젝트로..) 
	
	
3. HTML 설정
	- 설정 불필요
	- mkdir src/main/webapp 폴더생성
	- notepad src/main/webapp/Hello.html
	- gradle bootrun
	- firefox ==> http://localhost:8080/Hello.html
	
4. JSP 설정
	- mvnrepository.com -> search&download : Tomcat embed jasper
	- build.gradle=> dependency : 
		compile group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.3'
		compile => providedRuntime 으로 변경(배포할때 라이브러리를 빼도록 해서 tomcat 서버와의 충돌을 방지)
		eclipse => Gradle Refresh
	- 생성: src/main/webapp/Hello.jsp
	- gradle bootrun
	- firefox => http://localhost:8080/Hello.jsp
	

5. Servlet 설정 
	-MosaicWebAppication.java << @ServletComponentScan 추가
	-생성: com.hybrid.servlet.HelloServlet.java 생성
	-Project facets: 이클립스 프로젝트에 필요한 기능을 추가(자바, dynamic web module, javascript..)
	-gradle bootrun
	-firefox => http://localhost:8080/HelloServlet

6. SpringLoaded(서블릿 리로드 기능)
	- mvnrepository.com -> search&download : SpringLoaded
	- build.gradle에 설정(두 군데)
		classpath("org.springframework:springloaded:1.2.6.RELEASE")
		compile group: 'org.springframework', name: 'springloaded', version: '1.2.6.RELEASE'
	- eclipse Output directory 변경
		bin ==> build/classes/main

		
7. Mybatis 설정
	- mvnrepository.com -> search : spring boot mybatis => Mybatis Spring Boot Starter
	- build.gradle에 설정
		compile group: 'org.mybatis.spring.boot', name: 'mybatis-spring-boot-starter', version: '1.1.1'
		compile files('src/main/webapp/WEB-INF/lib/ojdbc7.jar')
	- application.properties
		spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
		spring.datasource.url=jdbc:oracle:thin:@52.78.80.137:1521:orcl
		spring.datasource.username=scott
		spring.datasource.password=tiger
	- eclipse Gradle => gradle project refresh 수행
	- gradle bootrun
	
	- 생성 src/main/java/com/hybrid/mapper/DeptMapper.java 인터페이스 생성
	- 생성 src/main/java/com/hybrid/domain/Dept.java 모델 생성
	- 생성 src/test/java/com/hybrid/mapper/DeptTest.java
	- 생성 src/main//webapp/dept.jsp 모델 생성

8.deploy(배포) 방법
	- gradle war
	- build/libs/MosaicWeb~~.war
	- cp MosaicWeb.war =>> C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps 이동
	- firefox ==> http://localhost/MosaicWeb/index.html

9.	Gluon
	탐색기로
	- cp FXTemplate/src/* ==> MosaicWeb/src로 복사
	- merge FXTemplate/build.gradle ==> MosaicWeb/build.gradle
	- merge com.hybrid.MosaicWebApplication ==> com.hybrid.fx.MainApplication
		->> spring boot + gluon start
		->> spring boot + gluon Stop
		->> primaryView에 WebView 추가 
		
10. sitemesh
	- mvnrepository.com -> search : sitemesh => sitemesh Library 
	- build.gradle dependencies에 추가
		->>compile group: 'org.sitemesh', name: 'sitemesh', version: '3.0.1'
	- SitemeshFilterConfig클래스를 작성
		=>builder.addDecoratorPath("/deco", "/WEB-INF/deco/maindeco.jsp");

11. Spring Security 설정
	- mvnrepository.com -> search : spring boot security starter  version=1.3.6
	- mvnrepository.com -> search : spring security taglibs version=4.0.4
	-build.gradle dependency 추가
		=>compile('org.springframework.boot:spring-boot-starter-security')
		  compile group: 'org.springframework.security', name: 'spring-security-taglibs', version: '4.0.4.RELEASE'
		


















	 
	
	
	 