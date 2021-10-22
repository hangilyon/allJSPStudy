<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:import url="header.jsp"/>
	<jsp:include page="../default/header.jsp" />
		<h1 class="title">main입니다.</h1>
	<jsp:include page="../default/footer.jsp" />
	<c:import url="footer.jsp"/>
</body>
</html>