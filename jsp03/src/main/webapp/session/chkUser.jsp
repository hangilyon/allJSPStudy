<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chkUser</title>
</head>
<body>chkUser.jsp<hr>
	<c:set var="dbId" value="1"/>
	<c:set var="dbPwd" value="1"/>
	<c:set var="dbNick" value="홍길동구리구리"/>
	
	<c:set var="inputId" value="${param.id }"/>
	<c:set var="inputPwd" value="${param.pwd }"/>
	
	<c:choose>
		<c:when test="${dbId==inputId && dbPwd==inputPwd }">
			로그인 성공
			<c:set var="loginUser" value="${dbNick }" scope="session"/>
			<c:set var="loginUserId" value="${inputId }" scope="session"/>
			<script type="text/javascript">
				alert("${sessionScope.loginUser} 님 환영합니다")
				document.location.href="main.jsp"
			</script>
		</c:when>
		<c:otherwise> 
			로그인 실패 
			<script type="text/javascript">
				alert("아이디와 비밀번호를 확인해 주세요")
				document.location.href="login.jsp"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>