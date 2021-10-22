<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
</head>
<body>
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	
	<c:set var="num" value="${dao.modify_save(dto)}"/>
	<c:if test="${num==1 }">
	<script type="text/javascript">
		location.href="member_info.jsp?id=${dto.id}";
	</script>
	</c:if>
	작동 안 됨
</body>
</html>