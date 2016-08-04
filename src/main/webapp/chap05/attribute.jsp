<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>속성 테스트</title>
</head>
<body>
	<%application.setAttribute("xxx", 1); %>
	<%application.setAttribute("yyy", 2); %>
	<%Enumeration<String> enums = application.getAttributeNames(); %>
	<%
		while(enums.hasMoreElements()){
			String name = enums.nextElement();
			Object value = application.getAttribute(name);
	%>
		name= <%= name %>
		<br>
		value= <%=value %>
		<br>
	<%
	}
	%>
	
</body>
</html>