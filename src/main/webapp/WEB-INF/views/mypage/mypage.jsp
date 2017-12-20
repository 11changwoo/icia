<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>my page - main</title>

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
			<a href="main_login"><h2> MY PAGE </h2></a> <br><br>
			<a href="mUpdate"><h2>정보 수정</h2></a> <br><br>
         	<a href="remove"><h2>탈 퇴</h2></a>
			</header>

			<a href="booklist"><input type="button" value="펜션"></a>
			<a href="booklist2"><input type="button" value="여행"></a>
			<a href="booklist3"><input type="button" value="영화"></a>

			<div id="content" class="8u skel-cell-important">

				<%-- forEach 사용 : dao/command/controller 배열사용해서 리스트로 나타냄--%>
				<c:forEach items="${mypage }" var="my">
					<section class="4u"
						style="float: left; margin-left: 40px; padding-top: 30px;">
					<a href="#" class="image featured"><img
						src="${pageContext.request.contextPath}/img/mypage1.jpg" alt="마이페이지"></a>
					사용자 정보 <br />
					<p style="width:500px;">
						이름 - ${my.name }<br /> 
						성별 - ${my.gender }<br /> 
						주소 - ${my.address }<br /> 
						이메일 - ${my.email }<br /> 
						전화번호 - ${my.tel }<br /> 
						소개 - ${my.intro }<br /> 
						가입일 - ${my.reg }<br /> 
						직업 - ${my.business }<br /> 
						가입유형 - ${my.type }<br /> 
								
					</p>
					</section>
				</c:forEach>
			</div>
		</div>
		
</body>
</html>