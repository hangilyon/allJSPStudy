<%@page import="com.care.root.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
	${dao(delete(param.id) }--%>
	
	<% 
		BoardDAO dao = new BoardDAO();
		dao.delete(request.getParameter("id"));
		response.sendRedirect("list.jsp");
	%>
</body>
</html>