<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>login.jsp<hr>
session : ${loginUser }, ${sessionScope.loginUser }<hr>
	<c:if test="${loginUser == null}">
		<form action="chkUser.jsp" method="post">
			<input type="text" name="id"><br>
			<input type="text" name="pwd"><br>
			<input type="submit" value="login"><br>
		</form>
	</c:if>
	<c:if test="${loginUser != null }">
		<b>${loginUser }님 로그인 상태입니다.</b><br>
		<a href="main.jsp">main</a>
		<a href="logout.jsp">logout</a>
	</c:if>
</body>
</html>