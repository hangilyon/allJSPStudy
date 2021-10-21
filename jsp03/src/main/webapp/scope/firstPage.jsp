<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>firstPage</title>
</head>
<body>firstPage.jsp<hr>
<!-- 
	page : 현재 페이지에서만 유지된다.
	request : 현재 페이지 또는 다음 페이지까지 유지된다.
		단, forward를 사용했을 경우에만 다음 페이지까지 유지된다.
	session : 브라우저가 살아있는 동안 유지된다.
	application : 서버가 살아있는 동안 유지된다.
 -->
	<%
		pageContext.setAttribute("name", "page value");
		request.setAttribute("name", "request value");
		session.setAttribute("name", "session value");
		application.setAttribute("name", "application value");
		//request.getRequestDispatcher("secondPage.jsp").forward(request,response);
	%>
	${name }<br>
	page : <%= pageContext.getAttribute("name") %><br>
		, ${pageScope.name }<br>
	request : <%= request.getAttribute("name") %><br>
		, ${requestScope.name }<br>
	session : <%= session.getAttribute("name") %><br>
		, ${sessionScope.name }<br>
	application : <%= application.getAttribute("name") %><br> 
		, ${applicationScope.name }<br>
	<hr>
	<a href="secondPage.jsp">secondPage.jsp</a>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="se" value="안녕하세요 세션입니다" scope="session"/>
	<hr>
	se : ${se }
</body>
</html>