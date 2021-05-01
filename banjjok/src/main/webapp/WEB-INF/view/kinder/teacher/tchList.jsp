<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salonMain</title>
<link href="<c:url value="/static/css/baseCSS.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/css/footer.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/css/salonInfo.css"/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<%@ include file="../../include/top.jsp" %>
	<div class="contentWrap">
		<!-- Content -->
		<div class="content">
			<div class="titleWrap">
				<div class="title">
					<h2>Kinder Garden</h2>
				</div>
			<div class="desinerWrap">
				<div class="title">
					<h2>Our Teachers</h2>
				</div>
				<div class="desinerInfoArea">
					<!-- 4명 1줄, 원장부터 직급순 나열 -->
					<div class="desinerInfo">
						<ul>
							<c:forEach items="${list }" var="list">
								<c:if test="${list.tState eq '01' || list.tState eq '02' || list.tState eq '03'}">
								<li >
									<c:set value="${fn:split(list.tPhoto,'`') }" var="i" />
									<a onclick="getInfo('${list.tId}');"><img src="/kinder/upload/${i[1] }" alt="face" /></a>
<%-- 									<a onclick="getInfo('${list.desnId}');"><img src="#" alt="face" /></a> --%>
									<p>
										${list.tName }
										<c:if test="${list.tState eq '01' }">사회화 테스트</c:if>
										<c:if test="${list.tState eq '02' }">단일반</c:if>
										<c:if test="${list.tState eq '03' }">종일반</c:if>
									</p>
								</li>
								</c:if>
							</c:forEach>
							<c:if test="${authInfo.grade eq 'teacher' }">
								<li class="add-designer-button">
									<!-- 디자이너 등록버튼 -->
									<a href="/kinder/teacher/enroll"><span class="fa fa-user-plus fa-3x"></span></a>
								</li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Content 끝 -->
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script src="<c:url value='/static/js/salonMain.js'/>"></script>
	<!-- foot 끝 -->
</body>
</html>