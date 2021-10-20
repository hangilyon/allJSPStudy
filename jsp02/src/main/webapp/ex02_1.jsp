<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_1</title>
</head>
<body>ex02_1.jsp<br>
	<%
		String s = request.getParameter("n");
		out.print(s);
		String[] str = request.getParameterValues("n");
		out.print("<hr>");
		if(str != null){
			for(int i=0;i<str.length;i++){
				out.print(str[i]+"<br>");
			}
			
			for(String n : str){
				out.print(n+"<br>");
			}
		}else{
			out.print("선택값이 없습니다<br>");
		}
	%>
	<hr>
	JSTL % EL <br>
	
	<c:set var="values" value="${paramValues.n }"/>
	
	<c:if test="${paramValues.n != null}">
		<%--<c:forEach var="s" items="${paramValues.n }" > --%>
		<c:forEach var="s" items="${values }">
			${s }<br>
		</c:forEach>
	</c:if>
	<c:if test="${paramValues.n == null }">
		값 없음
	</c:if>
	<c:if test="${paramValues.n eq null }">
		값 없음
	</c:if>
</body>
</html>