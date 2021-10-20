<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<%--request.setCharacterEncoding("UTF-8"); --%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views02</title>
</head>
<body>
	<h1>views02.jsp</h1>
	<c:set var="name" value="${param.name }"/>
	<c:set var="gender" value="${param.gender }"/>
	<c:set var="season" value="${param.season }"/>
	<b>name :</b> ${name}<br>
	<b>gender :</b> ${gender}<br>
	<c:forEach var="s" items="${season}" >
		<b>season:</b> ${s }<br>
	</c:forEach>
</body>
</html>