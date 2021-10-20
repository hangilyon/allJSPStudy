<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath1" value="${pageContext.request.contextPath}"/>
<c:set var="contextPath2" value="<%= request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>ex01.jsp<br>
	<%= request.getContextPath()%> <br>
	${pageContext.request.contextPath}<br>
	path1 : ${contextPath1 }<br>
	path2 : ${contextPath2 }<br>

	<a href="/jsp02/ex01_1.jsp">절대경로 이동</a>
	<a href="<%= request.getContextPath()%>/ex01_1.jsp">Path 이동</a>
	<a href="${pageContext.request.contextPath}/ex01_1.jsp">el표기 Path 이동</a>

	<a href="${contextPath1}/ex01_1.jsp">var1</a>
	<a href="${contextPath2}/ex01_1.jsp">var2</a>
	<hr>
	foreach 연습<br>
	<%
		int[] arr = {111,222,333};
		for(int i=0;i<arr.length;i++){
			out.print(arr[i]+", ");
		}
		for(int n : arr){
			out.print(n+", ");
		}
		String[] str = {"안녕","하세","요"};
		for(String s : str){
			out.print(s+", ");
		}
	%>
	<hr>
	JSTL & el : forEach<br>
	<c:set var="str01" value="ggg,vvv,rrr"/>
	${str01 }<br>
	<c:forEach var="ss" items="${str01 }">
		<b style="color:red;">${ss }</b><br>
	</c:forEach>
	
	<c:forEach var="nn" items="<%=str%>">
		${nn}
		<script type="text/javascript">
			alert("${nn}")
		</script>
	</c:forEach>
</body>
</html>