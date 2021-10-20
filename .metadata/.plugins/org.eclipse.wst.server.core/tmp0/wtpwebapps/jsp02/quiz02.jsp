<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz02</title>
<style type="text/css">
	*{
	margin: auto;
	text-align: center;
	}
	form{
		width: 400px;
		border: 1px solid red;
	}
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath}/views02.jsp" method="post">
		<h1>설문 조사</h1><br>
		<table border="1">
			<tr>
				<th>이름: </th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>성별:</th>
				<td>
					<input type="radio" name="gender" value="남자다잉"> 남자
					<input type="radio" name="gender" value="여자다잉"> 여자
			</tr>
			<tr>
				<th>좋아하는 계절:</th>
				<td>
					<input type="checkbox" name="season" value="봄">봄
					<input type="checkbox" name="season" value="여름">여름
					<input type="checkbox" name="season" value="가을">가을
					<input type="checkbox" name="season" value="겨울">겨울
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="전송"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>