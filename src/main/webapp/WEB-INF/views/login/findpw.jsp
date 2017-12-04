<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/formCheck.js"></script>
</head>
<body>
<center>
<h1>아이디와 이메일을 적어 주십시오.</h1> <br>
<form id="join" name="join" action="searchpw.do" method="post">
아 이 디 : <input type="text" name="id" > <br><br>
이 메 일 : <input type="text" name="email_id" />@<input type="text"
						name="email_addr" disabled /> <select style="font:inherit;" name="email_select"
						onchange="emailCheck()">
							<option value=" ">선택하세요.▼</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="google.com">google.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="daum.net">daum.net</option>
					</select> <br> <br>
					<%if(request.getAttribute("searchPw") != null) { %>
					<strong>회원님이 찾으시는 아이디의 비밀번호는 ${searchPw }</strong> &nbsp;&nbsp;<input type="button" value="확인" onclick="location.href='login'"/> <br>
					<% } %>
					<input type="submit" value="찾기">
					<input type="button" value="취소" onclick="javascript:history.back(-1)" >
</form>
</center>
</body>
</html>