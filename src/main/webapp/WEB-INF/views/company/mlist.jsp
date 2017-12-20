<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 등록 목록</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel-layers.min.js"></script>
<script src="${pageContext.request.contextPath }/js/init.js"></script>
<noscript>

	<!--<link rel="stylesheet" type="text/css" href="/css/skel.css"> -->
	<link rel="stylesheet" type="text/css" href="/css/style1.css">
	<!-- <link rel="stylesheet" type="text/css" href="/css/style-wide.css">-->

</noscript>
<%@ include file="../util/mypage_header.jsp" %>
</head>
<body style="background-image: url(img/mypagebg.jpg);">
	<div class="wrapper style1">
		<div id="page" class="container">

			<div class="row" align="center"
				style="margin-left: 40px; text-align: center; ">
				<!-- Sidebar -->
				<h2>등록된 영화 목록</h2>
				<hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr>
				<table style="width: auto;" cellpadding="0" cellspacing="0"
					border="1">
					<tr style="border: 1px solid; font-weight: bold;">
						<td style="background-color: lavender">num</td>
						<td style="background-color: lavenderblush">지역</td>
						<td style="background-color: lavender">영화</td>
						<td style="background-color: lavenderblush">영화관</td>
						<td style="background-color: lavender">제한인원</td>
						<td style="background-color: lavenderblush">상영 시작 날짜</td>
						<td style="background-color: lavender">상영 마지막 날짜</td>
						<td style="background-color: #f395a3">상영일</td>
						<td style="background-color: lavenderblush">추가입력</td>
						<td style="background-color: lavender">이미지</td>
						<td style="background-color: lavenderblush">진행</td>
						<td style="background-color: lavender">삭제</td>

					</tr>
					<tr>

						<c:forEach items="${mlist }" var="dto">
							<tr style="border: 1px solid;">
								<td style="background-color: lavender">${dto.num}</td>
								<td style="background-color: lavenderblush">${dto.mplace}</td>
								<td style="background-color: lavender">${dto.mname}</td>
								<td style="background-color: lavenderblush">${dto.theater}</td>
								<td style="background-color: lavender">${dto.mpersonnel}</td>
								<td style="background-color: lavenderblush">${dto.mstart}</td>
								<td style="background-color: lavender">${dto.mend}</td>
								<td style="background-color: #f395a3">${dto.monday}</td>
								<td style="background-color: lavenderblush">${dto.mm}</td>
								<td style="background-color: lavender">${dto.mimg}</td>
								<td style="background-color: lavenderblush">${dto.now}</td>
								<td style="background-color: lavender"><a href="mdelete?num=${dto.num }">X</a></td>
							</tr>
						</c:forEach>
				</table>
			</div>
				<p>
					<a href="mwriteForm"><input type="button" value="new"></a>
				</p>
</body>
</html>