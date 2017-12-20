<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약정보</title>

<!-- jQuery를 사용하기위해 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<!-- 스크립트 시작 -->
<script>
//결제방법인 신용카드와 계좌이체를 클릭했을때 숨어있는 table를 보여주고 숨기는 조건이다
	function OnOff(v, id) {
		// 라디오 버튼 value 값 조건 비교
		if (v == "sin") {
			document.getElementById(id).style.display = ""; // 보여줌
			document.getElementById("con1").style.display = "none";
		} else if (v == "ge") {
			/* document.getElementById(con).style.display = "none"; // 숨김  */
			document.getElementById(id).style.display = ""; // 숨김
			document.getElementById("con").style.display = "none";
		}
	};
</script>

<script>

//test5(submit)를 입력했을 때 실행
//유효성검사를 한다
//checkbox는 체크가 되었는지를 확인하고
//text는 공백인지를 확인한 뒤 경고창을 띄어준다.
//중간에 신용카드를 체크했는지 계좌이체를 체크했는지를 확인하고 다시 유효성검사를 한다.
//정해진 숫자가 되지 않으면 경고를 보여준다.
	function test5() {
		if ($('input:text[name="name"]').val() == "") { //공용이름
			alert('[이름을 입력해 주세요.]');
			return false;
		} else if ($('input:text[name="email"]').val() == "") { //공용이메일
			alert('[이메일을 입력해 주세요.]');
			return false;
		} else if ($('input:text[name="tel"]').val() == "") { //공용전화번호
			alert('[전화번호를 입력해 주세요.]');
			return false;
		} else if ($('input:radio[name="check"]').is(":checked")==false) { //공용결제수단
			alert('[결제수단을 체크해 주세요.]');
			return false;
		} else if ($('input:radio[name="check"]:checked').val() == "sin") { //결제수단이 신용카드이면
			if ($('input:text[name="cardnumber1"]').val() == "") { //카드번호첫번째
				alert('[카드번호를 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="cardnumber2"]').val() == "") { //카드번호두번째
				alert('[카드번호를 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="cardnumber3"]').val() == "") { //카드번호세번째
				alert('[카드번호를 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="cardnumber4"]').val() == "") { //카드번호네번째
				alert('[카드번호를 입력해 주세요.]');
				return false;
			} else if(($('input:text[name="cardnumber1"]').val().length) != 4) { //카드번호4자리를 적었는지
	        	alert("[카드번호를 제대로 입력해 주세요.]");
	        	return false;
	        } else if(($('input:password[name="cardnumber2"]').val().length) != 4) { //카드번호4자리를 적었는지
	        	alert("[카드번호를 제대로 입력해 주세요.]");
	        	return false;
	        } else if(($('input:password[name="cardnumber3"]').val().length) != 4) { //카드번호4자리를 적었는지
	        	alert("[카드번호를 제대로 입력해 주세요.]");
	        	return false;
	        } else if(($('input:text[name="cardnumber4"]').val().length) != 4) { //카드번호4자리를 적었는지
	        	alert("[카드번호를 제대로 입력해 주세요.]");
	        	return false;
	        } else if ($('input:password[name="cardpass"]').val() == "") { //카드비밀번호
				alert('[비밀번호를 입력해 주세요.]');
				return false;
			} else if (($('input:password[name="cardpass"]').val().length) != 4) { //비밀번호4자리를 적었는지
				alert('[비밀번호를 제대로 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="cardterm1"]').val() == "") { //카드 유효기간
				alert('[유효기간 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="cardterm2"]').val() == "") { //카드 유효기간
				alert('[유효기간 입력해 주세요.]');
				return false;
			} else if (($('input:text[name="cardterm1"]').val().length) != 2) { //유효기간2자리인지
				alert('[유효기간 제대로 입력해 주세요.]');
				return false;
			} else if (($('input:text[name="cardterm2"]').val().length) != 2) { //유효기간2자리인지
				alert('[유효기간 제대로 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="cardidnumber"]').val() == "") { //주민등록번호
				alert('[주민등록번호를 입력해 주세요.]');
				return false;
			} else if (($('input:text[name="cardidnumber"]').val().length) != 6) { //주민등록번호가 6자리인지
				alert('[주민등록번호를 제대로 입력해 주세요.]');
				return false;
			}
			return true;
			//계좌이체↓
		} else if ($('input:radio[name="check"]:checked').val() == "ge") {
			if ($('input:text[name="banknumber"]').val() == "") { //계좌번호
				alert('[계좌번호를 입력해 주세요.]');
				return false;
			} else if ($('input:password[name="bankpass"]').val() == "") { //계좌비밀번호
				alert('[비밀번호를 입력해 주세요.]');
				return false;
			} else if (($('input:password[name="bankpass"]').val().length) != 4) { //계좌비밀번호유효성검사
				alert('[비밀번호를 제대로 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="bankidnumber1"]').val() == "") { //계좌주민등록번호앞자리
				alert('[주민등록번호를 입력해 주세요.]');
				return false;
			} else if (($('input:text[name="bankidnumber1"]').val().length) != 6) { //계좌주민등록번호앞자리
				alert('[주민등록번호를 제대로 입력해 주세요.]');
				return false;
			} else if ($('input:password[name="bankidnumber2"]').val() == "") { //계좌주민등록번호뒷자리
				alert('[주민등록번호를 입력해 주세요.]');
				return false;
			} else if (($('input:password[name="bankidnumber2"]').val().length) != 7) { //계좌주민등록번호뒷자리
				alert('[주민등록번호를 제대로 입력해 주세요.]');
				return false;
			} else if ($('input:text[name="bankmaster"]').val() == "") { //계좌예금주
				alert('[예금주를 입력해 주세요.]');
				return false;
			}
			return true;
		}
	}

	 // 영어와 숫자 입력 방지
    /* $("#input tel").keydown(function (e) {
        return false;
    }); */
    // 한글 입력 방지
    
    //한글과 영어등 입력 방지
    //event.keyCode
    //8 = Backspace, 46 = Delete, 37 = ←, 39 = →
    function removeChar(event) {
        event = event || window.event;
        var keyID = (event.which) ? event.which : event.keyCode;
        if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
            return;
        else
            event.target.value = event.target.value.replace(/[^0-9]/g, "");
    }
    
