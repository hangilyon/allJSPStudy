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
	id : ${session_id }
	id : ${sessionScope.session_id }
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>

	<c:set var="result" value="${dao.delete(sessionScope.session_id)}"/>
	<c:choose>
		<c:when test="${result == 1}">
			<c:remove var="session_id" scope="session"/>
		 	<script type="text/javascript">
		 		alert('성공적으로 삭제되었습니다!!!!')
		 		location.href="memberView.jsp";
		 	</script>
		</c:when>
		<c:otherwise>
		 	<script type="text/javascript">
		 		alert('삭제 실패 했습니다.')
		 		location.href="member_info.jsp?id=${sessionScope.session_id}";
		 	</script>
		</c:otherwise>
	</c:choose>	

</body>
</html>