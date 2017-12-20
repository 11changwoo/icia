<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../util/header.jsp"%>
<title>Insert title here</title>
<style>
table {
	border: 1px solid #4a4947;
	border-radius: 5px;
	margin-top: 90px;
}

th {
	padding: 10px 10px 10px 10px;
	color: #fff;
	background: #ff2f4a;
	border: 1px solid #4a4947;
	border-radius: 5px;
}

td {
	color: #4a4947;
	border: 1px solid #4a4947;
	border-radius: 5px;
	text-align: center;
}

.submit {
	border-radius: 5px;
    color: #fff;
    background: #ff2f4a;
    width: 80px;
    height: 30px;
}
a {
	text-decoration : none;
}
input {
	font:inherit;
}
</style>
</head>
<body>
	<center>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="write" method="post">
			<tr>
				<th> 이름 </th>
				<td> <input type="text" name="bName" size = "50"> </td>
			</tr>
			<tr>
				<th> 제목 </th>
				<td> <input type="text" name="bTitle" size = "50"> </td>
			</tr>
			<tr>
				<th> 내용 </th>
				<td> <textarea name="bContent" rows="10" ></textarea> </td>
			</tr>
			<tr >
				<td colspan="2"> <input class="submit" type="submit" value="입력"> &nbsp;&nbsp; 
				<a href="list">목록보기</a></td>
			</tr>
		</form>
	</table>
	</center>
</body>
</html>