<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cookieTest.jsp</title>
</head>
<body>
<%
		
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(Cookie c : cookies){
			out.println(c.getName()+"="+c.getValue()+"<br>");
		}
	}
	
	Cookie c = new Cookie("id", "hong");
	c.setPath("/");

	response.addCookie(c);
	
	
%>
</body>
</html>