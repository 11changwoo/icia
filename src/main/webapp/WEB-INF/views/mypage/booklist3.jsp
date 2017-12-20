<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>my page - 영화 예약확인</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel-layers.min.js"></script>
<script src="${pageContext.request.contextPath }/js/init.js"></script>
<style>
a {
	text-decoration : none;
}
</style>

<%@ include file="../util/mypage_header.jsp" %>
</head>
<body style="background-image: url(img/mypagebg.jpg);">
	<!-- Page -->
	<div id="page" class="container" style="margin-top: 50px;">
		<div class="row">
			<header class="major">
			<a href="mypage"><h2> MY PAGE </h2></a> <br><br>
			<a href="mUpdate"><h2>정보 수정</h2></a> <br><br>
         	<a href="remove"><h2>탈 퇴</h2></a>
			</header>
			<a href="booklist"><input type="button" value="펜션"></a> <a
				href="booklist2"><input type="button" value="여행"></a> <a
				href="booklist3"><input type="button" value="영화"></a>
			<div id="content" class="8u skel-cell-important">

				<%-- forEach 사용 : dao/command/controller 배열사용해서 리스트로 나타냄--%>
				<c:forEach items="${booklist3 }" var="bcheck">
					<c:choose>
						<c:when test="${bcheck.place == null}">   <p style="padding:100px;">
							${bcheck.name} 님의 영화 예약이 없습니다.<br /> <a href="main_m.wo"><input
								type="button" value="예약하러가기"></a><br />
						</p></c:when>
						<c:otherwise>
						 <section class="4u"
						style="float: left; margin-left: 40px; padding-top: 30px;">
					<a href="#" class="image featured"><img
						src="${pageContext.request.contextPath}/img/mypage4.jpg" alt="영화예약확인"></a>
					<p style="width:500px;">
						나의 이름 - ${bcheck.name}<br /> 예약된 이름 - ${bcheck.cname}<br /> 장소 -
						${bcheck.place}<br /> 영화이름 - ${bcheck.pname}<br /> 영화관 -
						${bcheck.proom}<br /> 인원 - ${bcheck.personnel}<br /> 날짜 -
						${bcheck.checkin}<br /> 좌석 - ${bcheck. seat}<br /> 이메일 -
						${bcheck.email}<br /> 전화번호 - ${bcheck.tel}<br />

					</p></section>
						</c:otherwise>
					</c:choose>	
				</c:forEach>

			</div>
		</div>
</body>
</html>