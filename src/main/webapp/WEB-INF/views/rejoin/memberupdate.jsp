<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회 원 수 정</title>

<!-- 폼 check를 위한 javascript -->
<script type=text/javascript src="${pageContext.request.contextPath}/js/formCheck.js"></script>
<!--다음 우편 api 사용을 위해서 사용-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- jQuery 사용을 위해서 사용 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
jQuery(function($) {
	
	var re_pass = /^[a-zA-Z0-9]{1,}$/;// 비번 검사식
	var re_tel = /^[0-9]{1,}$/;//전화 검사식
	
	var
		form = $('#join'),
		pw = $('#pw'),
		pw_ok = $('#pw_ok'),
		tel = $('#tel');
	
	form.submit(function () {
		if(pw.val() != pw_ok.val()) {
			alert('[비밀번호 입력 오류] 입력한 비밀번호가 동일하지 않습니다.');
			pw_ok.focus();
			return false;
		}
			
	});
	
	// #password 인풋에서 onkeyup 이벤트가 발생하면
	pw_ok.keyup( function() {
			if(pw_ok.val().length == 0) {
				$('strong[name=check]').text(' ');
			}
			else if(pw.val() != pw_ok.val()) {
				$('strong[name=check]').text(' X');
			} else {
				$('strong[name=check]').text(' O');
			}
	});

	// #tel 인풋에 onkeydown 이벤트가 발생하면
	// 하이픈(-) 키가 눌렸는지 확인
	// 하이픈(-) 키가 눌렸다면 입력 중단
	tel.keydown( function() {
		if(event.keyCode==109 || event.keyCode==189) {
			return false;
		}
	});
	
});
</script>


<!-- 스타일 적용을 위한 CSS -->

<style>

table{
border: 1px solid #4a4947; 
border-radius: 5px;

}

th{

padding: 10px 10px 10px 10px;
color: #fff;
background: #ff2f4a;
border: 1px solid #4a4947; 
border-radius: 5px;

}

td{

color: #4a4947;
border: 1px solid #4a4947; 
padding: 7px 8px 7px 8px;
border-radius: 5px;

}

input{

border-radius: 5px;
border-style: groove;
padding: 3px 0 3px 0;

}


  
  .center0{
  	

  	margin: 88px 55px 28px 55px;
  
  }
  
    .center0 form input.search{  border-radius:5px; border:1px solid #4a4947;  
background:#4a4947;  color: #fff; cursor: pointer; width: 100px; height: 30px; margin-top: 20px;}

.center0 form input.search:hover{border-radius:5px; color:#fff; background: #ff2f4a; width: 100px; height: 30px;}
  
      .center0 form input.adsearch{  border-radius:5px; border:1px solid #4a4947;  
background:#4a4947;  color: #fff; cursor: pointer; width: 100px; height: 26px; }

.center0 form input.adsearch:hover{border-radius:5px; color:#fff; background: #ff2f4a; width: 100px; height: 26px;}
  
  

</style>


</head>
<body>
	<center class="center0">
	<div class="line" style=" border-top: 2px solid #ff2f4a; width:100px;"></div>
		<p style="color: #4a4947; margin-bottom: 20px;" ><strong style="font-size: 29px;">회 원 정 보 수 정</strong></p>
		<form id="join" name="join" action="mUpdate.do" method="post">
			<table border="1" width="650" height="150">
				<tr>
					<th>이 름</th>
					<td>${update.name}</td>
				</tr>
				<tr>
					<th>성 별</th>
					<td>${update.gender}</td>
				</tr>
				<tr>
					<th>아 이 디</th>
					<td><input type="hidden" name="${update.id}"> ${update.id}</td>
				</tr>
				<tr>
					<th>비 밀 번 호</th>
					<td><input type="password" id="pw" name="pw" /></td>
				</tr>
				<tr>
					<th>비 밀 번 호 확 인</th>
					<td><input type="password" id="pw_ok" name="pw_ok"><strong name="check" style="font-size : 14px; color : red;"></strong></td>
				</tr>
				<tr>
					<th rowspan="2">주 소</th>
					<td><input type="text" id="addr" name="addr" /> 
					<input class="adsearch" type="button" value="주소 찾기" onclick="post_search()" /></td>
				</tr>
				<tr>
					<td><input type="text" id="addr_f" name="addr_f" /> <input
						type="text" id="addr_b" name="addr_b" /></td>
				</tr>
				<tr>
					<th>이 메 일</th>
					<td><input type="text" name="email_id" />@<input type="text"
						name="email_addr" disabled /> 
						<select style="font:inherit; border-radius: 5px; " name="email_select" onchange="emailCheck()">
							<option value=" ">선택하세요.<!--  ▼--></option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="google.com">google.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="daum.net">daum.net</option>
					</select></td>
				</tr>
				<tr>
					<th>전 화 번 호</th>
					<td><input type="text" name="tel" id="tel"></td>
				</tr>
				<tr>
					<th>자 기 소 개</th>
					<td><textarea style="width: 496px;height: 100px; resize: none;  overflow-y:scroll; " name="intro"></textarea></td>
				</tr>
			</table> <br> 
			<input class="search" type="submit" value="수정 완료"> 
			<input class="search" type="button" value="취소" onclick="javascript:history.back(-1)">
		</form>
	</center>
</body>
</html>