<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

			<div class="header" style="margin-top: 11px;">

				<div class="logo">

					<a href="main" id="logo_img"><img src="${pageContext.request.contextPath}/img/logo.png"></a>

				</div>

				<ul class="nav">

					<li><a href="login"
						style="text-decoration: none;">로그인</a> <span class="sp_style">|</span></li>
					<li><a href="join">회원가입</a> <span
						class="sp_style">|</span></li>
					<li><a href="#">마이페이지</a> <span class="sp_style">|</span></li>
					<li><a href="ask">문의 하기</a> <span class="sp_style">|</span></li>
					<li class="favo"><a href="#" id="bookmark"> <img
							src="${pageContext.request.contextPath}/img/star_img.png" width="25" height="22"></a></li>
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
									var bUrl = "now/main";
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
						<li><a href="#"> <span>1조 소개</span>
						</a>
							<div class="gnb__wrap">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 20px;">
										<div class="gnb__wrap-item gnb__wrap-item--big">
											<div class="gnb__wrap-tit">
												<a href="#">1조 소개</a>
											</div>
											<!--<ul class="gnb__wrap-list">
									
												</ul>-->
										</div>
										<!--<div class="gnb__wrap-item gnb__wrap-item--big">
												<div class="gnb__wrap-tit"><a href="../company/research_vision.asp">1조 소개</a></div>
												<!--<ul class="gnb__wrap-list">
						
												</ul>-->
										<!--</div>
											<div class="gnb__wrap-item gnb__wrap-item--big">
												<div class="gnb__wrap-tit"><a href="../company/invest_finance.asp">1조 소개</a></div>
												<!--<ul class="gnb__wrap-list">
									
												</ul>-->
										<!--</div>-->
										<!--<div class="gnb__wrap-item gnb__wrap-item--big">
												<div class="gnb__wrap-tit"><a href="../company/contribution_matching.asp">사회공헌</a></div>
												<ul class="gnb__wrap-list">
					
												</ul>
											</div>-->
									</div>
								</div>
							</div></li>
						<li class="s"><a href="#"> <span>예약</span>
						</a>
							<div class="gnb__wrap gnb__wrap--small">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 260px;">
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="../sum_menu2.jsp">펜션 </a>
											</div>
										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="../sum_menu2.jsp">여행 </a>
											</div>
										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="../sum_menu2.jsp">영화</a>
											</div>
										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="../sum_menu2.jsp">미용실</a>
											</div>
										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="../sum_menu2.jsp">호텔</a>
											</div>
										</div>


									</div>
								</div>
							</div></li>
						<li class="t"><a href="#"> <span>게시판</span>
						</a>
							<div class="gnb__wrap gnb__wrap--medium">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 480px;">
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit" style="">
												<a href="#">자유게시판</a>
											</div>
										</div>

									</div>
								</div>
							</div></li>

						<!-- <li class="t"><a href="#"> <span>업체</span> 
						</a>
							<div class="gnb__wrap gnb__wrap--medium">
								<div class="row">
									<div class="gnb__wrap-box" style="margin-left: 685px;">
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="#">등록</a>
											</div>

										</div>
										<div class="gnb__wrap-item">
											<div class="gnb__wrap-tit">
												<a href="#">확인</a>
											</div>

										</div>

									</div>
								</div>
							</div></li>-->

					</ul>
				</div>
			</div>
		</div>

		<div class="simple_banner_wrap banner01">
			<!-- data-type="hslide" data-nav-type="numeral "-->
			<ul>
				<li style="background: #000;"><a href="#"> <img
						src="${pageContext.request.contextPath}/img/Pension.jpg" width="1255" height="450"></a></li>
				<li><a href="#"><img src="${pageContext.request.contextPath}/img/travel.jpg" width="1255"
						height="450"></a></li>
				<li><a href="#"><img src="${pageContext.request.contextPath}/img/movie.jpg" width="1255"
						height="450"></a></li>
				<li><a href="#"><img src="${pageContext.request.contextPath}/img/lech.jpg" width="1255"
						height="450"></a></li>
				<li><a href="#"><img src="${pageContext.request.contextPath}/img/hotel.jpg" width="1255"
						height="450"></a></li>
			</ul>
		</div>


		<section class="main-brandmenu">
		<div class="row">
			<div class="main-brandmenu__btn tab-nav">
				<a href="#mainBrand1" class="active">사전 예약 분야</a>
				<!--<a href="#mainBrand2">사용한 소스</a>-->
			</div>
			<div class="tab-item" id="mainBrand1" style="display: block;">
				<div class="main-brandmenu__wrap">
					<div class="bx-wrapper"
						style="max-width: 1200px; margin-top: 30px;">
						<div class="bx-viewport" aria-live="polite"
							style="width: 100%; overflow: hidden; position: relative; height: 192px; margin-left: 154px;">
							<ul class="main-brand__slider1"
								style="width: 5215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">




								<li aria-hidden="false"
									style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a
									href="#" target="_blank" onclick="_gaq.push([]);"> <img
										src="${pageContext.request.contextPath}/img/menu01(2).png" alt="펜션"
										onmouseover="this.src='${pageContext.request.contextPath}/img/menu01_ov(3).png'"
										onmouseout="this.src='${pageContext.request.contextPath}/img/menu01(2).png'">
								</a></li>



								<li aria-hidden="false"
									style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a
									href="#" target="_blank" onclick="_gaq.push([]);"> <img
										src="${pageContext.request.contextPath}/img/menu02_ov(0).png" alt="여행"
										onmouseover="this.src='${pageContext.request.contextPath}/img/menu02_ov(0) (1).png'"
										onmouseout="this.src='${pageContext.request.contextPath}/img/menu02_ov(0).png'">
								</a></li>


								<li aria-hidden="false"
									style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a
									href="#" target="_blank" onclick="_gaq.push([]);"><img
										src="${pageContext.request.contextPath}/img/menu03(0).png" alt="영화"
										onmouseover="this.src='${pageContext.request.contextPath}/img/menu03_ov(0).png'"
										onmouseout="this.src='${pageContext.request.contextPath}/img/menu03(0).png'"></a></li>



								<li aria-hidden="false"
									style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a
									href="#" target="_blank" onclick="_gaq.push([]);"><img
										src="${pageContext.request.contextPath}/img/menu04(0).png" alt="미용실"
										onmouseover="this.src='${pageContext.request.contextPath}/img/menu04_ov(0)(0).png'"
										onmouseout="this.src='${pageContext.request.contextPath}/img/menu04(0).png'"></a></li>



								<li aria-hidden="false"
									style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a
									href="#" target="_blank" onclick="_gaq.push([]);"><img
										src="${pageContext.request.contextPath}/img/menu-hpmp-off.png" alt="호텔"
										onmouseover="this.src='${pageContext.request.contextPath}/img/menu-hpmp.png'"
										onmouseout="this.src='${pageContext.request.contextPath}/img/menu-hpmp-off.png'"></a></li>



							</ul>
						</div>
						<div class="bx-controls"></div>
					</div>

				</div>
			</div>
			<!--	<div class="tab-item" id="mainBrand2" style="display: none;">
							<div class="main-brandmenu__wrap">
								<div class="bx-wrapper" style="max-width: 968px;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 192px;"><ul class="main-brand__slider2" style="width: 6215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">


									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a href="/brand/view.asp?brandID=kyungokko" target="_blank" onclick="_gaq.push(['_trackEvent', '브랜드사이트연결','클릭','브랜드사이트연결-경옥고']);">
										<img src="menu05(0).png" alt="경옥고" onmouseover="this.src='menu05_ov(0).png'" onmouseout="this.src='menu05(0).png'"></a></li>



									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a href="/brand/view.asp?brandID=redormin" target="_blank" onclick="_gaq.push(['_trackEvent', '브랜드사이트연결','클릭','브랜드사이트연결-레돌민']);">
										<img src="menu06(0).png" alt="레돌민" onmouseover="this.src='/upload/brandc/menu06_ov(0).png'" onmouseout="this.src='/upload/brandc/menu06(0).png'"></a></li>



									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a href="/brand/view.asp?brandID=carmex" target="_blank" onclick="_gaq.push(['_trackEvent', '브랜드사이트연결','클릭','브랜드사이트연결-카멕스']);">
										<img src="menu07(0).png" alt="카멕스" onmouseover="this.src='/upload/brandc/menu07_ov(0).png'" onmouseout="this.src='/upload/brandc/menu07(0).png'"></a></li>



									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a href="/brand/view.asp?brandID=eyetok" target="_blank" onclick="_gaq.push(['_trackEvent', '브랜드사이트연결','클릭','브랜드사이트연결-아이톡']);">
										<img src="menu08(0).png" alt="아이톡" onmouseover="this.src='/upload/brandc/menu08_ov(0).png'" onmouseout="this.src='/upload/brandc/menu08(0).png'"></a></li>



									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a href="/brand/view.asp?brandID=tokntok" target="_blank" onclick="_gaq.push(['_trackEvent', '브랜드사이트연결','클릭','브랜드사이트연결-톡앤톡']);">
										<img src="menu09(0).png" alt="톡앤톡" onmouseover="this.src='/upload/brandc/menu09_ov(0).png'" onmouseout="this.src='/upload/brandc/menu09(0).png'"></a></li>

									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 118px; margin-right: 52px;"><a href="/brand/view.asp?brandID=gongjindan" target="_blank" onclick="_gaq.push(['_trackEvent', '브랜드사이트연결','클릭','브랜드사이트연결-공진단']);">
										<img src="menu10(0).png" alt="공진단" onmouseover="this.src='/images/renewal/menu10_ov(0).png'" onmouseout="this.src='/images/renewal/menu10(0).png'"></a></li>

								</ul></div><div class="bx-controls"></div></div>
								
							</div>
						</div>-->
		</div>

		</section>


		<link rel="stylesheet" type="text/css" media="screen"
			href="${pageContext.request.contextPath}/css/als_demo.css" />
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico"
			type="image/x-icon" />
		<meta name="robots" content="index,follow" />
		<meta name="keywords"
			content="jQuery plugin, jQuery scroller, list jQuery, jQuery lists, css3, html5, jQuery" />
		<meta name="description"
			content="any list scroller demo - jQuery scrolling plugin by musings.it to scroll any kind of list with any content - musings.it web design and development - Bergamo Italy" />
		<meta name="author" content="Federica Sibella - musings.it" />
		<meta name="geo.placename"
			content="via Generale Alberico Albricci 1, 24128 Bergamo, Italy">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.alsEN-1.0.min.js"></script>


		<script type="text/javascript">
			$(document)
					.ready(
							function() {
								$("#lista1").als({
									visible_items : 4,
									scrolling_items : 2,
									orientation : "horizontal",
									circular : "yes",
									autoscroll : "no",
									interval : 5000,
									direction : "right"
								});

								$("#lista2").als({
									visible_items : 2,
									scrolling_items : 1,
									orientation : "vertical",
									circular : "no",
									autoscroll : "no"
								});

								//logo hover
								$("#logo_img").hover(function() {
									$(this).attr("src", "${pageContext.request.contextPath}/img/logo.png");
								}, function() {
									$(this).attr("src", "${pageContext.request.contextPath}/img/logo.png");
								});

								//logo click
								$("#logo_img")
										.click(
												function() {
													location.href = "now/main";
												});

								$("a[href^='http://']")
										.attr("target", "_blank");
								$("a[href^='http://als']").attr("target",
										"_self");
							});
		</script>

		<section id="content">

		<div id="lista1" class="als-container">
			<span class="als-prev"><img
				src="${pageContext.request.contextPath}/images/thin_left_arrow_333.png" alt="prev" title="previous" /></span>
			<div class="als-viewport">
				<ul class="als-wrapper">
					<li class="als-item"><img
						src="${pageContext.request.contextPath}/images/als-images/calculator.png" alt="jsp" title="jsp" />jsp</li>
					<li class="als-item"><img
						src="${pageContext.request.contextPath}/images/als-images/light_bulb.png" alt="eclipse"
						title="eclipse" />eclipse</li>
					<li class="als-item"><img src="${pageContext.request.contextPath}/images/als-images/card.png"
						alt="javascript" title="javascript" />javascript</li>
					<li class="als-item"><img src="${pageContext.request.contextPath}/images/als-images/chess.png"
						alt="css" title="css" />css</li>
					<li class="als-item"><img src="${pageContext.request.contextPath}/images/als-images/clock.png"
						alt="oracle" title="oracle" />oracle</li>
					<li class="als-item"><img src="${pageContext.request.contextPath}/images/als-images/cut.png"
						alt="photoshop" title="photoshop" />photoshop</li>
					<li class="als-item"><img src="${pageContext.request.contextPath}/images/als-images/heart.png"
						alt="program" title="program" />program</li>
					<li class="als-item"><img src="${pageContext.request.contextPath}/images/als-images/map.png"
						alt="program" title="program" />program</li>
					<li class="als-item"><img
						src="${pageContext.request.contextPath}/images/als-images/mobile_phone.png" alt="program"
						title="program" />program</li>
					<li class="als-item"><img src="${pageContext.request.contextPath}/images/als-images/camera.png"
						alt="program" title="camera" />program</li>
					<li class="als-item"><img
						src="${pageContext.request.contextPath}/images/als-images/music_note.png" alt="program"
						title="program" />program</li>
					<li class="als-item"><img
						src="${pageContext.request.contextPath}/images/als-images/protection.png" alt="program"
						title="program" />program</li>
					<li class="als-item"><img
						src="${pageContext.request.contextPath}/images/als-images/television.png" alt="program"
						title="program" />program</li>
				</ul>
			</div>
			<span class="als-next"><img
				src="${pageContext.request.contextPath}/images/thin_right_arrow_333.png" alt="next" title="next" /></span>
		</div>
		</section>


		<footer id="footer" class="footer">
		<div class="footer__sitemap">
			<div class="row">
				<div class="footer__sitemap-wrap">
					<h3 class="footer__sitemap-tit">1조 소개</h3>
					<div class="footer__sitemap-box"></div>
				</div>
			</div>
		</div>

		<div class="footer__snb">
			<div class="footer__copyright">
				<div class="row">
					<div class="footer__copyright-logo">
						<img src="${pageContext.request.contextPath}/images/renewal/logo_gray.png" alt="1조 소개">
					</div>
					<div class="footer__copyright-addr">
						조장 : 임현택 , 이창우 , 유소희 , 김지훈 <br> COPYRIGHT(C) ICIA
						PHARMACEUTICAL CO., LTD. ALL RIGHTS RESERVED
					</div>
				</div>
			</div>
		</div>
		</footer>


	</div>


</body>
</html>