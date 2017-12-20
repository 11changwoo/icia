<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1조 프로젝트</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/simpleBanner.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/simpleBanner.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main_style.css">

</head>
<body>


	<div id="web">

		<div class="main">

			<div class="header" style="width : 100% ; height: 75px;" >

				<div class="logo"  style="margin-top : 11px; margin-left : 30px; margin-bottom : 10px;">

					<a href="main_login" id="logo_img"><img src="${pageContext.request.contextPath}/img/logo_new.png"></a>

				</div>

				<ul class="nav" style="width : 530px;">

					<!-- <li><a href="login"
						style="text-decoration: none;">로그인</a> <span class="sp_style">|</span></li> -->
					<!-- <li><a href="join">회원가입</a> <span
						class="sp_style">|</span></li> -->
					<li>${loginUser}님 환영합니다.<span class="sp_style">|</span> </li>
					<li><a href="logout">로그아웃</a> <span class="sp_style">|</span></li>
					<li><a href="mypage">마이페이지</a> <span class="sp_style">|</span></li>
					<li><a href="ask">문의 하기</a><span class="sp_style">|</span></li>
					<%-- <li class="favo"><a href="#" id="bookmark"> <img
							src="${pageContext.request.contextPath}/img/star_img.png" width="25" height="22"></a></li> --%>
				</ul>
			</div>

			<script type="text/javascript">
				//<![CDATA[

				//bookmark
				$(document)
						.on(
								'click',
								'#bookmark',
								function(e) {
									e.preventDefault();
									var bUrl = "main_login";
									var bTitle = "1조 소개 ";
									try {
										if (window.sidebar) {
											window.sidebar.addPanel(bTitle,
													bUrl, "");
										} else if (window.external
												|| document.all) {
											window.external.AddFavorite(bUrl,
													bTitle);
										} else if (window.opera) {
											$("#bookmark").attr("rel",
													"sidebar");
										}
									} catch (err) {
										alert("죄송합니다. 현재 브라우저는 스크립트로 즐겨찾기 추가 기능을 지원하지 않습니다.\n즐겨찾기에 추가하시려면,\n Ctrl + D 키를 눌러주십시오.");
									}
								});
				//]]>
			</script>



			<script>
				function enterSubmit() {
					return true;
				}
			</script>

			<div class="header-bottom">
				<div class="header-bottom__wrap">
					<ul class="gnb">
						<li><a href="#"> <span style="line-height:3.8; font-size:18px; font-weight: bold; color: #fff;">1조 소개</span>
						</a>
							<div class="gnb__wrap">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 20px;">
										<div class="gnb__wrap-item gnb__wrap-item--big">
											<div class="gnb__wrap-tit">
												<a href="sub_1">1조 소개</a>
											</div>
									</div>
								</div>
							</div>
							</div></li>
						<li class="s"><a href="#"> <span style="line-height:3.8; font-size:18px; font-weight: bold; color: #fff;">예약</span>
						</a>
							<div class="gnb__wrap gnb__wrap--small">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 260px;">
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="main.wo">펜션 </a>
											</div>
										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="travel">여행 </a>
											</div>
										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="main_m.wo">영화</a>
											</div>
										</div>
										<!-- <div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="../sum_menu2.jsp">미용실</a>
											</div>
										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="../sum_menu2.jsp">호텔</a>
											</div>
										</div> -->
									</div>
								</div>
							</div></li>
						<li class="t"><a href="#"> <span style="line-height:3.8; font-size:18px; font-weight: bold; color: #fff;">게시판</span>
						</a>
							<div class="gnb__wrap gnb__wrap--medium">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 480px;">
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit" style="">
												<a href="list">자유게시판</a>
											</div>
										</div>

									</div>
								</div>
							</div></li>
						<!-- c:if 에서 문자열 비교 eq -->
						<c:if test="${company_type eq 'company'}">
						<li class="t"><a href="#"> <span style="line-height:3.8; font-size:18px; font-weight: bold; color: #fff;">업체</span>
						</a>
							<div class="gnb__wrap gnb__wrap--medium">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 685px;">
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<c:choose>
												 <c:when test="${business_type eq '펜션' }"><a href="pwf">등록</a></c:when>
												 <c:when test="${business_type eq '영화' }"><a href="mwf">등록</a></c:when>
												 <c:when test="${business_type eq '여행' }"><a href="twf">등록</a></c:when>
												</c:choose>
											</div>

										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<c:choose>
												 <c:when test="${business_type eq '펜션' }"><a href="plist">확인</a></c:when>
												 <c:when test="${business_type eq '영화' }"><a href="mlist">확인</a></c:when>
												 <c:when test="${business_type eq '여행' }"><a href="tlist">확인</a></c:when>
												</c:choose>
											</div>

										</div>

									</div>
								</div>
							</div></li>
						</c:if>
						<c:if test="${company_type eq 'manager'}">
						<li class="s"><a href="#"> <span style="line-height:3.8; font-size:18px; font-weight: bold; color: #fff;">관리</span>
						</a>
							<div class="gnb__wrap gnb__wrap--medium">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 685px;">
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="joinList">회원목록</a>
											</div>

										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="askList">문의목록</a>
											</div>
										</div>
									</div>
								</div>
							</div></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
