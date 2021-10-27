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
<body>write_save.jsp
	<%
		request.setCharacterEncoding("utf-8");
		BoardDAO dao = new BoardDAO();
		dao.writeSave(request.getParameter("name"),
				request.getParameter("title"),
				request.getParameter("content")
				);
		response.sendRedirect("list.jsp");
		// 자바 코드로 작성
	%>
	<%-- 
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
	${dao.writeSave(param.name, param.title, param.content) }
	<c:redirect url="list.jsp"/>
	JSTL 코드로 작성 --%>
</body>
</html>