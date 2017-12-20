<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>좌석 예약</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<style>
div.cl {
	width: 20px;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
	border: 1px solid white;
	height: 20px;
	margin-right: 5px;
	float: left;
}

input.te {
	width: 20px;
	background: gray;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
	border: 1px solid gray;
	height: 20px;
	margin-right: 5px;
	cursor: pointer;
	float: left;
}

input:hover {
	background: black;
	cursor: pointer;
}

/* ck-button은 checkbox의 style */
#ck-button {
	margin: 4px;
	background-color: #EFEFEF;
	border-radius: 4px;
	border: 1px solid #D0D0D0;
	overflow: auto;
	width: 30px;
	float: left;
}

#ck-button label {
	/* float:left; */
	width: 4.0em;
	text-align: center;
}

#ck-button label span {
	text-align: center;
	padding: 3px 0px;
	display: block;
	widtd: 10px;
}

#ck-button label input {
	position: absolute;
	top: -50px;
	/* dispaly: none; */
}

#ck-button span:hover {
	background-color: #622;
	color: #fff;
}

#ck-button input:checked+span {
	background-color: #911;
	color: #fff;
}

form.center {
	position: relative;
	display: inline-block;
	border: 1px solid #f2f2f2;
	margin: 20px 0 0 420px;
}

input.movie_click {
	border-radius: 5px;
	border: 1px solid #4a4947;
	background: #4a4947;
	color: #fff;
	cursor: pointer;
	width: 400px;
	height: 30px;
	margin-left: 86px;
	position: absolute;
	bottom: -46px;
	left: -84px;
	z-index: 999999999999999999;
}

input.movie_click:hover {
	border-radius: 5px;
	color: #fff;
	background: #ff2f4a;
	width: 400px;
	height: 30px;
}
</style>

<script>
	var sub = "";
	function up(obj) {
		alert(obj.value);
		sub = sub + obj.value + " ";

		if (obj.style.background == "#ff2f4a") {
			obj.style.background = "#4a4947"

		} else {
			obj.style.background = "#ff2f4a";

		}
	}
	/*//중복체크안되게 	
	 $(document).ready(
	 function() {
	 //라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
	 $('input[type="checkbox"][name="seat"]').click(
	 function() {
	 //클릭 이벤트 발생한 요소가 체크 상태인 경우
	 if ($(this).prop('checked')) {
	 //체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정 
	 $('input[type="checkbox"][name="seat"]').prop(
	 'checked', false);
	 $(this).prop('checked', true);
	 }
	 });
	 });
	 */
</script>

</head>
<body>

	<div class="top_line" style="margin-left: 433px; margin-top: 236px;">
		<div class="line"
			style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 136px;"></div>
		<p style="color: #4a4947;">
			<strong style="font-size: 29px; margin-left: 84px;">좌석 예약페이지</strong>
		</p>

	</div>


	<form class="center" action="mwrite_2.wo" method="post">
		<div style="border: 1px solid; width: 400px; height: 30px; border-radius: 5px; padding-top: 5px; text-align: center; background: #4a4947; color: white;">screen</div>
		
		<c:set var="i" value="0" />
		<c:set var="j" value="10" />
		<c:forEach items="${seat_m }" var="sm" varStatus="status">
		 <c:if test="${i%j == i }">
		 	
			<div id="ck-button" style="margin-left : 125px">
				<label><input type="checkbox" style="display: none;"
					class="te" value="${sm.a}" name="seat1" onclick="up(this)" readonly><span>${sm.a}</span></label>
			</div>
			<div id="ck-button"><label><input type="checkbox" style="display : none;" class="te" value="${sm.b}" name="seat2"
				onclick="up(this)" readonly><span>${sm.b}</span></label></div>
			<div id="ck-button"><label><input type="checkbox" style="display : none;" class="te" value="${sm.c}" name="seat3"
				onclick="up(this)" readonly><span>${sm.c}</span></label></div>
			<div id="ck-button"><label><input type="checkbox" style="display : none;" class="te" value="${sm.d}" name="seat4"
				onclick="up(this)" readonly><span>${sm.d}</span></label></div>
			
		</c:if>
		<br><br>
		<c:set var="i" value="${i+1 }" />
		</c:forEach>
		
		<input class="movie_click" type="submit" value="결제선택">

		
	</form>
</body>
</html>