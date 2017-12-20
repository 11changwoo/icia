<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이메일 문의하기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel-layers.min.js"></script>
<script src="${pageContext.request.contextPath }/js/init.js"></script>
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/css/skel.css" />
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/css/style.css" />
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/css/style-wide.css" />
</noscript>
<script>
function Home(obj) {
	if(session.getAttribute("loginUser") != null) {
		location.href = "main_login";
			
	} else {
		location.href = "main";
	}
}
</script>
</head>
<body>
	<div class="wrapper style1">
		<!-- 이메일 보내기-->
		<div id="footer" class="wrapper style2">
			<div class="container">
				<section> 
				<header class="major">
				<h2>이메일 보내기</h2>
				<span class="byline">관리자에게 문의하기</span> </header>
			</div>
			<div class="row half">
				<div class="12u">
					<h1>${user_ask}님문의 감사합니다.</h1>
					<h2>빠르게 처리해드리겠습니다.</h2>
				</div>
			</div>
			
			<!-- </form> -->
			</section>
			<br>
			<%if(session.getAttribute("loginUser") != null) {%> 
				<div class="button alt"><a href="main_login" style="color : #fff; text-decoration : none;">Home</a></div>
			<%} else { %>
				<div class="button alt"><a href="main" style="color : #fff; text-decoration : none;">Home</a></div>
			<% } %>
		</div>
	</div>

	<%@ include file="../util/footer.jsp"%>
</body>
</html>