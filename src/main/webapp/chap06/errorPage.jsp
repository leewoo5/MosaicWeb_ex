<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>errorPage.jsp</title>
</head>
<body>
<h1>에러페이지</h1>
에러 타입: <%=exception.getClass().getTypeName() %><br>
에러 메세지: <%=exception.getMessage() %>
<!-- 
	<%for(int i=0; i<100; i++){%>
		<%out.println("aaaaaaaaaaaa");%>
	<%}%>
-->

</body>
</html>