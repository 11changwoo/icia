<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../util/header.jsp" %>
<title>Insert title here</title>
</head>
<body>

<style>

table{
border: 1px solid #4a4947; 
border-radius: 5px;

}

th{

padding: 10px 10px 10px 10px;
color: #fff;
background: #ff2f4a;
border: 1px solid #4a4947; 
border-radius: 5px;

}

td{

color: #4a4947;
border: 1px solid #4a4947; 
border-radius: 5px;

}

</style>
<div class="top_line" style="margin-left: 462px; margin-top: 90px;">
			<div class="line"
				style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 136px;"></div>
			<p style="color: #4a4947;">
				<strong style="font-size: 29px; margin-left: 112px;">회 원 목 록</strong>
			</p>
		</div>
<center>
<table width="800" border="1" style="margin-top: 35px;">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>성별</th>
		<th>주소</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>자기소개</th>
		<!-- <th>가입시기</th> -->
		<th>업체유형</th>
		<th>회원유형</th>
	</tr>
	<c:forEach var="list" items="${joinList}">
		<tr>
			<td>${list.id}</td>
			<td>${list.pw}</td>
			<td>${list.name}</td>
			<td>${list.gender}</td>
			<td>${list.address}</td>
			<td>${list.email}</td>
			<td>${list.tel}</td>
			<td>${list.intro}</td>
			<%-- <td>${list.reg}</td> --%>
			<td>${list.business}</td>
			<td>${list.type}</td>
		</tr>
	</c:forEach>
</table>
</center>
</body>
</html>