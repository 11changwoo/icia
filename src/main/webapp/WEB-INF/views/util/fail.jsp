<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>결제 실패 페이지</title>
</head>
<style type="text/css">


.contes{	margin: 338px 28px 53px 480px}


.center_0 {

	border: 1px solid #4a4947;
	display: inline-block;
	padding: 15px 30px 30px 30px;
	background: #ff2f4a;
	margin-left: 72px;
}

input.clear {
	border-radius: 5px;
	border: 1px solid #4a4947;
	background: #4a4947;
	color: #fff;
	cursor: pointer;
	width: 111px;
	height: 30px;
	margin-left: 34px;
}

input.clear:hover {
	border-radius: 5px;
	color: #4a4947;
	background: #fff;
	width: 111px;
	height: 30px;
}


</style>


<body>
<!-- submit를 누르면 메인화면으로 넘어간다 -->

	<div class="contes">

		<div class="top_line">
			<div class="line"
				style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 136px;"></div>
			<p style="color: #4a4947;">
				<strong style="font-size: 29px; margin-left: 84px;">결제실패페이지</strong>
			</p>
			<p style="font-size: 11px; color: #ff2f4a; margin-bottom: 20px; margin-left: 82px;">
			확인버튼을 눌르면 홈페이지로 이동합니다.
			</p>
		</div>


<form class="center_0" action="suc.wo">
<p style="color: #fff; margin-bottom: 20px;">결제에 실패하였습니다.</p><br>
<input class="clear" type="submit" value="홈으로 돌아가기">
</form>
</div>
</body>
</html>