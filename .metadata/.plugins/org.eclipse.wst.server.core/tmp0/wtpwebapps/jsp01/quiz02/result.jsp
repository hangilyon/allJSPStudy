<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8");%>
	
		입력하신 수는 <b><%=request.getParameter("number")%></b> 이고,
		<br>당신은 <b><%=request.getParameter("gender")%></b> 이군요
		<hr>
		
		el 표기법<br>
		<b>${param.number}</b><br>
		<b>${param.gender}</b>
		<hr>
		<%
			String num = request.getParameter("number");
			String gender = request.getParameter("gender");
			out.print(num+"<br>"+gender);
		%>
		<c:set var="n1" value="${param.number}"/>
		<c:set var="g1" value="${param.gender}"/>
		<hr>
		el표기법 변수 사용<br>
		${n1}<br>
		${g1}
	
</body>
</html>