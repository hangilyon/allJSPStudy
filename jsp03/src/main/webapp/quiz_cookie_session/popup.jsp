<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup</title>
<script type="text/javascript">
	function makeCookie(){
		document.location.href="makeCookie.jsp"
	}
</script>
</head>
<body>
	<h1>팝업창</h1>
	<input type="checkbox" onclick="makeCookie()">닫기 체크
</body>
</html>