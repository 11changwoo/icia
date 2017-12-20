<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 예매페이지</title>


<!-- 아래↓3개는 jQuery의 달력을 출력하기위한 참고 -->
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

/* #ticket .section {position:relative;float:left;height:100%;margin-left:2px;background-color:#f2f0e5;overflow:hidden;}
#ticket .section .col-head{position:relative;line-height:10px;text-align:center;background-repeat:no-repeat;background-position:50% 50%;width:200px;} */
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
	height: 453px;
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
	margin-right: 144px;
	margin-top: 29px;
}

#ticket input.clear_1:hover {
	border-radius: 5px;
	color: #fff;
	background: #ff2f4a;
	width: 165px;
	height: 59px;
}

#ticket .Calendar {
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
	cursor: pointer;
	text-align: center;
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

	//지역 값
	//test(obj)를 지우면 checkbox가 다중체크가 된다 그러니 남겨둘것(O,o든 상관없는 듯하다)
	function test(obj) {
		alert(Obj);
		sub = Obj.value;
		return false;
	}

	//mplace(지역)의 checkbox를 다중체크못하게 만든다
	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="mplace"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
								$('input[type="checkbox"][name="mplace"]').prop(
										'checked', false);
								$(this).prop('checked', true);
							}
						});
			});

	//영화 이름 값
	//test1(Obj)를 지우면 checkbox가 다중체크가 된다 그러니 남겨둘것(O,o든 상관없는 듯하다)
	function test1(Obj) {

		alert(obj.value);
		sub = sub + ", " + obj.value;

		return false;
	}

	//mname(영화이름)의 checkbox를 다중체크못하게 만든다
	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="mname"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
								$('input[type="checkbox"][name="mname"]').prop(
										'checked', false);
								$(this).prop('checked', true);
							}
						});
			});

	//test2(Obj)를 지우면 checkbox가 다중체크가 된다 그러니 남겨둘것(O,o든 상관없는 듯하다)
	function test2(Obj) {

		alert(obj.value);
		sub = sub + ", " + obj.value;
		return false;
	}

	//test3(Obj)를 지우면 checkbox가 다중체크가 된다 그러니 남겨둘것(O,o든 상관없는 듯하다)
	function test3(Obj) { /* 방 이름 값 */

		alert(obj.value);
		sub = sub + ", " + obj.value;
		return false;
	}

	//mroom(극장)의 checkbox를 다중체크못하게 만든다
	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="mroom"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
								$('input[type="checkbox"][name="mroom"]').prop(
										'checked', false);
								$(this).prop('checked', true);
							}
						});
			});

	//mpersonnel(인원)의 checkbox를 다중체크못하게 만든다
	$(document).ready(
			function() {
				//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
				$('input[type="checkbox"][name="mpersonnel"]').click(
						function() {
							//클릭 이벤트 발생한 요소가 체크 상태인 경우
							if ($(this).prop('checked')) {
								//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
								$('input[type="checkbox"][name="mpersonnel"]')
										.prop('checked', false);
								$(this).prop('checked', true);
							}
						});
			});


	// 특정날짜들 배열
	// DB에 업체가 등록한 날짜들만 가져와서 대입
	// 실행하면 에러가 생기지만 이상은 없이 잘 구동된다
	//반복문을 이용하여 DBtable test_mt(업체가 등록한)의 mday을 반복해서 보여준다 -->
	//test_DAO의 list_m를 이용하여 가져온다
	//m_test.java, test_DAO.java
		var disabledDays = 
			[
				<c:forEach items="${monday}" var="list" varStatus="status">
					"${list.mday1}" <c:if test="${not status.last}">, </c:if>
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
		

</script>

<script>

//test5(submit)를 입력했을 때 실행
//유효성검사를 한다
//checkbox는 체크가 되었는지를 확인하고
//text는 공백인지를 확인한 뒤 경고창을 띄어준다.
function test5(Obj) {
	if ($('input:checkbox[name="mplace"]').is(":checked")==false) {
		alert('[지역을 입력해 주세요.]');
		return false;
	} else if ($('input:checkbox[name="mname"]').is(":checked")==false) {
		alert('[영화이름을 입력해 주세요.]');
		return false;
	} else if ($('input:checkbox[name="mroom"]').is(":checked")==false) {
		alert('[극장을 입력해 주세요.]');
		return false;
	} else if ($('input:checkbox[name="mpersonnel"]').is(":checked")==false) {
		alert('[인원을 입력해 주세요.]');
		return false;
	} else if($('input:text[name="mdays"]').val() == "") {
		alert('[날짜를 입력해 주세요.]');
		return false;
	}
	return true;
}

</script>

</head>
<body>
	<form action="mwrite.wo" method="post" class="form" id="form"
		name="form1">
		
			<div class="top_line" style="margin-left: 462px;  margin-top:57px;">
			<div class="line"
				style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 136px;"></div>
			<p style="color: #4a4947;">
				<strong style="font-size: 29px; margin-left: 84px;">영화 예매페이지</strong>
			</p>

		</div>
		
		<div id="ticket">
			<div class="steps section" style="float: left; margin-bottom: 20px; overflow: hidden;
			margin: 20px 0 20px 147px; border-bottom: 1px solid #4a4947; width: 973px;">
				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947; border-left: 1px solid #4a4947;
					 height: auto; width: 150px;">
					<h3 style="color: white">지 역</h3>
					<p style="clear: both;"></p>
					<div>
						<ul>
							<!-- 반복문을 이용하여 DBtable test_mt(업체가 등록한)의 mplace1을 반복해서 보여준다 -->
							<!-- test_DAO의 list_m를 이용하여 가져온다 -->
							<!-- m_test.java, test_DAO.java -->
							<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="mplace"로 넘겨준다 -->
							<c:forEach items="${list }" var="list">
								<li id="ck-button"><label><input type="checkbox"
										class="te2" value="${list.mplace1 }" onclick="test(this);"
										name="mplace" id="mplace"><span>${list.mplace1 }</span></label></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947;  width: 315px;">
					<h3 style="color: white">영화 이름</h3>
					<p style="clear: both;"></p>
					<div>
						<ul>
							<!-- 반복문을 이용하여 DBtable test_mt(업체가 등록한)의 mname1을 반복해서 보여준다 -->
							<!-- test_DAO의 list_m를 이용하여 가져온다 -->
							<!-- m_test.java, test_DAO.java -->
							<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="mname"로 넘겨준다 -->
							<!-- 그리고 onclick에 window.open을 사용하여 팝업창을 보여준다 -->
							<!-- window.open의 url주소를 mpopup.wo로 잡아준다
						mpopup.wo는 mpopupcommand.java로 넘어간뒤 mbookingDTO.java의 mpopup을 이용한다 -->
							<!-- mpopupcommand.java, mbookingDTO.java -->
							<c:forEach items="${list }" var="list">
								<li id="ck-button"><label style="width: 150px;"><input
										type="checkbox" class="te" value="${list.mname1 }"
										onclick="window.open('mpopup.wo?mroomname=${list.mroom1}','','width=555,height=500, status=yes, toolbar=no, menubar=no, location=no, scrollbars=yes')" name="mname" id="mname"><span>${list.mname1 }</span></label></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947; width: 150px;">
					<h3 style="color: white">극 장</h3>
					<p style="clear: both;"></p>
					<div>
						<ul>
							<!-- 반복문을 이용하여 DBtable test_mt(업체가 등록한)의 mroom1을 반복해서 보여준다 -->
							<!-- test_DAO의 list_m를 이용하여 가져온다 -->
							<!-- m_test.java, test_DAO.java -->
							<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="mroom"로 넘겨준다 -->
							<c:forEach items="${list }" var="list">
								<li id="ck-button"><label><input type="checkbox"
										class="te2" value="${list.mroom1 }"
										onclick="test1(this); return false;"
										name="mroom" id="mroom"><span>${list.mroom1 }</span></label></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947; width: 150px;">
					<h3 style="color: white">인 원</h3>
					<p style="clear: both;"></p>
					<ul>
						<!-- 반복문을 이용하여 DBtable test_mt(업체가 등록한)의 mpersonnel1을 반복해서 보여준다 -->
						<!-- test_DAO의 list_m를 이용하여 가져온다 -->
						<!-- m_test.java, test_DAO.java -->
						<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="mpersonnel"로 넘겨준다 -->
						<c:forEach items="${list }" var="list">
							<li id="ck-button"><label><input type="checkbox"
									class="te2" value="${list.mpersonnel1 }"
									onclick="test2(this);  return false;" name="mpersonnel"
									id="mpersonnel"><span>${list.mpersonnel1 }</span></label></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-head "
					style="float: left; border-right: 1px solid #4a4947; 
						position: relative; width: 202px; height: 555px;">
					<h3 style="color: white">날 짜</h3>
					<p style="clear: both;"></p>
					<div
						style="height: 453px; -webkit-margin-before: 1em; -webkit-margin-after: 1em;">
						<!-- 해당 메소드에서 선택자로 지명한 id가 testDatepicker인 input 태그를 추가합니다. -->
						<!-- 위에 <script>에서 jQuery에서 값을 가져와서 보여준다 -->
						<!-- test_DAO의 list_m를 이용하여 가져온다 -->
						<!-- m_test.java, test_DAO.java -->
						<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="mday"로 넘겨준다 -->
						
						<div class="Calendar">
						
						<p style="clear: both;">
							<strong>날 짜</strong><br> 
							<input class="Calendarimg" type="text" id="testDatepicker" 
							name="mday" id="mday" readonly style="cursor: pointer; margin-top: 20px;">
						</p>
						</div>
						<!-- 반복문을 이용하여 DBtable test_mt(업체가 등록한)의 mprice1을 반복해서 보여준다 -->
						<!-- test_DAO의 list_m를 이용하여 가져온다 -->
						<!-- m_test.java, test_DAO.java -->
						<!-- 그리고 값을 넘겨줄땐 사용자가 체크한 값을 name="mprice"로 넘겨준다 -->
						<c:forEach items="${list }" var="list">
							<input type="hidden" name="mprice" value="${list.mprice1 }">
						</c:forEach>
					</div>
				</div>
			</div>
			
			<input class="clear_1" type="submit" value="완료" onclick="return test5()">
		</div>
	</form>
</body>
</html>