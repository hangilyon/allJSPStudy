<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
</head>
<body>loginForm.jsp<br>
	로그인 페이지 입니다.
	<%-- response.sendRedirect("main.jsp"); --%>
	<form action="${pageContext.request.contextPath }/chkLogin.jsp" method="post">
		<input type="text" name="id" placeholder="input id"><br>
		<input type="password" name="pwd" placeholder="input password"><br>
		<input type="submit" value="LOGIN">
	</form>
</body>
</html>