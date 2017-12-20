<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>my page - 여행 예약 확인</title>
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
<a href="booklist"><input type="button" value="펜션"></a>
<a href="booklist2"><input type="button" value="여행"></a>
<a href="booklist3"><input type="button" value="영화"></a>
			<div id="content" class="8u skel-cell-important">

				<%-- forEach 사용 : dao/command/controller 배열사용해서 리스트로 나타냄--%>
				<c:forEach items="${booklist2 }" var="bcheck">
				<c:choose>
						<c:when test="${bcheck.place == null}">   <p style="padding:100px;">
							${bcheck.name} 님의 여행 예약이 없습니다.<br /> <a href="travel"><input
								type="button" value="예약하러가기"></a><br />
						</p></c:when>
						<c:otherwise>
					<section class="4u"
						style="float: left; margin-left: 40px; padding-top: 30px;">
					<a href="#" class="image featured"><img
						src="${pageContext.request.contextPath}/img/mypage3.jpg" alt="여행예약확인"></a>
	
					<p style="width:500px;">
						예약자이름 - ${bcheck.name}<br /> 
						여행이름 - ${bcheck.pname}<br /> 
						장소 - ${bcheck.place}<br /> 
						출발 - ${bcheck.checkin}<br /> 도착 - ${bcheck.checkout}<br />
						
					<%-- 	이름 - ${bcheck.pname}<br /> 이메일 - ${bcheck.email}<br /> 전화번호 -
						${bcheck.tel}<br /> --%>
					</p>

			<%-- 		<div id="wrapper">
						<a href="javascript:ViewLayer();" class="button">상세링크</a>
						<!-- 아래 상세내용 출력되는 거 -->
					</div>
					<div id="divpop"
						style="position: absolute; top: 120; left: 100px; z-index: 200; display: none;">
						<table cellpadding="5" cellspacing="0" bgcolor="#FFFFFF"
							border="5" bordercolor="#424242">
							<tr>
								<td id="titleBar" style="cursor: move" width="100%" align="lift">
									<ilayer width="100%" onSelectStart="return false"> <layer
										width="100%" onMouseover="isHot=true;if (isN4) ddN4(divpop)"
										onMouseout="isHot=false"> <img src="/images/ok3.gif"
										border="0"> </layer> </ilayer>
								</td>나의이름 - ${bcheck.name}<br /> 
						여행이름 - ${bcheck.pname}}<br /> 
						장소 - ${bcheck.place}<br />
						예약자 이름 - ${bcheck.korname}<br /> 영문이름 - ${bcheck.engname}<br />
						출발 - ${bcheck.checkin}<br /> 도착 - ${bcheck.checkout}<br /> 여기에 예약번호 : ${bcheck.name}
								<br> 진행 사항 : ${bcheck.name }
								<br> 주문일 : ${bcheck.name }
								<br> 종류 영화/ 팬션/ 여행/ 헤어 type
								<br> 종류 영화/ 팬션/ 여행/ 헤어 type
								<br> 종류 영화/ 팬션/ 여행/ 헤어 type
								</td>
							</tr>
							<tr>
								<!-- 취소 -->
								<td align="right" height="10" bgcolor="#FFFFFF"><a
									href="javascript:close_Layer();">close </a></td>
							</tr>
						</table>
					</div> --%>



					</section></c:otherwise></c:choose>
				</c:forEach>

			</div>
		</div>
</body>
</html>