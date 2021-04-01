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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<div id="calendar-wrap">
		<%@ include file="../../include/top.jsp"%>
		<div class="content" id="content-calendar">
			<header>
				<!-- 월, 연도 -->
				<h1>
					<a onclick="otherMonth('${year}', '${currMonth - 1 }')"><i class="fas fa-angle-left fa-2x"></i></a>
					<c:choose>
						<c:when test="${currMonth eq '0'}">January</c:when>
						<c:when test="${currMonth eq '1'}">February</c:when>
						<c:when test="${currMonth eq '2'}">March</c:when>
						<c:when test="${currMonth eq '3'}">April</c:when>
						<c:when test="${currMonth eq '4'}">May</c:when>
						<c:when test="${currMonth eq '5'}">June</c:when>
						<c:when test="${currMonth eq '6'}">July</c:when>
						<c:when test="${currMonth eq '7'}">August</c:when>
						<c:when test="${currMonth eq '8'}">September</c:when>
						<c:when test="${currMonth eq '9'}">October</c:when>
						<c:when test="${currMonth eq '10'}">November</c:when>
						<c:when test="${currMonth eq '11'}">December</c:when>
					</c:choose>
					${year }
					<a onclick="otherMonth('${year}', '${currMonth + 1 }')"><i class="fas fa-angle-right fa-2x"></i></a>
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
						</li>
					</c:forEach>
					<!-- 현월 날짜 -->
					<c:forEach items="${cur }" var="cur" varStatus="status">
						<c:set value="${status.count + pre.size() }" var="line"/>
						<c:if test="${line % 7 == 0 }">
							</ul>
							<ul class="days">
						</c:if>
						<li class="day" onclick="getList('${year }','${currMonth +1 }','${cur }');">
							<div class="date">${cur }</div>
							<c:set value="1" var="count"/>	<!-- 최대 출력 개수(3) 제한을 위한 변수 -->
							<c:forEach items="${list }" var="list">
								<c:set var="sch"><fmt:formatDate value="${list.reservDate }" pattern="yyyyMd"/></c:set>
								<c:set var="date" value="${year }${currMonth+1 }${cur }"/>
								<c:if test="${sch eq date && list.reservUse ne '2'}">
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
								<div class="plus">+${count - 3 }</div>
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