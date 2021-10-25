<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.board {
		width: 80%;
		height: 500px;
		margin: auto;
		border: 2px solid black;
		padding: 30px 30px;
		margin-top: 30px;
	}
	.board_table{
		width: 90%;
		heigth: 700px;
		border: none;
		margin: 30px auto;
		
	}
	.board_table tr{
		text-align: center;
		
	}
	.board_table tr th{
		border-top: 2px solid black; 
		border-bottom: 2px solid black;
		padding: 10px 0px;
	}
	.board_table tr td{
		border-bottom: 0.5px solid gray;
		padding: 10px 0px;
	}
	.board_num{
		text-align: center;
		margin: 10px auto;
	}
	.writeBtn{
		float: right;
		margin-right: 40px;
	}
</style>
</head>
<body>
<c:if test="${sessionScope.id != null }">
	<jsp:include page="../default/header.jsp"/>
	<div class="board">
		<header>
			<h1>자유게시판</h1>
			<h4>  자유롭게 글을 쓸 수 있는 게시판입니다.</h4><br>
		</header>
		<div class="context">
			<table class="board_table">
				<tr>
					<th>번 호</th>
					<th width="500px;">제 목</th>
					<th>글 쓴 이</th>
					<th>작 성 일</th>
					<th>조 회 수</th>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
			</table>
			<div class="board_num">
				<a href="">처음</a>
				<a href="">1</a>
				<a href="">2</a>
				<a href="">3</a>
				<a href="">4</a>
				<a href="">5</a>
				<a href="">다음</a>
				<a href="">마지막</a>
			</div>
			<span class="writeBtn">
				<button>글쓰기</button>
			</span>
		</div>
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