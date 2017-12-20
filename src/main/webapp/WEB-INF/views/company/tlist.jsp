<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행 등록 목록</title>
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
				<h2>등록된 여행 목록</h2>
				<hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr>
				<table style="width: auto;" cellpadding="0" cellspacing="0"
					border="1">
					<tr style="border: 1px solid; font-weight: bold;">
						<td style="background-color: lavender">num</td>
						<td style="background-color: lavenderblush">여행이름</td>
						<td style="background-color: lavender">여행지</td>
						<td style="background-color: lavenderblush">탈것</td>
						<td style="background-color: lavender">가격</td>
						<td style="background-color: lavenderblush">최소인원</td>
						<td style="background-color: lavender">최대인원</td>
						<td style="background-color: lavenderblush">시작일</td>
						<td style="background-color: lavender">끝</td>
						<td style="background-color: lavenderblush">추가 입력사항</td>
						<td style="background-color: lavender">이미지</td>
						<td style="background-color: lavenderblush">진행</td>
						<td style="background-color: lavender">삭제</td>

					</tr>
					<tr>
						<c:forEach items="${tlist }" var="dto">
							<tr style="border: 1px solid;">
								<td style="background-color: lavender">${dto.num }</td>
								<td style="background-color: lavenderblush">${dto.tname }</td>
								<td style="background-color: lavender">${dto.tplace }</td>
								<td style="background-color: lavenderblush">${dto.tvehicle }</td>
								<td style="background-color: lavender">${dto.tprice }</td>
								<td style="background-color: lavenderblush">${dto.tpersonnel_min }</td>
								<td style="background-color: lavender">${dto.tpersonnel_max }</td>
								<td style="background-color: lavenderblush">${dto.tstart }</td>
								<td style="background-color: lavender">${dto.tend }</td>
								<td style="background-color: lavenderblush">${dto.tm }</td>
								<td style="background-color: lavender">${dto.timg }</td>
								<td style="background-color: lavenderblush">${dto.now }</td>
								<td style="background-color: lavender"><a href="tdelete?num=${dto.num }">X</a></td>
							</tr>
						</c:forEach>
				</table>
			</div>
				<p>
					<a href="twriteForm"><input type="button" value="new"></a>
				</p>
</body>
</html>