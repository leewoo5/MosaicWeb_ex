<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러 발생</title>
</head>
<body>
<img alt="" src="info.png">
<h4 style="color: blue;">웹사이트에서 페이지를 표시할 수 없습니다.</h4>
<hr>
<p style="padding: 20px;">
웹사이트의 페이지에 문제가 있습니다.<br><br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.<br><br>
이용에 불편을 드려서 죄송합니다.<br><br>
</p>
<ul>
	웹사이트에서 발생한 문제:
	<li style="margin: 40px;">에러 타입: <%= exception.getClass().getName() %>
	<li style="margin: 40px;">에러 메세지:<%= exception.getMessage() %>
</ul>
</body>
</html>