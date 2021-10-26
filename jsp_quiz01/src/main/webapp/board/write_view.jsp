<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.context{
		width: 800px;
		margin: 30px auto;
		border: 1px solid black;
		
	}
	.context_title{
		text-align: center;
		margin: 30px auto;
	}
	.context h3{
		padding: 10px;
	}
	.context input{
		width: 90%;
		height: 30px;
		margin: 0px 10px;
	}
	.context textarea{
		width: 90%;
		height: 300px;
		margin: 10px 10px;
	}
	.context button{
		float: right;
		margin: 10px 10px;
	}
</style>
</head>
<body>
<c:if test="${sessionScope.id != null }">
<jsp:include page="../default/header.jsp"/>

<div class="context">
	<div class="context_title">
		<h1>게시판 글쓰기</h1>
	</div>
	<form action="">
		<h3>제목</h3>
		<input type="text" placeholder="제목을 입력해 주세요">
		<h3>작성자</h3>
		<input type="text" placeholder="이름을 입력해 주세요">
		<h3>내용</h3>
		<textarea placeholder="내용을 입력해 주세요"></textarea>
		<button type="submit">글쓰기</button>
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