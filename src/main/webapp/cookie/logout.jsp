<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%
	Cookie c = new Cookie("LOGIN", "success");
	c.setPath("/cookie");
	c.setMaxAge(0);
	
	response.addCookie(c);
%>
<h3>로그아웃 성공</h3>
<a href="loginForm.jsp">로그인</a><br>
<a href="dept.jsp">부서리스트</a>
</body>
</html>