<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>logout.jsp<hr>
	로그아웃 되었습니다.
	<br>
	<a href="login.jsp">login</a>
	<a href="main.jsp">main</a>
	
	
	<%
		//session.removeAttribute("loginUser"); //해당 세션만 만료
		//session.setMaxInactiveInterval(5); // 5초 후 모든 세션 만료
		session.invalidate(); // 모든 세션 바로 만료
	%>
</body>
</html>