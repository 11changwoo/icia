<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회 원 가 입</title>
<!-- 스타일 적용을 위한 CSS -->
<style>
td {
	color: #4a4947;
}
</style>

<!-- 폼 check를 위한 javascript -->
<script type=text/javascript src="${pageContext.request.contextPath}/js/formCheck.js"></script>
<!--다음 우편 api 사용을 위해서 사용-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 자동입력방지 api 사용을 위해서 사용 -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<!-- jQuery 사용을 위해서 사용 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
jQuery(function($) {
	
	var re_id = /^[a-z0-9_-]{1,}$/; // 아이디 검사식
	var re_pass = /^[a-zA-Z0-9]{1,}$/;// 비번 검사식
	var re_name = /^[가-힝]{1,}$/; //이름 검사식
	var re_tel = /^[0-9]{1,}$/;//전화 검사식
	
	var
		form = $('#join'),
		name = $('#name'),
		gender = $('#gender'),
		id = $('#id'),
		reid = $('#reid'),
		pw = $('#pw'),
		pw_ok = $('#pw_ok'),
		tel = $('#tel');
	
	form.submit(function () {
		//input의 type이 checkbox이면서 name=check인 것이 체크되지 않았다면
		if(! ($('input:checkbox[name="check"]').is(":checked"))) {
			alert('[선택 오류] 가입 유형을 선택해주세요.')
			return false;
		}
		else if(re_name.test(name.val()) != true ) {
			alert('[이름 입력 오류] 이름을 입력해주세요.')
			name.focus();
			return false;
		}
		else if(re_id.test(id.val()) != true) {
			alert('[아이디 입력 오류] 아이디를 입력해주세요.');
			id.focus();
			return false;
		}
		else if(re_pass.test(pw.val()) != true) {
			alert('[비밀번호 입력 오류] 비밀번호를 입력해주세요.');
			pw.focus();
			return false;
		}
		else if(pw.val() == id.val()) {
			alert('[비밀번호 입력 오류] 비밀번호와 아이디는 동일하면 안됩니다.')
			pw.focus();
			return false;
		}
		else if(pw.val() != pw_ok.val()) {
			alert('[비밀번호 입력 오류] 입력한 비밀번호가 동일하지 않습니다.');
			pw_ok.focus();
			return false;
		}
		else if(re_tel.test(tel.val()) != true) {
			alert('[전화번호 입력 오류] 전화번호를 입력해 주세요.');
			tel.focus();
			return false;
		}
		else if (reid.val().length == 0) {
			alert("중복 체크를 하지 않았습니다.");
			reid.focus();
			return false;
		}
		else if(typeof(grecaptcha) != 'undefined') { //입력방지 검사
			if(grecaptcha.getResponse() == "") {
				alert("스팸방지코드를 확인해 주세요.");
				return false;
				}
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
<script type="text/javascript">
//회원가입시 체크박스 선택을 한개만 선택하게 한다
function checkboxCheck(obj) {
	var check = document.getElementsByName("check");
	 if(obj == check[0]) {
		check[1].checked = false;
		check[2].checked = false;
	} else if (obj == check[1]) {
		check[0].checked = false;
		check[2].checked = false;
	} else {
		check[0].checked = false;
		check[1].checked = false;
	}
} 

//선택한 가입유형에 따라 테이블의 유형부분 활성화/비활성화
$(document).ready(function () {	
    $('input[value=company]').on('click',function () {
        if ($(this).is(':checked')) {
            $('#categori_select').attr('disabled',false);
        } else {
        	$('#categori_select').attr('disabled',true);
        }
    });
    
    $('input[value=user]').on('click',function () {
        if ($(this).is(':checked')) {
            $('#categori_select').attr('disabled',true);
        } else {
        	$('#categori_select').attr('disabled',false);
        }
    });
    
    $('input[value=manager]').on('click',function () {
        if ($(this).is(':checked')) {
            $('#categori_select').attr('disabled',true);
        } else {
        	$('#categori_select').attr('disabled',false);
        }
    });
});
</script>

<!-- 스타일 적용을 위한 CSS -->

<style>

table{
border: 1px solid #4a4947; 
border-radius: 5px;
margin-top: 10px;

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
  	

  	margin:28px 55px 0px 55px;
  
  }
  
    .center0 form input.clear{  border-radius:5px; border:1px solid #4a4947;  
background:#4a4947;  color: #fff; cursor: pointer; width: 100px; height: 30px; margin-top: 20px;}

.center0 form input.clear:hover{border-radius:5px; color:#fff; background: #ff2f4a; width: 100px; height: 30px;}
  
      .center0 form input.search1{  border-radius:5px; border:1px solid #4a4947;  
background:#4a4947;  color: #fff; cursor: pointer; width: 100px; height: 26px; }

.center0 form input.search1:hover{border-radius:5px; color:#fff; background: #ff2f4a; width: 100px; height: 26px;}
  
  

</style>

</head>
<body>
	<center class="center0">
		<div class="line" style=" border-top: 2px solid #ff2f4a; width:100px;"></div>
		<p style="color: #4a4947; margin-bottom: 20px;" ><strong style="font-size: 29px;">회 원 가 입</strong></p>
		<form id="join" name="join" action="joinOk" method="post">
		<div style="color: #4a4947; text-align: left; display: block; width: 670px;">
		<strong>가 입 유 형 : &nbsp;&nbsp;</strong>
			<input style="color: #4a4947" type="checkbox" name="check"  value="user"  onclick="checkboxCheck(this)" >일반 회원 &nbsp;&nbsp;
			<input style="color: #4a4947" type="checkbox" name="check"  value="company"  onclick="checkboxCheck(this)">기 업 &nbsp;&nbsp;
			<input style="color: #4a4947" type="checkbox" name="check"  value="manager"  onclick="checkboxCheck(this)">관 리 자
			</div>
			<table border="1" width="695" height="150">
				<tr>
					<th> 이 름 *</th>
					<td><input type="text" id="name" name="name" /></td>
				</tr>
				<tr>
					<th> 성 별 </th>
					<td><input type="radio" id="gender" name="gender" value="남"
						checked />남 <input type="radio" id="gender" name="gender"
						value="여" />여</td>
				</tr>
				<tr>
					<th> 아 이 디 *</th>
					<td><input type="text" id="id" name="id" /> <input
						type="hidden" name="reid" id="reid">
						 <input class="search1" type="button" value="중복 확인" onclick="idCheck()" /></td>
				</tr>
				<tr>
					<th> 비 밀 번 호 *</th>
					<td><input type="password" id="pw" name="pw" /></td>
				</tr>
				<tr>
					<th>비 밀 번 호 확 인</th>
					<td><input type="password" id="pw_ok" name="pw_ok">
					<strong name="check" style="font-size : 14px; color : red;"></strong></td>
				</tr>
				<tr>
					<th rowspan="2">주 소</th>
					<td><input type="text" id="addr" name="addr" /> <input
						type="button" class="search1" value="주소 찾기" onclick="post_search()" /></td>
				</tr>
				<tr>
					<td><input type="text" id="addr_f" name="addr_f" /> <input
						type="text" id="addr_b" name="addr_b" /></td>
				</tr>
				<tr>
					<th>이 메 일</th>
					<td><input type="text" name="email_id" />@<input type="text"
						name="email_addr" disabled /> 
						<select style="font:inherit; border-radius: 5px;" name="email_select" onchange="emailCheck()">
							<option value=" ">선택하세요 <!--  ▼--></option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="google.com">google.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="daum.net">daum.net</option>
					</select></td>
				</tr>
				<tr>
					<th> 전 화 번 호&nbsp;&nbsp; *</th>
					<td><input type="text" id="tel" name="tel" /></td>
				</tr>
				<tr>
					<th>자 기 소 개</th>
					<td><textarea name="intro" cols="45" rows="10" style="resize: none; overflow-y:scroll; width:515px; "></textarea></td>
				</tr>
				<tr>
					<th>업체 유형</th>
					<td><select id="categori_select" style="font:inherit; border-radius: 5px;" name="categori_select" disabled>
							<option value="없음">선택하세요 <!-- ▼ --></option>
							<option value="영화">영화</option>
							<option value="펜션">펜션</option>
							<option value="여행">여행</option>
					</select></td>
				</tr>				
				<tr>
					<th>자동 가입 방지</th>
					<td><div class="g-recaptcha"
							data-sitekey="6LeKvj0UAAAAAAGamZIE342ec-EtIkKaaWV7kxkW"></div></td>
				</tr>
			</table>
			<br> <input class="clear" type="submit" value="완료">
			 <input  class="clear" type="reset" value="다시 입력">
		</form>
	</center>
</body>
</html>