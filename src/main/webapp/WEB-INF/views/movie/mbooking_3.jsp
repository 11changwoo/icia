<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ȭ ����������</title>
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
				<strong style="font-size: 29px; margin-left: 96px;">����������</strong>
			</p>
			<p
				style="font-size: 11px; color: #ff2f4a; margin-bottom: 20px; margin-left: 47px;">
				������ �����ϱ����ؼ��� ������ư�� �����ּ���.</p>
		</div>



<!-- ������ ������ ������������ �Ѿ�� �߰� �����Ͱ��� �ѱ�� ���� �������̴� -->
<!-- submit�� ������ mwrite3.wo�� �Ѿ�� -->
<!-- mwrite3.wo���� mwrite_3command.java�� ����
mbookingDAO�� mwrite_3�� �����ϰ� mbooking_2.jsp�� �Ѿ�� -->
<!-- session�� id���� �������ִ��� Ȯ���ϱ����� �ӽ÷� ����а��̴� -->
<form class="center_0" action="mwrite_3.wo">
<%-- session.setAttribute("id", "alcnls"); --%>
������ �ϱ����� �������� �Ѿ�ϴ�.<br><br>
<input class="movie_next" type="submit" value="����">
</form>

</div>
</body>
</html>