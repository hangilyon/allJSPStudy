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
<body>list.jsp<br>

<jsp:include page="../default/header.jsp"/>
<div class="wrap">
	<table border="1">
		<tr>
			<th>번호</th> <th>이름</th> <th>제목</th> <th>날짜</th>
			<th>조회수</th> <th>idgroup</th> <th>step</th> <th>indent</th>
		</tr>
		
		<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
		<c:forEach var="dto" items="${dao.list() }">
			<tr>
				<td>${dto.id }</td>
				<td>${dto.name }</td>
				<td><a href="${contextPath }/board/content_view.jsp?id=${dto.id }">${dto.title }</a></td>
				<td>${dto.savedate }</td>
				<td>${dto.hit }</td>
				<td>${dto.idgroup }</td>
				<td>${dto.step }</td>
				<td>${dto.indent }</td>
				
			</tr>
		</c:forEach>
		<tr>
			<td colspan="8">
				<a href="${contextPath }/board/write_view.jsp">글작성</a>
			</td>
		</tr>
	</table>
	
</div>
<jsp:include page="../default/footer.jsp"/>

</body>
</html>