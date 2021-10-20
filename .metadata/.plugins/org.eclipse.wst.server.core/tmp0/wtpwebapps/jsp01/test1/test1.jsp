<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test1.jsp입니다</h1>
	<a href="http://localhost:8085/jsp01/webContent.jsp">webContent 이동 합니다.</a><br><br>
	<a href="http://localhost:8085/jsp01/test1/test2/test2.jsp">test2 이동 합니다.</a>
	<h1>절대경로 : /로 시작해야 하며, 경로는 프로젝트 명부터 들어와야 한다.</h1>
	<a href="/jsp01/webContent.jsp">webContent 이동 합니다.</a><br><br>
	<a href="/jsp01/test1/test2/test2.jsp">test2 이동 합니다.</a>
	<h1>상대경로 : 현재 위치를 기준으로 이동. 처음 /는 빼야 한다</h1>
	<a href="../webContent.jsp">webContent 이동 합니다.</a><br><br>
	<a href="test2/test2.jsp">test2 이동 합니다.</a>
</body>
</html>