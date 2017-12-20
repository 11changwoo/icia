<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>여행 페이지 폼</title>

<!-- // jQuery UI CSS파일 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- // jQuery 기본 js파일 -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- 참고 사이트 http://www.nextree.co.kr/p9887/ -->

<style>
#ticket {
	/*height: 530px;*/
	width: 100%;
	margin: 0 auto;
}

#ticket .steps {
	position: relative;
	width: 100%;
}

#ticket .steps .step {
	position: relative;
}

#ticket .steps .step1 {
	height: 530px;
	background-color: #d4d3c9;
}

#ticket .steps .step2 {
	display: none;
	height: 530px;
	background-color: #d4d3c9;
}

#ticket .steps .step3 {
	display: none;
}

#ticket .steps .step4 {
	display: none;
	background-color: #d4d3c9;
	overflow: hidden;
	padding-bottom: 2px;
}

#ticket .steps .step2 .section-group-left {
	float: none;
	width: 300px;
	position: absolute;
	top: 0;
	left: 100%;
}

input {
	font: inherit;
}

#ck-button {
	margin: 4px;
	border-radius: 5px;
	border: 1px solid #4a4947;
	overflow: auto;
	/* float:left; */
	overflow-y: hidden;
}

#ck-button label {
	/* float:left; */
	width: 4.0em;
	text-align: center;
}

#ck-button label span {
	text-align: center;
	padding: 5px 0px;
	display: block;
	cursor: pointer;
}

#ck-button label input {
	position: absolute;
	top: -20px;
}

#ck-button input:checked+span {
	background-color: #ff2f4a;
	color: #fff;
}

.sreader {
	display: block;
}

input.te {
	border: 0px;
	outline: 0;
	background-color: #F2F0E4;
	text-align: center;
	width: 200px;
	font-size: 16px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	cursor: pointer;
}

input.te2 {
	border: 0px;
	outline: 0;
	background-color: #F2F0E4;
	text-align: left;
	width: 200px;
	font-size: 16px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	margin-left: 58px;
	cursor: pointer;
}

ul {
	list-style: none;
	text-align: center;
	padding: 0;
	overflow-x: hidden;
	overflow-y: scroll;
	height: 450px;
	margin
}

button {
	background-color: #F2F0E4;
	font-size: 17px;
	border: 0;
	padding: 0;
	outline: 0
}

li {
	height: 30px;
}

.nano .content.scroll-y {
	overflow-x: hidden;
}

h3 {
	background-color: #ff2f4a;
	padding: 20px 10px;
	font-size: 1.17em;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	font-weight: bold;
	text-align: center;
	margin-top: 0px;
	margin-bottom: 0px;
	height: 30px;
}

input {
	border-radius: 5px;
	border-style: groove;
	padding: 3px 0 3px 0;
}

.Information input.form_0 {
	display: block;
	*display: inline-block;
	padding: 10px 216px 10px 10px;
	margin-left: 10px;
}

.e-mail_1 {
	margin-top: 20px;
	margin-bottom: 20px;
}

#ticket input.clear_1 {
	border-radius: 5px;
	border: 1px solid #4a4947;
	float: right;
	background: #4a4947;
	color: #fff;
	cursor: pointer;
	width: 165px;
	height: 59px;
	margin-right: 48px;
	margin-top: 29px;
}

#ticket input.clear_1:hover {
	border-radius: 5px;
	color: #fff;
	background: #ff2f4a;
	width: 165px;
	height: 59px;
}

.Calendar {
	text-align: center;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	position: absolute;
	top: 173px;
	z-index: 99999999999999999999;
	left: 14px;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
}

#ticket .Calendar input.Calendarimg {
	background-image: url("img/Calendar.png");
	background-repeat: no-repeat;
	background-size: 15px 15px;
	background-position: 10px;
	display: block;
	*display: inline-block;
	padding: 10px 10px 10px 10px;
	margin-bottom: 20px;
	margin-top: 20px;
	text-align: center;
	cursor: pointer;
}
</style>

