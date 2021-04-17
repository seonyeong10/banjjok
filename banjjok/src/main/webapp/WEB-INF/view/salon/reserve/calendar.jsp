<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
	<div class="select-title">날짜선택</div>
	<div class="calendar">
		<div class="month">
			<span onclick="preMonth('${year }','${currMonth - 1 }');"><i class="fas fa-angle-left fa-2x"></i> </span>
			${currMonth + 1 }월
			<span onclick="preMonth('${year }','${currMonth + 1 }');"><i class="fas fa-angle-right fa-2x"></i></span>
		</div>
		<input type="hidden" name="year" value="${year }" /> <input
			type="hidden" name="month" value="${currMonth }" />
		<ul class="calendar-month" style="background: #ede9e4;">
			<!-- 요일 -->
			<li>일</li>
			<li>월</li>
			<li>화</li>
			<li>수</li>
			<li>목</li>
			<li>금</li>
			<li>토</li>
		</ul>
		<ul class="calendar-month">
			<!-- 지난달 -->
			<c:forEach items="${pre }" var="pre">
				<li><a class="date none-current">${pre }</a></li>
			</c:forEach>
			<!-- 이번달 -->
			<c:forEach items="${cur }" var="cur" varStatus="status">
				<c:set value="${status.index + pre.size() }" var="line" />
				<c:if test="${line % 7 eq 0 }">
					<br />
				</c:if>
				<li>
					<label class="date-current">
						<input type="radio" name="date" value="${cur }"
							onclick="loadDesn('${year }', '${currMonth+1 }', '${cur }');" />
						<span>${cur }</span>
					</label>
				</li>
			</c:forEach>
			<!-- 다음달 -->
			<c:forEach items="${next }" var="next">
				<li><a class="date none-current">${next }</a></li>
			</c:forEach>
		</ul>
	</div>
<!-- <script src="../../static/js/salonReserve.js"></script> -->