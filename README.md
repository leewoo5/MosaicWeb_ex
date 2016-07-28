1. Spring Starter Project 생성
	- name: MosaicWeb
	- Type: Gradle(buildShip)
	- Packaging: war
	- Language: Java
	- Artifact: MosaicWeb

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