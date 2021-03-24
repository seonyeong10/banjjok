<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 스케줄</title>
<link href="<c:url value='/static/css/baseCSS.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/desnSchedule.css' />" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
	<div id="calendar-wrap">
		<%@ include file="../../include/top.jsp"%>
		<div class="content">
			<header>
				<!-- 월, 연도 -->
				<h1>
					<c:choose>
						<c:when test="${currMonth eq '1'}">January</c:when>
						<c:when test="${currMonth eq '2'}">February</c:when>
						<c:when test="${currMonth eq '3'}">March</c:when>
						<c:when test="${currMonth eq '4'}">April</c:when>
						<c:when test="${currMonth eq '5'}">May</c:when>
						<c:when test="${currMonth eq '6'}">June</c:when>
						<c:when test="${currMonth eq '7'}">July</c:when>
						<c:when test="${currMonth eq '8'}">August</c:when>
						<c:when test="${currMonth eq '9'}">September</c:when>
						<c:when test="${currMonth eq '10'}">October</c:when>
						<c:when test="${currMonth eq '11'}">November</c:when>
						<c:when test="${currMonth eq '12'}">December</c:when>
					</c:choose>
					${year }
				</h1>
			</header>
			<div id="calendar">
				<!-- 월 화 수 목 금 토 일 -->
				<ul class="weekdays">
					<li>Sunday</li>
					<li>Monday</li>
					<li>Thursday</li>
					<li>Wednesday</li>
					<li>Thursday</li>
					<li>Friday</li>
					<li>Saturday</li>
				</ul>
				<!-- 전월 날짜 -->
				<ul class="days">
					<c:forEach items="${pre }" var="pre">
						<li class='day other-month'>
							<div class="date">${pre }</div> <!-- 예약이 있다면 출력 -->
							<div class="event">
								<div class="event-desc">스타일컷, 고객이름, 반려견이름</div>
								<div class="event-time">10:30am to 11:30am</div>
							</div>
						</li>
					</c:forEach>
					<!-- 현월 날짜 -->
					<c:forEach items="${cur }" var="cur" varStatus="status">
						<c:set value="${status.count + pre.size() }" var="line"/>
						<c:if test="${line % 7 == 0 }">
							</ul>
							<ul class="days">
						</c:if>
						<li class="day" onclick="getList('${year }','${currMonth}','${cur }');">
							<div class="date">${cur }</div>
							<c:set value="1" var="count"/>	<!-- 최대 출력 개수(3) 제한을 위한 변수 -->
							<c:forEach items="${list }" var="list">
								<c:set var="sch"><fmt:formatDate value="${list.reservDate }" pattern="dd"/></c:set>
								<c:if test="${sch eq cur}">
									<c:if test="${count <= 3 }">
										<div class="event">
											<div class="event-desc">
												<fmt:formatDate value="${list.reservDate }" pattern="HH:mm"/>
												${list.memName }, ${list.serviceName }
											</div>
										</div>
										<c:set value="${count+1 }" var="count"/>
									</c:if>
								</c:if>
							</c:forEach>
							<c:if test="${count > 3 }">
								<div class="plus">+${count }</div>
							</c:if>
						</li>
					</c:forEach>
					<c:forEach items="${next }" var="next">
						<li class="day other-month">
							<div class="date">${next }</div>
						</li>
					</c:forEach>
					</ul>
			</div>
		</div>
		<!-- 예약 리스트 테이블 -->
		<div class="list-area" id="list-area">
		</div>
	</div>
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script src="<c:url value='/static/js/desnSchedule.js' />"></script>
</body>
</html>