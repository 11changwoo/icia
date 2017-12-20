<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/formCheck.js"></script>
</head>

<style>

body {

  background: linear-gradient(#ff667a, /*#ff2f4a*/#ff0022 ) fixed;

  }
  
  
  .center0{
  	
  	position: relative;
  	margin: 229px 55px 229px 55px;
  
  }
  

 .font1 strong{
    position: absolute;
    top: 141px;
    left: 50%;
    z-index: 9999999999999999;
    margin-left: -66px;
    font-size: 29px;
    color: #fff;
  }

.font2 {
    font-size: 11px;

    color: #fff;
    margin-left: -1px;


}


.center0 form input.userid{ background-image:url("img/join2.png");  background-repeat:no-repeat;
background-size:15px 15px; background-position:10px; border-style:hidden;
display: block; *display:inline-block; padding: 10px 20px 10px 51px; border-radius:5px; margin-bottom: 10px; }
.center0 form input.userpassword{ background-image:url("img/BOAN.png");  background-repeat:no-repeat;
background-size:15px 15px; background-position:10px; border-style:hidden;  margin-bottom: 10px; 
display: block; *display:inline-block; padding: 10px 20px 10px 51px; border-radius:5px;}

.center0 form input.userlogin{display: block; *display:inline-block; padding: 10px 100px 10px 98px; border-radius:5px;
background: #4a4947; border-style:hidden; color: #fff; cursor: pointer; margin-bottom: 20px;  }

.center0 form input.search{  border-radius:5px; border:1px solid #4a4947;  
background:none;  color: #fff; cursor: pointer; width: 100px; height: 30px;}

.center0 form input.search:hover{border-radius:5px; border:2px solid #4a4947; width: 100px; height: 30px;}

</style>


<body>
	<%
		if (session.getAttribute("loginUser") == null) {
	%>
	<center class="center0">
		<img src="${pageContext.request.contextPath}/img/i_con.png" width="138px" style="margin-left: -3px" onclick="javascript:location.href='main'">
		<p class="font1"><strong>Welcome</strong></p>
		<p class="font2">아이디로 로그인해주세요</p><br>
		<form action="login.do" method="post" name="login" id="login" onsubmit="return loginCheck()">
			<input class="userid" type="text" name="id" id="id" placeholder="|   아이디" /> 
			<input class="userpassword" type="password" name="pw" id="pw" placeholder="|   비밀번호"  /> 
			<input class="userlogin" type="submit" value="로그인" /> 
			<input class="search" style="margin-right: 6px;" type="button" value="아이디 찾기" onclick="location.href='findid'" />
			<input class="search" style="margin-left: 6px;" type="button" value="비밀번호 찾기" onclick="location.href='findpw'" />
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