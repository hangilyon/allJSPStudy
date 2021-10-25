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

	<jsp:include page="/default/header.jsp" />

	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<c:choose>
		<c:when test="${dao.checkId(param.id)==1}">
			<c:if test="${dao.checkPwd(param.pwd)==1 }">
				<c:set var="id" value="${param.id }" scope="session" />
				<script type="text/javascript">
					alert('로그인 성공!')
					document.location.href="${contextPath}/default/main.jsp";
				</script>
			</c:if>
			<c:if test="${dao.checkPwd(param.pwd)!=1}">
				<script type="text/javascript">
					alert('비밀번호가 일치하지 않습니다.')
					document.location.href="${contextPath}/login/login_view.jsp";
				</script>
			</c:if>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('등록되지 않은 아이디입니다.')
				document.location.href="${contextPath}/login/login_view.jsp";
			</script>
		</c:otherwise>
	</c:choose>
	
	<jsp:include page="/default/footer.jsp" />
</body>
</html>