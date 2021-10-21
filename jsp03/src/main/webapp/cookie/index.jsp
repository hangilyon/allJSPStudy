<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>index.jsp<hr>
	<h1>어서어서오세요~</h1>
	<%
		Cookie[] cooks = request.getCookies();
		boolean flag = true;
		for(Cookie c : cooks){
			out.print("name : "+ c.getName()+", ");
			out.print("value : "+c.getValue()+"<br>");
			if(c.getName().equals("testCookie")){
				flag = false;
			}
		}
	
		Cookie cook = new Cookie("testCookie","myCookie");
		cook.setMaxAge(5); //5초동안 쿠키를 유지하겠다
		response.addCookie(cook);
	%>
	<c:if test="<%=flag %>">
		<script type="text/javascript">
			window.open("popup.jsp","","width=300, height=200, top=500, left=500")
		</script>
	</c:if>
	
</body>
</html>