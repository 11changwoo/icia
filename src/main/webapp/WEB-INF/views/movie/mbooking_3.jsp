<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영화 결제페이지</title>
</head>
<style type="text/css">


.contes{	margin: 338px 28px 53px 480px}


.center_0 {

	border: 1px solid #4a4947;
	display: inline-block;
	padding: 15px 30px 30px 30px;
	background: #ff2f4a;
	color: #fff;
}

input.movie_next {
	border-radius: 5px;
	border: 1px solid #4a4947;
	background: #4a4947;
	color: #fff;
	cursor: pointer;
	width: 100px;
	height: 30px;
	margin-left: 86px;
}

input.movie_next:hover {
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
			<p
				style="font-size: 11px; color: #ff2f4a; margin-bottom: 20px; margin-left: 47px;">
				결제를 진행하기위해서는 다음버튼을 눌러주세요.</p>
		</div>



<!-- 예약을 누르면 결제페이지로 넘어가는 중간 데이터값을 넘기기 위한 페이지이다 -->
<!-- submit를 누르면 mwrite3.wo로 넘어간다 -->
<!-- mwrite3.wo에서 mwrite_3command.java로 간뒤
mbookingDAO의 mwrite_3를 실행하고 mbooking_2.jsp로 넘어간다 -->
<!-- session은 id값을 전달해주는지 확인하기위해 임시로 적어둔것이다 -->
<form class="center_0" action="mwrite_3.wo">
<%-- session.setAttribute("id", "alcnls"); --%>
결제를 하기위해 다음으로 넘어갑니다.<br><br>
<input class="movie_next" type="submit" value="다음">
</form>

</div>
</body>
</html>