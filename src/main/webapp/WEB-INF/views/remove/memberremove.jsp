<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String id = request.getParameter("id");
%>
</head>
<body>
<center>
<h1>정말 탈퇴 하시겠습니까?</h1>
<h2>${msg}</h2>
<form name="join" id="join" action="/project/remove.do?id=<%=id %>" method="post" >
비밀번호 : <input type="password" name="pw" id="pw"><br> <br>
<input type="submit" value="확인">&nbsp;&nbsp;<input type="button" value="취소" onclick="javascript:history.back(-1)">
</form>
</center>
</body>
</html>

