<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petSitterList</title>
<link href="/static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="/static/cssc/footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="header">
		<%@ include file="../../include/hotelTop.jsp" %>
	</div>
	<div class="sitterArea">
		<div class="sitterList">
			<ul>
				<c:forEach items="${list }" var="list" varStatus="cnt">
					<li>
						<c:set value="${fn:split(list.sitterImg,'`') }" var="img" />
						<a href="sitterInfo"><img src="/hotel/petSitter/upload/${img[1] }" width="250" height="300" alt="돌보미이미지" />
							<p> ${cnt.index + 1}번 돌보미 [ ${list.sitterName }  ]</p><!-- 추후에 글씨 가운데 -->
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<a href="/hotel/registSitter">돌보미 등록</a>
	<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
	<!-- foot 끝 -->
</body>
</html>