<script>
//("#testDatepicker").datepicker는 jQuery의 달력
$(function() {
	$("#testDatepicker").datepicker(
			{
				closeText : '닫기',
				prevText : '이전달',
				nextText : '다음달',
				currentText : '오늘',
				monthNames : [ '1월(JAN)', '2월(FEB)', '3월(MAR)', '4월(APR)',
						'5월(MAY)', '6월(JUN)', '7월(JUL)', '8월(AUG)', '9월(SEP)',
						'10월(OCT)', '11월(NOV)', '12월(DEC)' ],
				monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
						'9월', '10월', '11월', '12월' ],
				dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
				//↑각각의 달력의 출력되는 text를 변경한 것
				weekHeader : 'Wk',
				//출력되는 데이터 포멧
				dateFormat : 'yymmdd',
				//오늘, 닫기버튼을 생성
				showButtonPanel : true,
				firstDay : 0,
				isRTL : false,
				//다음달과 년도를 넘어가는것을 출력
				showMonthAfterYear : true,
				yearSuffix : '',
				//달력이 바뀌는것을 보여준다
				changeMonth : true,
				yearRange : 'c-99:c+99',
				constrainInput : true,
				//다음달력을 최대 1년까지만 보여준다.
				maxDate : '+1y',
				beforeShowDay : daych
			});
});

//("#testDatepicker").datepicker는 jQuery의 달력
$(function() {
	$("#testDatepicker1").datepicker(
			{
				closeText : '닫기',
				prevText : '이전달',
				nextText : '다음달',
				currentText : '오늘',
				monthNames : [ '1월(JAN)', '2월(FEB)', '3월(MAR)', '4월(APR)',
						'5월(MAY)', '6월(JUN)', '7월(JUL)', '8월(AUG)', '9월(SEP)',
						'10월(OCT)', '11월(NOV)', '12월(DEC)' ],
				monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
						'9월', '10월', '11월', '12월' ],
				dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
				//↑각각의 달력의 출력되는 text를 변경한 것
				weekHeader : 'Wk',
				//출력되는 데이터 포멧
				dateFormat : 'yymmdd',
				//오늘, 닫기버튼을 생성
				showButtonPanel : true,
				firstDay : 0,
				isRTL : false,
				//다음달과 년도를 넘어가는것을 출력
				showMonthAfterYear : true,
				yearSuffix : '',
				//달력이 바뀌는것을 보여준다
				changeMonth : true,
				yearRange : 'c-99:c+99',
				constrainInput : true,
				//다음달력을 최대 1년까지만 보여준다.
				maxDate : '+1y',
				beforeShowDay : daych

			});
});

