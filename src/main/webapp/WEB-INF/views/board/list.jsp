<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../util/header.jsp"%>
<title>Insert title here</title>
<style>
table {
	border: 1px solid #4a4947;
	border-radius: 5px;
}

th {
	padding: 10px 10px 10px 10px;
	color: #fff;
	background: #ff2f4a;
	border: 1px solid #4a4947;
	border-radius: 5px;
}

td {
	color: #4a4947;
	border: 1px solid #4a4947;
	border-radius: 5px;
	text-align: center;
}
a {
	text-decoration : none;
}
</style>
</head>
<body>
	<div class="top_line" style="margin-left: 462px; margin-top: 90px;">
		<div class="line"
			style="border-top: 2px solid #ff2f4a; width: 100px; margin-left: 126px;"></div>
		<p style="color: #4a4947;">
			<strong style="font-size: 29px; margin-left: 99px;">자유 게시판</strong>
		</p>

	</div>

	<center>
		<table width="500" cellpadding="0" cellspacing="0" border="1"
			style="margin-top: 35px">
			<tr>
				<td colspan="5"><a href="write_view" >글작성</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>제목</th>
				<!-- <th>날짜</th> -->
				<th>히트</th>
			</tr>
			
			<c:if test="${empty list}">
			<tr>
				<td colspan="4">등록된 글이 없습니다.</td>
			</tr>
			</c:if>
			
			<c:if test="${! empty list}">
			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.bId}</td>
					<td>${dto.bName}</td>
					<td><c:forEach begin="1" end="${dto.bIndent}">-</c:forEach> 
					<a href="content_view?bId=${dto.bId}&pg=${pg}">${dto.bTitle}</a></td>
					<%-- <td>${dto.bDate}</td> --%>
					<td>${dto.bHit}</td>
				</tr>
			</c:forEach>
			</c:if>
		</table>
		
		<table>
			<tr align="center">
				<td>
				<c:if test="${pg>block}">
					[ <a href="list?pg=1">◀◀</a> ]
					[ <a href="list?pg=${beginPage-1}">◀</a> ]
				</c:if> 
				<c:if test="${pg<=block}">
					[ <span style="color: gray;">◀◀</span> ]
					[ <span style="color: gray;">◀</span> ]
				</c:if> 
				<c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${i==pg}"> [ ${i} ] </c:if>
					<c:if test="${i!=pg}"> [ <a	href="list?pg=${i}">${i}</a> ]</c:if>
				</c:forEach> 
				<c:if test="${endPage<allPage}">
					[ <a href="list?pg=${endPage+1}">▶</a> ]
					[ <a href="list?pg=${allPage}">▶▶</a> ]
				</c:if> 
				<c:if test="${endPage>=allPage }">
					[ <span style="color: gray;">▶</span> ]
					[ <span style="color: gray;">▶▶</span> ]
				</c:if></td>
			</tr>
		</table>
		
	</center>
</body>
</html>