</script>

<style>

.center{ text-align: center;}
.form{  margin: 45px 55px 28px 55px;}

table{
border: 1px solid #4a4947; 
border-radius: 5px;

}

th{

padding: 10px 10px 10px 10px;
color: #4a4947;
border: 1px solid #4a4947; 
border-radius: 5px;

}

td{

color: #4a4947;
border: 1px solid #4a4947; 
border-radius: 5px;
padding-left: 10px;

}

input{

border-radius: 5px;
border-style: groove;
padding: 3px 0 3px 0;

}

 form.form input.user_cache{  border-radius:5px; border:1px solid #4a4947;  
background:#4a4947;  color: #fff; cursor: pointer; width: 100px; height: 30px; }

 form.form input.user_cache:hover{border-radius:5px; color:#fff; background: #ff2f4a; width: 100px; height: 30px;}



</style>


<body>
	
	
	<form name="f" action="twrite_3.wo" class="form" id="form" name="form"
		onsubmit="return test5()" method="post">
		
      <div class="center">
	<div class="line" style=" border-top: 2px solid #ff2f4a; margin: 0 auto; width:100px;"></div>
		<p style="color: #4a4947; margin-bottom: 20px;" >
		<strong style="font-size: 29px;">상세 정보 입력</strong></p>
	</div>
		
		
		<table width="845" height="400" border="1" align="center"
			cellspacing="0">
			<tbody>
				<tr height="10" align="center">
					<th colspan="2" style="background: #ff2f4a;">
					<font style="color:#ffffff;"><b>예약 정보</b></font></th>
				</tr>
				<!-- 장소를 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
				<tr>
					<th><b>패키지명</b></th>
					<td><input type="text" style="width: 170px"
						value="${twrite_2.tname }" disabled="disabled"><input
						type="hidden" name="tname" value="${twrite_2.tname }" /></td>
				</tr>
				<!-- 장소를 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
				<tr>
					<th><b>지역</b></th>
					<td><input type="text" style="width: 170px"
						value="${twrite_2.tplace }" disabled="disabled"><input
						type="hidden" name="tplace" value="${twrite_2.tplace }" /></td>
				</tr>
				<!-- 펜션이름을 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
								<!-- 인원을 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
				<tr>
					<th><b>인원</b></th>
					<td><input type="text" style="width: 170px" maxlength="18"
						value="${twrite_2.tpersonnel}" disabled="disabled"><input
						type="hidden" name="tpersonnel" value="${twrite_2.tpersonnel }" /></td>
				</tr>
				
				<tr>
					<th><b>이동수단</b></th>
					<td><input type="text" style="width: 170px" maxlength="18"
						value="${twrite_2.tvehicle }" disabled="disabled"><input
						type="hidden" name="tvehicle" value="${twrite_2.tvehicle }" /></td>
				</tr>
			
				<!-- 방이름을 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
					<!-- <tr>
					<td><b>방 이름</b></td>
					<td><input type="text" style="width: 170px" maxlength="18"
						value="${write_2.proom }" disabled="disabled"><input
						type="hidden" name="proom" value="${write_2.proom }" /></td>
				</tr>
				
				 -->
				<!-- 체크인을 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
				<tr>
					<th><b>출발일</b></th>
					<td><input type="text" style="width: 170px" maxlength="18"
						value="${twrite_2.tstart }" disabled="disabled"><input
						type="hidden" name="tstart" value="${twrite_2.tstart }" /></td>
				</tr>
				<!-- 체크아웃을 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
				<tr>
					<th><b>도착일</b></th>
					<td><input type="text" style="width: 170px" maxlength="18"
						value="${twrite_2.tend }" disabled="disabled"><input
						type="hidden" name="tend" value="${twrite_2.tend }" /></td>
				</tr>
				<!-- 가격을 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
				<tr>
					<th><b>가격</b></th>
					<td><input type="text" style="width: 170px" maxlength="18"
						value="${twrite_2.tprice}" disabled="disabled"><input
						type="hidden" name="tprice" value="${twrite_2.tprice }" /></td>
				</tr>
				<tr height="10" align="center">
					<td colspan="2" style="background: #ff2f4a;"><font
						color="#fff"><b>회원기본정보</b></font></td>
				</tr>
				<!-- 아이디를 출력 -->
				<!-- session으로 값을 받아서 출력 -->
				<!-- <input>을 2개 사용하였다 이방법을 사용했기에 쭈욱 이방법으로 했다-->
				<!-- 하나는 text로 하여 값을 출력해주고 하나는 hidden을 사용하여 숨긴뒤 name값으로 값만 보내줬다 --> 
				<tr>
					<th><b>아이디</b></th>
					<td><input type="text" style="width: 170px" maxlength="18"
						value="${id }" disabled="disabled"><input
						type="hidden" name="id" value="${id }" /></td>
				</tr>
				<!-- 이름을 입력받고 -->
				<!-- 입력받은 값을 보낸다 -->
				<tr>
					<th><b>이름</b></th>
					<td><input type="text" style="width: 170px" name="name"
						value="" maxlength="12"><br/>
					<!-- 	<input type="text" style="width: 170px" name="name"
						value="" maxlength="12"> -->
						</td>
				</tr>
				<!-- 메일을 입력받고 -->
				<!-- 입력받은 값을 보낸다 -->
				<tr>
					<th><b>메일주소</b></th>
					<td><input type="text" style="width: 170px" name="email"
						id="email">&nbsp;
						ex)dpdpasswordl57@hanaddress.net</td>
				</tr>
				<!-- 핸드폰번호를 입력받고 -->
				<!-- 입력받은 값을 보낸다 -->
				<tr>
					<th><b>핸드폰 번호</b></th>
					<td><input type="text"
						style="width: 170px; ime-mode:disabled" name="tel" id="tel"
						 maxlength="13" onkeyup="removeChar(event)">&nbsp;&nbsp;하이픈(-)은 
						입력하지 마세요.</td>
				</tr>
				<!-- 건의사항을 입력받고 -->
				<!-- 입력받은 값을 보낸다 -->
				<tr>
					<th><b>건의사항</b></th>
					<td style="padding:0px;"><textarea name="questions" cols="40" rows="7"
							style="width: 724px;  overflow-y:scroll; resize: none;"></textarea></td>
				</tr>


				<tr height="10" align="center">
					<td colspan="2" style="background: #ff2f4a;"><font
						color="#fff"><b>결제방법</b> </font></td>
				</tr>
				<!-- 결제방법을 선택한다 -->
				<!-- 선택받은속성을 표시해준다 -->
				<!-- 입력받은 값을 보낸다 -->
				<tr height="10" align="center">
					<td colspan="2"><b><input type="radio" name="check"
							value="sin" onclick="OnOff(this.value,'con');">신용카드</b> <b><input
							type="radio" name="check" value="ge"
							onclick="OnOff(this.value,'con1');">계좌이체</b></td>
				</tr>
			</tbody>
		</table>
		<table id="con" style="display: none" width="830" border="1"
			align="center" cellspacing="0">
			<!-- select를 이용하여 리스트로 카드의 종류를 보여준다 -->
			<!-- 사용자가 입력한 은행을 입력한다 -->
			<tr>
				<th width="140">신용카드</th>
				<td><select name="card" style="height: 22px; font: inherit;">
						<option value="신한">신한</option>
						<option value="기업">기업</option>
						<option value="농협">농협</option>
						<option value="국민">국민</option>
						<option value="삼성">삼성</option>
						<option value="현대">현대</option>
				</select></td>
			</tr>
			<!-- 카드번호를 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>카드번호</th>
				<td><input type="text" name="cardnumber1" maxlength="4"
					style="width: 40px" onkeyup="removeChar(event)">-<input
					type="password" name="cardnumber2" maxlength="4"
					style="width: 40px" onkeyup="removeChar(event)">-<input
					type="password" name="cardnumber3" maxlength="4"
					style="width: 40px" onkeyup="removeChar(event)">-<input
					type="text" name="cardnumber4" maxlength="4" style="width: 40px"
					onkeyup="removeChar(event)"></td>
			</tr>
			<!-- 비밀번호를 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="cardpass" maxlength="4"
					onkeyup="removeChar(event)"></td>
			</tr>
			<!-- 유효기간을 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>유효기간</th>
				<td><input type="text" name="cardterm1" maxlength="2"
					onkeyup="removeChar(event)">월&nbsp;<input
					type="text" name="cardterm2" maxlength="2"
					onkeyup="removeChar(event)">년&nbsp;(2자리수로 입력해주세요.)</td>
			</tr>
			<!-- 생년월일을 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>법정생년월일</th>
				<td><input type="text" name="cardidnumber" maxlength="6"
					onkeyup="removeChar(event)">-*******</td>
			</tr>
		</table>
		<table id="con1" style="display: none" width="830" border="1"
			align="center" cellspacing="0">
			<!-- select를 이용하여 리스트로 카드의 종류를 보여준다 -->
			<!-- 사용자가 입력한 은행을 입력한다 -->
			<tr>
				<th width="140">계좌이체</th>
				<td><select name="bank" style="height: 22px; font: inherit;">
						<option value="신한">신한</option>
						<option value="기업">기업</option>
						<option value="농협">농협</option>
						<option value="국민">국민</option>
						<option value="삼성">삼성</option>
						<option value="현대">현대</option>
				</select></td>
			</tr>
			<!-- 출금계좌번호를 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>출금계좌번호</th>
				<td><input type="text" name="banknumber" maxlength="15"
					onkeyup="removeChar(event)">'-' 생략</td>
			</tr>
			<!-- 비밀번호를 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="bankpass" maxlength="4"
					onkeyup="removeChar(event)"></td>
			</tr>
			<!-- 주민등록번호를 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>주민등록번호</th>
				<td><input type="text" maxlength="6" name="bankidnumber1"
					style="width: 60px" onkeyup="removeChar(event)">&nbsp;<input
					type="password" name="bankidnumber2" maxlength="7"
					onkeyup="removeChar(event)"></td>
			</tr>
			<!-- 예금주를 입력받는다 -->
			<!-- 입력받은 값을 보낸다 -->
			<tr>
				<th>예금주</th>
				<td><input type="text" name="bankmaster" maxlength="5"></td>
			</tr>
		</table>
		<center>
			<br> <input class="user_cache" type="submit" value="결제" style="border-radius: 5px;"> 

			<input class="user_cache" type="reset" value="다시입력" style="border-radius: 5px;">
		</center>
	</form>
</body>
</html>