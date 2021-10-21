<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>main.jsp<hr color="red">
	<c:if test="${sessionScope.loginUser != null }">
		로그인 성공한 사람만 들어올 수 있어요!!!<hr color="red">
		${sessionScope }<br>
		<a href="login.jsp">로그인 이동</a>
		<a href="logout.jsp">로그아웃 이동</a>
	</c:if>
	<c:if test="${sessionScope.loginUser == null }">
		<script type="text/javascript">
			alert("로그인 먼저 하세요!!!")
			document.location.href="login.jsp"
		</script>
		
	</c:if>
</body>
</html>