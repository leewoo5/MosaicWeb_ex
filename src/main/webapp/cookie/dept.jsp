<%@page import="java.util.List"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dept.jsp</title>
</head>
<body>
<h1>Dept Test</h1>
<%
	Cookie[] cookies = request.getCookies();
	boolean loginStatus = false;
	
	if(cookies != null)	
	for(Cookie c : cookies){
		String cname = c.getName();
		String cvalue = c.getValue();
		if(cname.equals("LOGIN")&&cvalue.equals("success")){
			loginStatus = true;
		}
	}
	
	if(loginStatus!=true){
		response.sendRedirect("/cookie/loginForm.jsp");
		return;
	}
	
	ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
	DeptMapper mapper = ctx.getBean(DeptMapper.class);
	mapper.delete(67);
	mapper.insert(new Dept(67, "xxx", "yyy"));
	List<Dept> depts = mapper.selectAll();
	for(Dept dept : depts){
		System.out.println(dept);
		out.print(dept + "<br>");
	}

%>
<a href="logout.jsp">로그아웃</a>
</body>
</html>