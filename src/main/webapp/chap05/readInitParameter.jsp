<%@page import="java.util.Enumeration"%>
<%@page import="javafx.util.converter.IntegerStringConverter"%>
<%@page import="java.util.function.ToIntFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>초기화 파라미터 테스트</title>
</head>
<body>
	logEnabled=<%=application.getInitParameter("logEnabled")%><br>
	debugLevel=<%=application.getInitParameter("debugLevel")%><br><br>
	<%
		Enumeration<String> initParamEnum = application.getInitParameterNames();
		while(initParamEnum.hasMoreElements()){
			String initParamName = initParamEnum.nextElement();
	%>
	<%=initParamName%>=<%=application.getInitParameter(initParamName)%><br>
	<%}%>
</body>
</html>