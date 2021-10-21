<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 생성하는 페이지</h1>
	<%
		boolean flag = true;
		Cookie[] cooks = request.getCookies();
		for(Cookie c : cooks){
			if(c.getName().equals("testCookie")){
				flag = false;
			}
		}
	%>
	<c:if test="<%=flag %>">
		<script type="text/javascript">
			window.open("popup.jsp","","width=300, height=200, top=500, left=500")
		</script>
	</c:if>
	
</body>
</html>