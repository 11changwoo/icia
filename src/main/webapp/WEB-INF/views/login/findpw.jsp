<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/formCheck.js"></script>
</head>

<style>


  
  
  .center0{
  	

  	margin: 290px 55px 229px 55px;
  
  }
  
  .center0 form input.search{  border-radius:5px; border:1px solid #4a4947;  
background:#4a4947;  color: #fff; cursor: pointer; width: 100px; height: 30px; margin-top: 20px;}

.center0 form input.search:hover{border-radius:5px; color:#fff; background: #ff2f4a; width: 100px; height: 30px;}
  

.email{margin-right:-164px;}

.center0 form#join input.name_user{display: block; *display:inline-block; padding: 10px 403px 10px 10px; 
border-radius:5px; border-style:groove; color: #4a4947; margin-right:22px; margin-bottom: 20px;}

.center0 form#join input.name_e-mail{ padding: 10px 100px 10px 10px; 
border-radius:5px; border-style:groove; color: #4a4947; }
</style>



<body>
<center class="center0">
<div class="line" style=" border-top: 2px solid #ff2f4a; width:100px;"></div>
<p style="color: #4a4947;"><strong style=" font-size: 29px;">본인확인 인증</strong></p>
<p style=" font-size: 11px; color: #ff2f4a; margin-bottom: 20px;">본인확인 아이디와 입력한 이메일 주소가 같아야, 비밀번호를 찾을수 있습니다.</p>

<form id="join" name="join" action="searchpw.do" method="post">
<input class="name_user" type="text" name="id" placeholder="ID">
 <div class="email">
<input class="name_e-mail" type="text" name="email_id" placeholder="e-mail" />@
<input class="name_e-mail" type="text"
						name="email_addr" disabled /> 
						<select style="font:inherit; border-radius:5px;  padding: 5px 50px 5px 5px;  " name="email_select"
						onchange="emailCheck()">
							<option value=" ">선택하세요.▼</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="google.com">google.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="daum.net">daum.net</option>
					</select> </div>
					
					<%if(request.getAttribute("searchPw") != null) { %>
					<strong>회원님이 찾으시는 아이디의 비밀번호는 ${searchPw }</strong> &nbsp;&nbsp;<input type="button" value="확인" onclick="location.href='login'"/> <br>
					<% } %>
					<input class="search" type="submit" value="찾기">
					<input class="search" type="button" value="취소" onclick="javascript:history.back(-1)" >
</form>
</center>
</body>
</html>