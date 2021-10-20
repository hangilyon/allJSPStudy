<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chkLogin</title>
</head>
<body>chkLogin.jsp<br>
	<%--
		String dbId="abcd", dbPwd = "1234";
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		if(dbId.equals(inputId) && dbPwd.equals(inputPwd)){
			out.print("로그인 성공");
			response.sendRedirect("main.jsp");
		}else{
			out.print("인증 실패");
			response.sendRedirect("loginForm.jsp");
		}
	--%>
	<c:set var="dbId" value="abcd"/>
	<c:set var="dbPwd" value="1234"/>
	<c:set var="inputId" value="${param.id }"/>
	<c:set var="inputPwd" value="${param.pwd }"/>
	
	<c:choose>
		<c:when test="${dbId == inputId}">
			<c:choose>
				<c:when test="${dbPwd eq inputPwd }">
					<b style="color:blue;">${inputId }님 로그인 성공</b>
				</c:when>
				<c:otherwise>
					<b style="color:red;">비밀번호 틀림!!!</b>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<b style="color:red;">존재하지 않은 회원입니다!!!</b>
		</c:otherwise>
	</c:choose>
	
<%--
	<c:choose>
		<c:when test="${dbId == inputId and dbPwd eq inputPwd }">
			<c:redirect url="main.jsp"/>
		</c:when>
		<c:otherwise>
			<c:redirect url="loginForm.jsp"/>
		</c:otherwise>
	</c:choose>
--%><%-- 
	<c:if test="${dbId == inputId and dbPwd eq inputPwd}">
		<b>인증 성공</b>
		<script type="text/javascript">alert("${inputId}님 로그인 성공했음")</script>
	</c:if>
	<c:if test="${dbId != inputId or dbPwd ne inputPwd}">
		<b>인증 실패</b>
		<script type="text/javascript">alert("${inputId}, ${inputPwd} 로그인 실패")</script>
	</c:if>
--%>
	
</body>
</html>