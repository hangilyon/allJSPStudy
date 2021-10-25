<%@page import="com.care.root.member.dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.care.root.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberView</title>
</head>
<body>
	<c:if test="${sessionScope.id != null }">
		<jsp:include page="../default/header.jsp"/>
		<div class="wrap">
		<%-- 
			<%
			MemberDAO dao = new MemberDAO();
			ArrayList<MemberDTO> list = dao.memberView();
			%>
			<% for(MemberDTO d : list){%>
				<%=d.getId() %> , <%=d.getPwd() %> , <%=d.getName() %> , <%=d.getAddr() %><br>
			<%}%>
		--%>
		<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<c:set var="list" value="${dao.memberView() }"/>
		<table border="1">
			<tr>
				<th>아이디</th><th>비밀번호</th><th>이름</th><th>주소</th>
			</tr>
			<c:forEach var="d" items="${list }">
			<tr>
				<td>${d.id }</td>
				<td>${d.pwd}</td>
				<td><a href="${contextPath }/member/member_info.jsp?id=${d.id}">${d.name }</a></td>
				<td>${d.addr }</td>
			</tr>
			</c:forEach>

		</table>
	
		
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