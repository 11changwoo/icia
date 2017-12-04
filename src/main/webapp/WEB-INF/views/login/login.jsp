<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/formCheck.js"></script>
</head>
<body>
	<%
		if (session.getAttribute("loginUser") == null) {
	%>
	<center>
		<br> <br> <br>
		<h1>Welcome</h1>
		<br> <br> <br> 
		<form action="login.do" method="post" name="login" id="login" onsubmit="return loginCheck()">
			ID : <input type="text" name="id" id="id" /> <br> <br> 
			PW : <input type="password" name="pw" id="pw" /> <br> <br> 
			<input type="submit" value="로그인" /> <br> <br>
			<input type="button" value="아이디 찾기" onclick="location.href='findid'" />
			<input type="button" value="비밀번호 찾기" onclick="location.href='findpw'" />
		</form>
	</center>
	<%
		} else {
	%>
	<center>
		<script>
			location.href="main_login";
		</script>
		<%
		}
		%>
	</center>
</body>
</html>