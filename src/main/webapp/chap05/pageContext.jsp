<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>버퍼 테스트</title>
</head>
<body>
	<%HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest(); %><br>
	request 기본객체와 pageContext.getRequest()의 동일여부<br>
	=><%=request == httpRequest %><br>
	pageContext.getOut() 메서드를 사용한 데이터 출력<br>
	=><%pageContext.getOut().println("안녕하세요"); %>
</body>
</html>