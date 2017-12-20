<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제 페이지</title>
</head>

<style type="text/css">


.contes{	margin: 338px 28px 53px 480px}


.center_0 {

	border: 1px solid #4a4947;
	display: inline-block;
	padding: 15px 30px 30px 30px;
	background: #ff2f4a;
}

input.next {
	border-radius: 5px;
	border: 1px solid #4a4947;
	background: #4a4947;
	color: #fff;
	cursor: pointer;
	width: 100px;
	height: 30px;
	margin-left: 86px;
}

input.next:hover {
	border-radius: 5px;
	color: #4a4947;
	background: #fff;
	width: 100px;
	height: 30px;
}


</style>

<body>

	<div class="contes">

		<div class="top_line">
			<div class="line"
				style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 118px;"></div>
			<p style="color: #4a4947;">
				<strong style="font-size: 29px; margin-left: 96px;">결제페이지</strong>
			</p>
			<p style="font-size: 11px; color: #ff2f4a; margin-bottom: 20px; margin-left: 32px;">결제를
				진행하기 위해서는 다음 버튼을 눌러주시기 바랍니다.</p>
		</div>


<!-- 예약을 누르면 결제페이지로 넘어가는 중간 데이터값을 넘기기 위한 페이지이다 -->
<!-- submit를 누르면 write2.wo로 넘어간다 -->
<!-- write2.wo에서 write_2command.java로 간뒤
bookingDAO의 write_2를 실행하고 pbooking_2.jsp로 넘어간다 -->
<!-- session은 id값을 전달해주는지 확인하기위해 임시로 적어둔것이다 -->
<form class="center_0" action="write_2.wo">
<%-- session.setAttribute("id", "alcnls"); --%>
<p style="color: #fff; margin-bottom: 20px;">
				<strong>결제를 하기위해 다음으로 넘어갑니다.</strong>
			</p>
<input class="next" type="submit" value="다음">
</form>
</div>
</body>
</html>