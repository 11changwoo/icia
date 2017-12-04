<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이메일 문의하기</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath }/js/skel-layers.min.js"></script>
<script src="${pageContext.request.contextPath }/js/init.js"></script>
<noscript> 
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/skel.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style-wide.css" />
</noscript>
</head>
<body>
   <div class="wrapper style1">
      <!-- 이메일 보내기-->
      <div id="footer" class="wrapper style2">
         <div class="container">
            <section>
               <header class="major">
                  <h2>예약 문의하기</h2>
                  <!-- <span class="byline">이메일 보내서 문의하기</span> -->
               </header>
               <form method="post" action="askOk">

                  <div class="row half" style="position: relative;">
                     <div class="12u">
                        <select name="select_category" id="select_category"
                           style="position: absolute; right: 20px; top: 33px; z-index: 9999999;">
                           <option>영화</option>
                           <option>펜션</option>
                           <option>호텔</option>
                           <option>여행</option>
                           <option>미용실</option>
                        </select>
                     </div>
                  </div>
                  <div class="row half" style="position: relative;">
                     <div class="12u">
                        <input class="text" type="text" name="name" id="name"
                           placeholder="Name">
                     </div>
                  </div>
                  <div class="row half">
                     <div class="12u">
                     	<!-- style="width: 200px; float: left; margin-right: 5px;" -->
                        <input class="text" type="text" name="email" id="email"
                           placeholder="Email" />
                           <!-- <input class="text" type="button" value="@" style="background : none; width : 20px; float:left; margin-right: 25px; outline : 0"/>
                           <input class="text" type="text" name="email_addr" id="email_addr" style="width: 380px; float: left; margin-right: 0px;"
                           placeholder="Email_addr" /> -->
                     </div>
                  </div>

                  <div class="row half">
                     <div class="12u">
                        <textarea name="message" id="message" placeholder="Message"></textarea>
                     </div>
                  </div>
                  <div class="row half">
                     <div class="12u">
                        <ul class="actions">
                           <li><input type="submit" value="Send Message"
                              class="button alt" /></li>
                        </ul>
                     </div>
                  </div>
               </form>
            </section>
         </div>
      </div>
      
      <%@ include file="footer.jsp"%>
</body>
</html>