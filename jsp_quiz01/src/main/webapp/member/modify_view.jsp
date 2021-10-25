<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
</head>
<body>modify.jsp<br>
<c:if test="${sessionScope.id != null }">
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>	
	<c:set var="mem" value="${dao.memberInfo(param.id)}"/>
	
	<jsp:include page="../default/header.jsp"/>
	<div class="wrap">
		<form action="modify.jsp" method="post">
			<input type="hidden" name="id" value="${mem.id }">
			id : <label><b>${param.id }</b></label> <br>
			pwd : <input type="text" name="pwd" value="${mem.pwd }"><br>
			name: <input type="text" name="name" value="${mem.name }"><br>
			addr : <input type="text" name="addr" value="${mem.addr }"><br>
			<input type="submit" value="수정">
		</form>
	</div>
	<jsp:include page="../default/footer.jsp"/>
</c:if>
<c:if test="${sessionScope.id == null }">
	<script type="text/javascript">
		location.href="${contextPath}/login/login_view.jsp"
	</script>
</c:if>
</body>
</html>