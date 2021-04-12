<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약상세</title>
<link href="<c:url value='/static/css/baseCSS.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/topMenu.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/salResInfo.css' />" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<!-- top -->
	<%@ include file="../../include/top.jsp" %>
	<!-- top 끝 -->
	<!-- 내용 -->
	<div class="content">
		<!-- 예약리스트 -->
		<h2>
			<span>
				<c:choose>
					<c:when test="${dto.reservUse eq '0' }">시술예정</c:when>
					<c:when test="${dto.reservUse eq '1' }">시술완료</c:when>
					<c:when test="${dto.reservUse eq '2' }">취소완료</c:when>
				</c:choose>
			</span>
			<span class="d-day">
				<c:choose>
					<c:when test="${dto.reservUse eq '2' }"><i class="far fa-frown"></i></c:when>
					<c:when test="${dto.reservUse eq '1' }"><i class="far fa-smile"></i></c:when>
					<c:otherwise>
						<i class="far fa-calendar-alt"></i>
						<c:set value="<%=new java.util.Date()%>" var="now" />
							<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowDate"></fmt:parseNumber>
							<c:set var="resDate"><fmt:formatDate value="${dto.reservDate }" pattern="yyyy-MM-dd"/></c:set>
							<fmt:parseNumber value="${dto.reservDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
							<c:if test="${(strDate - nowDate) <= 0}"></c:if>
							<c:if test="${(strDate - nowDate) > 0}">D-${strDate - nowDate }</c:if>
					</c:otherwise>
				</c:choose>
			</span>
		</h2>
		<div class="reservation-area">
			<ul>
				<li><span class="title">예약번호</span> ${dto.reservCode }</li>
				<li><span class="title">날짜/시간</span>
				<fmt:formatDate value="${dto.reservDate }"
						pattern="M월 d일 (E) a HH:mm" /></li>
				<li><span class="title">선택메뉴</span> ${dto.serviceName }</li>
				<li><span class="title">시술대상</span>
					<c:if test="${dto.petSize eq 'small' }">소형견</c:if>
					<c:if test="${dto.petSize eq 'middium' }">중형견</c:if>
					<c:if test="${dto.petSize eq 'big' }">대형견</c:if>
				</li>
				<li><span class="title">담당</span>
				<c:choose>
						<c:when test="${dto.desnUse eq '1' }">원장</c:when>
						<c:when test="${dto.desnUse eq '2' }">수석디자이너</c:when>
						<c:when test="${dto.desnUse eq '3' }">디자이너</c:when>
				</c:choose>${dto.desnName }</li>
			</ul>
		</div>
		<div class="mem-info">
			<ul>
				<li><span class="title">예약자</span> ${dto.memName }</li>
				<li><span class="title">펫 이름</span> ${dto.petName }</li>
				<li><span class="title">펫 체급</span>
					<c:if test="${dto.petSize eq 'small' }">소형견</c:if>
					<c:if test="${dto.petSize eq 'middium' }">중형견</c:if>
					<c:if test="${dto.petSize eq 'big' }">대형견</c:if>
				</li>
				<li><span class="title">펫 품종</span> ${dto.breed }</li>
				<li><span class="title">연락처</span> ${dto.memMobile }</li>
				<li><span class="title">요청사항</span> ${dto.reservDesc }</li>
			</ul>
		</div>
		<div class="payment-area">
			<h2>결제정보</h2>
			<ul>
				<li><span class="title">메뉴가격</span><fmt:formatNumber value="${dto.serviceFee }" pattern="#,###"/> </li>
				<li style="font-weight: 400;"><span class="title">추가금액</span><fmt:formatNumber value="${dto.totalFee - dto.serviceFee }" pattern="#,###"/> </li>
				<li><span class="title">총 결제금액</span>
				<span class="pay-method"><c:choose>
					<c:when test="${dto.payMethod eq 'card' }">카드</c:when>
				</c:choose> </span>
				<fmt:formatNumber value="${dto.totalFee }" pattern="#,###"/>
				</li>
			</ul>
		</div>
		<c:if test="${dto.reservUse eq '2' }">
		<div class="payment-area">
			<h2>취소/환불 정보</h2>
			<ul>
				<li><span class="title">취소날짜/시간</span><fmt:formatDate value="${dto.cancleDate }" pattern="M월 dd일 (E) a HH:mm"/> </li>
				<li><span class="title">총 금액(취소/환불)</span>
				<span class="pay-method" >
				<c:choose>
					<c:when test="${dto.payMethod eq 'card' }">카드</c:when>
				</c:choose> </span>
				<fmt:formatNumber value="${dto.totalFee }" pattern="#,###"/>
				</li>
			</ul>
		</div>
		</c:if>
		<div class="btn-area">
			<c:set var="year"><fmt:formatDate value="${dto.reservDate }" pattern="yyyy"/></c:set>
			<c:set var="month"><fmt:formatDate value="${dto.reservDate }" pattern="MM"/></c:set>
			<c:set var="date"><fmt:formatDate value="${dto.reservDate }" pattern="dd"/></c:set>
			<c:choose>
				<c:when test="${dto.reservUse eq '2' || dto.reservUse eq '1' }"></c:when>
				<c:otherwise>
					<a class="modify" onclick="change('${dto.reservCode}', '1', '${year }', '${month }', '${date }');">시술완료</a>
					<a onclick="change('${list.reservCode}', '2', '${year }', '${month }', '${date }');">예약취소</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script src="<c:url value='/static/js/desnSchedule.js' />"></script>
	<script type="text/javascript">
// 		function modify(){
// 			location.href="/main/reserve/salon/resFin?reservCode=" + ${dto.reservCode};
// 		}
// 		function cancle(reservCode) {
// 			if(confirm('예약을 취소하시겠습니까?')) {
// 				location.href='/main/reserve/salon/cancle?reservCode=' + reservCode;
// 			}
// 		}
	</script>
	<!-- foot 끝 -->
</body>
</html>