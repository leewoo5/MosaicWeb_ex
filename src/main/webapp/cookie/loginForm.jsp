<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginProcess.jsp</title>
</head>
<body>
<h1>login</h1>
<form action="loginProcess.jsp" method="post" >
	<label>ID:</label>
	<input name="id" type="text"><br>
	<label>Password:</label>
	<input name="pw" type="password"><br>
	
	<sec:csrfInput/>
	<input type="submit" value="login">
</form>
</body>
</html>