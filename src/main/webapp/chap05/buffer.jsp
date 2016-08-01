<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>버퍼 테스트</title>
</head>
<body>
	버퍼크기: <%=out.getBufferSize() %> <br>
	남은크기: <%=out.getRemaining() %> <br>
	auto flush: <%=out.isAutoFlush() %> <br>
	버커 지우기: <%=out.clearBuffer() %>
	
</body>
</html>