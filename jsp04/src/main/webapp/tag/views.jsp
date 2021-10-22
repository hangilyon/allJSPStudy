<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views</title>
</head>
<body>views.jsp<br>
<fmt:requestEncoding value="UTF-8"/>
	<%--
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setName(request.getParameter("name"));
		dto.setAddr(request.getParameter("addr"));
		dto.setTel(request.getParameter("tel"));
		
		memberDAO dao = new MemberDAO();
		dao.register(dto);
	--%>
	<jsp:useBean id="dto" class="member.MemberDTO" />
	<jsp:useBean id="dao" class="member.MemberDAO" />
	
	<jsp:setProperty name="dto" property="id" param="id"/>
	<jsp:setProperty name="dto" property="*" />
	id : ${dto.getId() }1, ${dto.id }2,
	<jsp:getProperty name="dto" property="id"/>3
	<br>
	pwd ${dto.pwd}<br>
	name : ${dto.name }<br>
	addr : ${dto.addr }<br>
	tel : ${dto.tel }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>