<%@page import="com.care.root.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>delete.jsp<br>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	${dao.delete(session_id)}
	<c:remove var="session_id" scope="session"/>
	<c:redirect url="memberView.jsp"/>
</body>
</html>