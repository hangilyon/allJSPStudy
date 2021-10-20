<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz</title>
</head>
<body>
	<form action="http://localhost:8085/jsp01/quiz02/result.jsp" method="post">
		<input type="text" name="number">
		<br><input type="radio" name="gender" value="남자다잉">남
		<input type="radio" name="gender" value="여자다잉">여
		<br><input type="submit" value="쿼리 전송">
	</form>
</body>
</html>