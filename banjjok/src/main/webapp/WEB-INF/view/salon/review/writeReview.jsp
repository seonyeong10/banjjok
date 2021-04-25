<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기작성</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/salResInfo.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/starScore.css'/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
<%@ include file="../../include/top.jsp"%>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>Review</h2>
		</div>
		<div class="current-section">
			<span class="pennant"><span class="fas fa-feather-alt fa-2x"></span> &nbsp;후기 작성</span>
		</div>
	</div>

	<form:form action="/main/reserve/salon/review/enroll" name="frm" id="frm" method="post">
		<input type="hidden" name="serviceCode" value="${dto.serviceCode }"/>
		<div class="content" style="background: none;">
			<div class="reservation-area">
				<ul>
					<li>
						<span class="title">예약번호</span> 
						<input type="text" name="reservCode" value="${dto.reservCode }" readonly="readonly"/>
					</li>
					<li>
						<span class="title">날짜/시간</span>
						<fmt:formatDate value="${dto.reservDate }" pattern="M월 d일 (E) a HH:mm" />
					</li>
					<li><span class="title">선택메뉴</span> 
						[
						<c:if test="${dto.petSize eq 'small' }">소형견</c:if>
						<c:if test="${dto.petSize eq 'middium' }">중형견</c:if>
						<c:if test="${dto.petSize eq 'big' }">대형견</c:if>
						] ${dto.serviceName }
					</li>
					<li><span class="title">담당</span> <c:choose>
							<c:when test="${dto.desnUse eq '1' }">원장</c:when>
							<c:when test="${dto.desnUse eq '2' }">수석디자이너</c:when>
							<c:when test="${dto.desnUse eq '3' }">디자이너</c:when>
						</c:choose>${dto.desnName }</li>
					<li><span class="title">펫 이름/품종</span> ${dto.petName }(${dto.breed })</li>
				</ul>
				<br />
				<ul style="background: #f4f1de; padding: 0 10px">
					<li>
						<span class="title">별점</span>
						<span class="star">
							<input type="hidden" name="star" value="1"/>
							<span class="eval on"></span>
							<span class="eval"></span>
							<span class="eval"></span>
							<span class="eval"></span>
							<span class="eval"></span>
						</span>
					</li>
					<li>
						<span class="title">내용</span>
						<textarea name="review"></textarea>
						<form:errors path="review" />
					</li>
				</ul>
			</div>
			<div class="btn-area">
				<input type="submit" class="modify" value="등록하기"/>
				<a onclick="javascript:history.back();">취소하기</a>
			</div>
		</div>
	</form:form>
	<!-- foot -->
	<footer> 
		SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. 
	</footer>
	<!-- foot 끝 -->
	<script src="<c:url value='/static/js/starScore.js'/>"></script>
<!-- 	<script src="../../../static/js/starScore.js"></script> -->
</body>
</html>