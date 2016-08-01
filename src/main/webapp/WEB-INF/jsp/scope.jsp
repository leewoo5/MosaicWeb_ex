<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope.jsp</title>
</head>
<body>
Integer rnum = (Integer)request.getAttribute("rnum");
request.setAttribute("rnum", ++rnum);
log("rnum= " + rnum);

Integer snum = (Integer)session.getAttribute("snum");
session.setAttribute("snum", ++snum);
log("snum= " + snum);

Integer anum = (Integer)application.getAttribute("anum");
application.setAttribute("anum", ++anum);
log("anum= " + anum);

%>
rnum = <%=request.getAttribute("rnum")%>
<br>
snum = <%=session.getAttribute("snum")%>
<br>
anum = <%=application.getAttribute("anum")%>
</body>
</html>