//특정날짜들 배열
// DB에 업체가 등록한 날짜들만 가져와서 대입
// 실행하면 에러가 생기지만 이상은 없이 잘 구동된다
//반복문을 이용하여 DBtable travel(업체가 등록한)의 tstatr, tend을 반복해서 보여준다 -->
//test_DAO의 list를 이용하여 가져온다
//p_test.java, test_DAO.java
	var disabledDays = 
		[
			<c:forEach items="${list1 }" var="list" varStatus="status">
			"${list.tstart}","${list.tend}" <c:if test="${not status.last}">, </c:if>
			</c:forEach>
		];
	

	// 특정일 선택막기
	// 오늘날 이전으로 모두 막기
	// DB에 업체가 등록한 날짜들만 선택해서 달력에 선택할 수 있게 활성화 해준다
	function daych(date) {
		 var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
		 if(m < 10) {
			 m = "0"+m;
		 }
		 if(d < 10) {
			 d = "0"+d;
		 }
		for (i = 0; i < disabledDays.length; i++) {
			if ($.inArray(y+ "" +(m + 1)+ "" + d, disabledDays) == -1) {
				return [ false ];
			}
		}
		if (date < new Date())
			return [ false ];
		return [ true ];
	}

	
	function test(obj) { 
		/* var a = document.getElementById("this"); */
		sub = obj.value;
		return false;
	}

	function test1(obj) { 
		/* var a = document.getElementById("this"); */
		sub = sub + ", " + obj.value;
		return false;
	}

	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="tname"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
								$('input[type="checkbox"][name="tname"]').prop(
										'checked', false);
								$(this).prop('checked', true);
							}
						});
			});

	function test2(obj) { 
		/* var a = document.getElementById("this"); */
		sub = sub + ", " + obj.value;
		return false;
	}

	function test6(obj) { 
		/* var a = document.getElementById("this"); */
		sub = sub + ", " + obj.value;
		return false;
	}

	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="tvehicle"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
								$('input[type="checkbox"][name="tvehicle"]').prop(
										'checked', false);
								$(this).prop('checked', true);
							}
						});
			});

	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="tpersonnel"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
								$('input[type="checkbox"][name="tpersonnel"]')
										.prop('checked', false);
								$(this).prop('checked', true);
							}
						});
			});
	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="tplace"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
								$('input[type="checkbox"][name="tplace"]')
										.prop('checked', false);
								$(this).prop('checked', true);
							}
						});
			});

/* 
	$("input[name=tel1]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[^0-9]/g, ""));
	});
	$("input[name=tel2]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[^0-9]/g, ""));
	});
	$("input[name=personnel]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[^0-9]/g, ""));
	});
	$("input[name=change_date1]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[^0-9]/g, ""));
	});
	$("input[name=change_date2]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[^0-9]/g, ""));
	});
	$("input[name=email1]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[ㄱ-ㅎ가-힣ㅏ-ㅣ]/g, ""));
	});
	$("input[name=email2]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[ㄱ-ㅎ가-힣ㅏ-ㅣ]/g, ""));
	});
	$("input[name=engname]").on('keyup blur', function() {
		$(this).val($(this).val().replace(/[ㄱ-ㅎ가-힣ㅏ-ㅣ]/g, ""));
	});

	function email_change() {
		if(document.form.email_select.value == " ") {
			document.form.email2.value="";
		} else {
			document.form.email2.value=document.form.email_select.value;
		}
	}
 */
	/* 숫자만 입력받기
	    function fn_press(event, type) {
	        if(type == "numbers") {
	            if(event.keyCode < 48 || event.keyCode > 57) return false;
	            //onKeyDown일 경우 좌, 우, tab, backspace, delete키 허용 정의 필요
	        }
	    }
	
	 */
	/* 한글입력 방지 */
	function fn_press_han(obj) {
		//좌우 방향키, 백스페이스, 딜리트, 탭키에 대한 예외
		if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37
				|| event.keyCode == 39 || event.keyCode == 46)
			return;
		//obj.value = obj.value.replace(/[\a-zㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
		obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
	}

	//영문 입력 막기
	function NumObj(obj) {
		if (event.keyCode >= 48 && event.keyCode <= 57) { //영문 키이벤트등 뺀 나머지일 경우
			return true;
		} else {
			event.returnValue = false;
		}
	}

	function test5(Obj) {
/* 						if (!$("input[name=korname]").val()) {
							alert("한글 이름을 입력해주세요.");
							$("input[name=korname]").focus();
							return false;
						}
						if (!$("input[name=engname]").val()) {
							alert("영문 이름을 입력해주세요.");
							$("input[name=engname]").focus();
							return false;
						}
						if (!$("input[name=email1]").val()
								|| !$("input[name=email2]").val()) {
							alert("이메일을 입력해주세요.");
							return false;
						}
						var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
						var email = $("input[name=email1]").val() + "@"
								+ $("input[name=email2]").val();
						if (!regEmail.test(email)) {
							alert("이메일 주소가 유효하지 않습니다..")
							return false;
						}
						if (!$("input[name=tel1]").val()
								|| !$("input[name=tel2]").val()) {
							alert("휴대전화를 입력해주세요.");
							return false;
						}

						if (!$("input[name=airport]").is(":checked")) {
							alert("항공편을 선택해주세요.");
							$("input[name=airport]").focus();
							return false;
						}
						if (!$("input[name=class]").is(":checked")) {
							alert("클래스를 선택해주세요.");
							$("input[name=class]").focus();
							return false;
						} */
						
						if (!$("input[name=tname]").is(":checked")) {
							alert("패키지명을 선택해주세요.");
							$("input[name=tname]").focus();
							return false;
						}
						if (!$("input[name=tpersonnel]").is(":checked")) {
							alert("여행인원을 선택해주세요.");
							$("input[name=tpersonnel]").focus();
							return false;
						}
						if (!$("input[name=tplace]").is(":checked")) {
							alert("여행지역을 선택해주세요.");
							$("input[name=tplace]").focus();
							return false;
						}
						if (!$("input[name=tvehicle]").is(":checked")) {
							alert("이동수단을 선택해주세요.");
							$("input[name=tvehicle]").focus();
							return false;
						}
						if (!$("input[name=tstart]").val()) {
							alert("출발날짜를 입력해주세요.");
							$("input[name=tstart]").focus();
							return false;
						}
						if (!$("input[name=tend]").val()) {
							alert("귀국날짜를 입력해주세요.");
							$("input[name=tend]").focus();
							return false;
						}
						return true;
	}
