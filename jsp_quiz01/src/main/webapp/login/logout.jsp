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
<c:if test="${sessionScope.id == null }">
	<script type="text/javascript">
		location.href="${contextPath}/login/login_view.jsp"
	</script>
</c:if>	
<c:if test="${sessionScope.id != null }">
	<c:remove var="id"/>
	<script type="text/javascript">
		alert('로그 아웃 되었습니다.')
		document.location.href="${contextPath}/login/login_view.jsp";
	</script>
</c:if>

</body>
</html>