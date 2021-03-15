<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petSitterList</title>
<link href="/static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="/static/css/footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="header">
		<%@ include file="../../include/hotelTop.jsp" %>
	</div>
	<div class="sitterArea">
		<div class="sitterList">
			<ul>
<%-- 				<c:forEach items="${list }" var="list"> --%>
					<li>
						<c:set value="${fn:split(${list.sitterImg},'`') }" var="img" />
						<a href="#"><img src="/hotel/petSitter/upload/${img[1] }" alt="돌보미이미지" /></a>
						<p>${list.sitterName }</p>
					</li>
<%-- 				</c:forEach> --%>
			</ul>
		</div>
	</div>
	petSitterList<Br />
	<a href="/hotel/registSitter">돌보미 등록</a>
	<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
	<!-- foot 끝 -->
</body>
</html>