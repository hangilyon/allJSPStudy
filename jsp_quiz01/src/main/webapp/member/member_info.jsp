<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_info</title>
</head>
<body>
<c:if test="${sessionScope.id != null }">
	<jsp:include page="../default/header.jsp"/>
	<h1>개인정보 보여줍니다.</h1>
	${param.id }, <%=request.getParameter("id") %>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	
	<c:set var="id" value="${param.id }"/>
	
	<c:set var="mem" value="${dao.memberInfo(param.id)}"/>
	<hr>
	id : ${mem.id }<br>
	pwd : ${mem.pwd }<br>
	name : ${mem.name }<br> 
	addr : ${mem.addr }<br>
	<hr>
	<button type="button" onclick="location.href='modify_view.jsp?id=${mem.id}'">수정</button>
	<c:set var="session_id" value="${ mem.id}" scope="session"/>
	<button type="button" onclick="location.href='delete.jsp'">삭제</button>
	<jsp:include page="../default/footer.jsp"/>

</c:if>
<c:if test="${sessionScope.id == null }">
	<script type="text/javascript">
		location.href="${contextPath}/login/login_view.jsp"
	</script>
</c:if>	
</body>
</html>