</script>

</head>
<body>
	<form action="twrite.wo" method="post" id="form" name="form">
		<div class="top_line" style="margin-left: 462px; margin-top: 57px;">
			<div class="line"
				style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 136px;"></div>
			<p style="color: #4a4947;">
				<strong style="font-size: 29px; margin-left: 84px;">여행
					예매페이지</strong>
			</p>
		</div>
		<div id="ticket">

			<div class="steps section" style="float: left; margin-bottom: 20px; overflow: hidden; margin: 20px 0 20px 147px; border-bottom: 1px solid #4a4947; width: 1031px;">


				<!-- <div class="Information"
					style="float: left; border-right: 1px solid gray; border-left: 1px solid gray; height: 552px; width: 403px;">

					<h3 style="color: white; margin-bottom: 150px;">여행자 정보</h3>

					<input class="form_0" id="online_form " type="text"
						placeholder="name" name="korname">

					<div class="e-mail_1">
						<input id="online_form " onkeydown="fn_press_han(this);"
							placeholder="e-mail" type="text" name="email1"
							style="width: 105px; margin-left: 10px; padding: 3px 2px 3px 10px;" />
						@ <input id="online_form " onkeydown="fn_press_han(this);"
							type="text" name="email2" disabled
							style="width: 105px; margin-left: 10px;" /> <select
							style="font: inherit; border-radius: 5px;" name="email_select"
							onchange="email_change()">
							<option value=" ">선택하세요.</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="google.com">google.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="daum.net">daum.net</option>
						</select>
					</div>

					<input class="form_0" type="text" name="tel" id="tel1"
						onkeyup="removeChar(event)" placeholder="tellephone">


				</div> -->

				<div class="col-head"
					style="float: left; border-right: 1px solid #4a4947; border-left: 1px solid #4a4947; height: 555px; width: 315px;">
					<h3 style="color: white">패키지 이름</h3>
					<p style="clear: both;"></p>
					<div>
						<ul>
							<!-- 반복문을 이용하여 DBtable (업체가 등록한)의 tname을 반복해서 보여준다 -->
							<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="tname"로 넘겨준다 -->
							<c:forEach items="${list }" var="list">
								<li id="ck-button"><label style="width: 150px;"><input
										type="checkbox" class="te" value="${list.tname }"
										onclick="test1(this); return false;" name="tname" id="tname"><span>${list.tname }</span></label></li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="col-head "
					style="float: left; height: auto; width: 207px;">
					<h3 style="color: white">인 원</h3>
					<p style="clear: both;"></p>
					<ul>
						<!-- 반복문을 이용하여 DBtable test_t(업체가 등록한)의 personnel1을 반복해서 보여준다 -->
						<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="personnel"로 넘겨준다 -->
						<c:forEach items="${list }" var="list">
							<li id="ck-button"><label><input type="checkbox"
									class="te2" value="${list.tpersonnel }"
									onclick="test2(this);  return false;" name="tpersonnel"
									id="tpersonnel"><span>${list.tpersonnel }</span></label></li>
						</c:forEach>
					</ul>
				</div>


				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947; border-left: 1px solid #4a4947; height: auto; width: 150px;">
					<h3 style="color: white">지 역</h3>
					<p style="clear: both;"></p>
					<div>
						<ul>
							<!-- 반복문을 이용하여 DBtable test_t(업체가 등록한)의 place1을 반복해서 보여준다 -->
							<!-- test_DAO의 list를 이용하여 가져온다 -->
							<!-- p_test.java, test_DAO.java -->
							<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="place"로 넘겨준다 -->
							<c:forEach items="${list }" var="list">
								<li id="ck-button"><label><input type="checkbox"
										class="te2" value="${list.tplace }"
										onclick="window.open('tpopup.wo?tplacename=${list.tplace}','','width=555,height=500, status=yes, toolbar=no, menubar=no, location=no, scrollbars=no, outerHeight=500, outerWidth=500')"
										name="tplace" id="tplace"><span>${list.tplace }</span></label></li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947; height: auto; width: 151px;">
					<h3 style="color: white">이동수단 종류</h3>
					<p style="clear: both;"></p>
					<div>
						<!-- <ul>
							<li id="ck-button"><label><input id="online_form"
									type="checkbox" class="te" value="뱅기" readonly
									onclick="test1(this);  return false;" name="pname"
									style="display: none;"> <span style="color: #4a4947">비행기</span></label></li>
							<li id="ck-button"><label><input id="online_form"
									type="checkbox" class="te" value="버스" readonly
									onclick="test1(this);  return false;" name="pname"
									style="display: none;"> <span style="color: #4a4947">버어스</span></label></li>
							<li id="ck-button"><label><input id="online_form"
									type="checkbox" class="te" value="배" readonly
									onclick="test1(this);  return false;" name="pname"
									style="display: none;"> <span style="color: #4a4947">배에에</span></label></li>
						</ul> -->
						<ul>
							<!-- 반복문을 이용하여 DBtable test_t(업체가 등록한)의 place1을 반복해서 보여준다 -->
							<!-- test_DAO의 list를 이용하여 가져온다 -->
							<!-- p_test.java, test_DAO.java -->
							<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="place"로 넘겨준다 -->
							<c:forEach items="${list }" var="list">
								<li id="ck-button"><label><input type="checkbox"
										class="te2" value="${list.tvehicle }" onclick="test(this);"
										name="tvehicle" id="tvehicle"><span>${list.tvehicle }</span></label></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947; position: relative; width: 202px; height: 555px;">
					<h3 style="color: white">날 짜</h3>
					<p style="clear: both;"></p>
					<div class="Calendar">
						<!-- 해당 메소드에서 선택자로 지명한 id가 testDatepicker인 input 태그를 추가합니다. -->

						<strong style="color: #4a4947">체크 인</strong><br> <input
							class="Calendarimg" type="text" id="testDatepicker"
							id="online_form" name="tstart" /> <strong
							style="color: #4a4947">체크 아웃 </strong><br> <input
							class="Calendarimg" type="text" id="testDatepicker1"
							id="online_form" name="tend">


					</div>
				</div>
			</div>
			<input class="clear_1" type="submit" value="완료"
				onclick="return test5()" />
		</div>
	</form>


</body>
</html>