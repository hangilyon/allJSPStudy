<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>reply.jsp<br>
<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
<jsp:useBean id="dto" class="com.care.root.board.dto.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/>
${dao.reply(dto) }
<c:redirect url="list.jsp"/>
</body>
</html>