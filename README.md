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
	
	
3. HTML
	- 설정 불필요
	- mkdir src/main/webapp 폴더생성
	- notepad src/main/webapp/Hello.html
	- gradle bootrun
	- firefox ==> http://localhost:8080/Hello.html
	
4. JSP
	- mvnrepository.com -> search&download : Tomcat embed jasper
	- build.gradle: dependency : 
		compile group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.3'
	- notepad src/main/webapp/Hello.jsp
	- gradle bootrun
	- firefox => http://localhost:8080/Hello.jsp
	-
	
	
	
	
	
	
	 