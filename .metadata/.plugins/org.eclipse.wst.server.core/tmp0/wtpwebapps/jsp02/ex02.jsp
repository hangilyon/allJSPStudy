<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02</title>
</head>
<body>ex02.jsp<br>
	<form action="${contextPath }/ex02_1.jsp">
		<input type="checkbox" value="아침" name="n"> 아침
		<input type="checkbox" value="점심" name="n"> 점심
		<input type="checkbox" value="저녁" name="n"> 저녁
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>