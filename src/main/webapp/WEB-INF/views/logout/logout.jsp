<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.project.dto.MemberVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로 그 아 웃</title>
<%	
	if(session.getAttribute("loginUser") != null) {
		System.out.println("세션 삭제");
	    session.invalidate();
	    response.sendRedirect("main");
    }
    else { 
    	response.sendRedirect("main");
    }
%>
</head>
<body>

</body>
</html>