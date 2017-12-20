<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%--
	String id = request.getParameter("id");
--%>
</head>

<style>
  
  .center0{
  	
  	position: relative;
  	margin: 370px 55px 229px 55px;
  
  }
  
.center0 form input.search{  border-radius:5px; border:1px solid #4a4947;  
background:#4a4947;  color: #fff; cursor: pointer; width: 100px; height: 30px; }

.center0 form input.search:hover{border-radius:5px; color:#fff; background: #ff2f4a; width: 100px; height: 30px;}
  
  .center0 form input.userpassword{ background-image:url("img/BOAN.png");  background-repeat:no-repeat;
background-size:15px 15px; background-position:10px; border-style:groove;  margin-bottom: 30px; margin-top:30px;
display: block; *display:inline-block; padding: 10px 20px 10px 51px; border-radius:5px;}
  

</style>


<body>
<center class="center0">

	<div class="top_line" style="margin-left: -84px;  margin-top:57px;">
			<div class="line"
				style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 82px;"></div>
			<p style="color: #4a4947;">
				<strong style="font-size: 29px; margin-left: 88px;">정말 탈퇴하시겠습니까?</strong>
			</p>

		</div>

<form name="join" id="join" action="remove.do" method="post" >
<input class="userpassword" type="password" name="pw" id="pw" placeholder="비밀번호" >
<input class="search" type="submit" value="확인">
<input class="search" type="button" value="취소" onclick="javascript:history.back(-1)">
</form>
</center>
</body>
</html>

