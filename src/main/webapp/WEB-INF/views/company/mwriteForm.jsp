<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 등록 폼</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel-layers.min.js"></script>
<script src="${pageContext.request.contextPath }/js/init.js"></script>
<noscript>

	<link rel="stylesheet" type="text/css" href="/css/skel.css">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<link rel="stylesheet" type="text/css" href="/css/style-wide.css">

</noscript>
<style type="text/css">
#ui-datepicker-div {
	text-align: right;
	font-weight: bold;
}

#ui-datepicker-div table.ui-datepicker-calendar {
	background: #fff;
	border: 1px solid #b6b5b4;
	border-radius: 5px;
	margin-top: 6px;
	padding: 10px 10px 10px 10px;
	margin-left: 10px;
	width: 200px;
}

#ui-datepicker-div table.ui-datepicker-calendar td .ui-state-default {
	color: #4a4947;
	text-align: center;
	display: block;
}

#ui-datepicker-div table.ui-datepicker-calendar td .ui-state-default:hover
	{
	background: #F96;
	color: #fff;
	border-radius: 10px;
}

a {
	text-decoration: none;
}

#ui-datepicker-div table.ui-datepicker-calendar th.ui-datepicker-week-end
	{
	color: #ff2f4a;
}

#ui-datepicker-div table.ui-datepicker-calendar td.ui-datepicker-week-end .ui-state-default
	{
	color: #ff2f4a;
}

#ui-datepicker-div table.ui-datepicker-calendar td.ui-datepicker-week-end .ui-state-default:hover
	{
	color: #4a4947;
}

.ui-datepicker-title {
	position: relative;
}

.ui-datepicker-title select.ui-datepicker-month {
	position: absolute;
	left: 90px;
	top: -4px;
	z-index: 999999;
	background: #4a4947;
	color: #fff;
	border: 2px solid #f9f9f9;
	border-radius: 4px;
}

.ui-datepicker-title span.ui-datepicker-year {
	font-size: 18px;
	font-weight: bold;
	color: #4a4947;
	position: absolute;
	top: -5px;
	left: 36px;
}
</style>



<script type='text/javascript' src="jquery-1.10.2.min.js"></script>
<script type='text/javascript' src="polyfiller.js"></script>

<link rel="stylesheet"
	href="/http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- // jQuery 기본 js파일 -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- 참고 사이트 http://www.nextree.co.kr/p9887/ -->

<script type="text/javascript">
	$(function() {
		$("#testDatepicker").datepicker(
				{
					changeMonth : true,
					altField : '#testDatepicker',
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
							'9', '10', '11', '12' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					/* showButtonPanel : true,
					currentText : '오늘 날짜',
					closeText : '닫기', */
					dateFormat : "yymmdd",
				});
	});

	$(function() {
		$("#testDatepicker1").datepicker(
				{
					changeMonth : true,
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
							'9', '10', '11', '12' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					/* showButtonPanel : true,
					currentText : '오늘 날짜',
					closeText : '닫기', */
					dateFormat : "yymmdd",
				});
	});
</script>


</head>
<body>
	<div class="wrapper style1">
		<div id="footer" class="wrapper style2">
			<div class="container">
				<section> <header class="major">
				<h2>영화 등록하기</h2>
				<span class="byline">아래에 예약 받을 정보를 입력해 주세요!</span> </header> <!-- 			<form method="post" action="#"> -->

				<br>
				<table width="500" cellpadding="0" cellspacting="0" border="1">
					<form action="mwrite" method="post" enctype="multipart/form-data">
						<tr>
							<td>
								<div class="row half" style="position: relative;">
									<div class="12u" style="margin-left: 250px;">
										<input class="text" type="text" name="mplace" id="mplace"
											style="width: 220px; float: left; margin-right: 30px;"
											placeholder="지역"> <input class="text" type="text"
											name="mname" id="mname"
											style="width: 220px; margin-bottom: 10px;" placeholder="영화이름" />
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row half" style="position: relative;">
									<div class="12u" style="margin-left: 250px;">
										<input class="text" type="text" name="theater" id="theater"
											style="width: 220px; float: left; margin-right: 30px;"
											placeholder="영화관"> <input class="text" type="text"
											name="mpersonnel" id="mpersonnel"
											style="width: 220px; margin-bottom: 10px;"
											placeholder="제한 인원" />
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row half" style="position: relative;">
									<div class="12u" style="margin-left: 250px;">
										<input readonly class="text" type="text" name="mstart"
											id="testDatepicker"
											style="width: 220px; float: left; margin-right: 30px;"
											placeholder="상영 시작"> <input readonly class="text" type="text"
											name="mend" id="testDatepicker1"
											style="width: 220px; margin-bottom: 10px;"
											placeholder="상영 종료" />
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<!-- <td>pimg</td> -->
							<td>이미지<input type="file" name="mimg" size="30px"></td>
						</tr>
						</td>
						<tr>
							<td>
								<div class="row half" style="position: relative;">
									<div class="12u" style="margin-left: 250px;">
										<div class="12u">
											<textarea name="mm" placeholder="추가 입력 사항"
												style="margin-top: 10px; resize: none; width: 470px; height: 170px; padding: 10px;"></textarea>
										</div>

									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="등록">&nbsp;&nbsp;
								<a href="mlist"><input type="button" value="목록보기" /></a></td>
						</tr>
						</div>
					</form>
				</table>
			</div>
		</div>
	</div>
</body>
</html>