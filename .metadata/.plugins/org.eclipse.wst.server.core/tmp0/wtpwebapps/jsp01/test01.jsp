<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>
	<h1>안녕하세요</h1>
	<%
		/* */
		int num=12345;
		//System.out.println(num);
		out.print("서버에서 전송합니다."+num);
	%>
	<h1><%= num+"넘어간다" %></h1>
	<hr>
	<c:set var="n" value="12345"/>
	el 표기법 : ${n }
	
</body>
</html>