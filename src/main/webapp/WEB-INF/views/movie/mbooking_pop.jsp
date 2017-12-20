<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name='viewport' content='width=1000, initial-scale=0.3, maximum-scale=1, user-scalable=yes'/>
<title>영화 페이지</title>
<style type="text/css">
<!--
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
*{ margin:0; padding:0; font-family:'Noto Sans KR', sans-serif; line-height:1}
.va{ display:inline-block; *display:inline; zoom:1; vertical-align:middle; height:100%;}
.va_tt{display:inline-block; *display:inline; zoom:1; vertical-align:middle; width:auto; height:auto; width:99%}
.wrap{ position:absolute; z-index:inherit; left:0; top:0; width:100%; height:100%; text-align:center;
background: #ffffff; /* Old browsers */
background: -moz-linear-gradient(top,  #fff 0%, #fff 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(top,  #fff 0%,#fff 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(to bottom,  #fff 0%,#fff 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#c4eaff',GradientType=0 ); /* IE6-9 */
}

.t1{ font-size:30px; color:#ff2f4a; font-weight:bold; border:1px solid #4a4947; border-left:none; border-right:none; padding:25px 0; margin-bottom:20px;text-transform:uppercase; margin-top:20px;}
.t2_0{ }
.t2_1{ text-align:center;font-size:15px; color:#000; line-height:30px; margin-top:30px;}
.t3{ font-size:15px; background:#222; color:#fff; padding:15px 0;}
.t3 span{border:1px solid #999999; border-style: inset;}

<!--.list{ display:inline-block; *display:inline; zoom:1; padding:10px 70px; border-radius:100px; margin:50px 0; border:1px solid #012e46; background:#012e46;}
<!--.list > li{ text-align:left; line-height:2; font-size:20px; color:#ddd; list-style:none;}-->
<!--.list > li a{ text-decoration:none; color:#ddd;}-->
-->.list > li a:hover{ text-decoration: underline; color:#999999;}-->
-->

.t2_0 {
	/*margin-top: 20px;*/
	float: left;
	position: relative;
	/* overflow: hidden; */
}

.img_big {
	border: 3px solid #FFFFFF;
	color: #ffffff;
	cursor: pointer;
	background: #000000;
	border-radius: 50px;
	width: 23px;
	height: 25px;
	margin: 0px;
	text-align: center;
	font-weight: bold;
	font-size: 23px;
	position: absolute;
	bottom: 5px;
	left: 8px;
}

.img_big:hover{border-radius:50px; color:#fff; background: #ff2f4a; width: 23px; height: 25px;}


.wrap .va_tt .movie_list { float: left;  display: block; *display:inline-block;  border-radius: 5px; margin: 100px; }
<!--border: 1px solid #4a4947; padding: 24px 150px 25px 10px; -->
</style>
</head>
<body>
<div class="wrap">
    <div class="va"></div>
    <div class="va_tt">
        <p class="t1">상영하는 영화</p>
        <div class="t2_0">
        <img src="${pageContext.request.contextPath}/cimg/${mpopup.mimg}" width="185;" height="260;" />
        <p class="img_big"
						onclick="window.open('movie_subpopup?mimg=${mpopup.mimg}','','width=1280,height=921, status=yes, toolbar=no, menubar=no, location=no, scrollbars=yes, resizable=no')">+</p></div>
			
		<div class="movie_list">				
        <p>가격 = ${mpopup.mprice1 }</p>
        <p>이름 = ${mpopup.mroom1 }</p>
        <p>장소 = ${mpopup.mplace1 }</p>
        <p>인원 = ${mpopup.mpersonnel1 }</p>
        <p>영화이름 = ${mpopup.mname1 }</p>
        </div>
    </div>
</div>
</body>
</html>