<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> readParameterNoErrorpage.jsp</title>
</head>
<body>
	name 파라미터 값: <%=request.getParameter("name").toUpperCase() %>
</body>
</html>