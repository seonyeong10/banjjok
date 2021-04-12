<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미용 예약</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/reserveForm.css'/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
<%@ include file="../../include/top.jsp"%>
		<!-- Content -->
		<div class="content">
			<div class="titleWrap">
				<div class="title">
					<h2>예약하기</h2>
				</div>
				<div class="fieldDesc">
					<!-- <p>서비스 메뉴 등록</p> -->
				</div>
			</div>
			<form action="reserveAct" method="post" name="frm" onsubmit="return send();">
			<div class="reserve-wrap">
			<div class="selectedServiceArea">
				<!-- 예약 서비스 -->
				<input type="hidden" name="serviceCode" value="${menu.serviceCode }"/>
				<input type="hidden" name="serviceName" value="${menu.serviceName }"/>
				<ul>
					<li><span class="select-menu-name">메뉴</span>
					[<c:if test="${menu.serviceTarget eq 'small' }">소형견</c:if><c:if test="${menu.serviceTarget eq 'middium' }">중형견</c:if><c:if test="${menu.serviceTarget eq 'big' }">대형견</c:if>] ${menu.serviceName }</li>
					<li><span class="select-menu-price">메뉴가격</span><fmt:formatNumber value="${menu.serviceFee }" pattern="#,###" /> </li>
				</ul>
				<!-- 현재일로부터 14일간만 선택 가능 -->
			</div> <!-- 서비스 끝 -->
			<div class="selectedServiceArea">
				<!-- 펫 선택 -->
				<div class="select-title">펫 선택</div>
				<input type="hidden" name="petName"/>
					<c:set var="isExist" value="false" />
					<c:forEach items="${petList }" var="pet">
						<c:if test="${pet.petSize eq menu.serviceTarget }">
							<label class="box-radio-input">
								<input type="radio" name="petId" value="${pet.petId }" onclick="getPetName('${pet.petName}', '${pet.weight }', ${menu.serviceOpt });"/>
								<span>${pet.petName }</span>
							</label>
							<c:set var="isExist" value="true" />
						</c:if>
					</c:forEach>
					<c:if test="${isExist eq false }">
						<label class="box-radio-input"> 
							<span style="color: red;">선택할 수 있는 펫이 없습니다.</span>
						</label>
					</c:if>
					<div class="select-title-price" >추가금액<span> 몸무게에 따라 추가금액이 붙을 수 있습니다.</span></div>
				<input type="text" name="optFee" value="0"/>원
			</div> <!-- 펫 끝 -->
			<div class="selectDateArea" id="select-date">
				<!-- 예약 서비스 -->
				<div class="select-title">날짜선택</div>
				<div class="calendar">
					<div class="month">
						<span onclick="preMonth('${year }','${currMonth - 1 }');"><i class="fas fa-angle-left fa-2x"></i> </span>
						${currMonth + 1 }월 ${year }
						<span onclick="preMonth('${year }','${currMonth + 1 }');"> <i class="fas fa-angle-right fa-2x"></i></span></div>
					<input type="hidden" name="year" value="${year }"/>
					<input type="hidden" name="month" value="${currMonth }"/>
					<ul class="calendar-month" style="background: #ede9e4;">
						<!-- 요일 -->
						<li >일</li>
						<li >월</li>
						<li >화</li>
						<li >수</li>
						<li >목</li>
						<li >금</li>
						<li >토</li>
					</ul>
					<ul class="calendar-month">
						<!-- 지난달 -->
						<c:forEach items="${pre }" var="pre">
							<li ><a class="date none-current">${pre }</a></li>
						</c:forEach>
						<!-- 이번달 -->
						<c:forEach items="${cur }" var="cur" varStatus="status">
							<c:set value="${status.index + pre.size() }" var="line"/>
							<c:if test="${line % 7 eq 0 }">
								<br />
							</c:if>
							<li >
								<c:if test="${cur lt date }">
									<a class="date none-current">${cur }</a>
								</c:if>
								<c:if test="${cur ge date }">
									<label class="date-current">
									<input type="radio" name="date" value="${cur }"
										<c:if test="${cur eq date }">checked</c:if> 
										onclick="loadDesn('${year }', '${currMonth }', '${cur }');"/>
									<span>${cur }</span>
									</label>
								</c:if>
							</li>
						</c:forEach>
						<!-- 다음달 -->
						<c:forEach items="${next }" var="next">
							<li><a class="date none-current" >${next }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div> <!-- 캘린더 끝 -->
			<input type="hidden" name="desnId" />
			<input type="hidden" name="desnName" />
			<div class="selectDesignerArea" id="reload-area">
				<!-- 예약 서비스 -->
				<div class="select-title">디자이너/시간 선택 </div>
				<div class="designer-list">
				<c:forEach items="${desn }" var="desn">
					<div class="select-designer">
						<c:set value="${fn:split(desn.desnImg,'`') }" var="img" />
						<img class="designer-img" src="/salon/designer/upload/${img[1] }"/>
						<div class="designer-Area">
							<span class="designer-name">
								<c:choose>
									<c:when test="${desn.desnUse eq '1' }">원장</c:when>
									<c:when test="${desn.desnUse eq '2' }">수석디자이너</c:when>
									<c:when test="${desn.desnUse eq '3' }">디자이너</c:when>
								</c:choose>
								${desn.desnName }
							</span>
							<span class="designer-desc">
								안녕하세요,
								<c:choose>
									<c:when test="${desn.desnUse eq '1' }">원장</c:when>
									<c:when test="${desn.desnUse eq '2' }">수석디자이너</c:when>
									<c:when test="${desn.desnUse eq '3' }">디자이너</c:when>
								</c:choose>
								${desn.desnName }입니다.
								<c:set var="regYear"><fmt:formatDate value="${desn.desnEnter }" pattern="yyyy"/></c:set>
								<c:if test="${(year - regYear) > 0 }">( ${year - regYear}년 )</c:if>
							</span>
						</div>
						<c:set var="offDay" value="${fn:split(desn.desnOff,',') }"/>
						<c:if test="${offDay[0] eq dayOfWeek || offDay[1] eq dayOfWeek}">
							<div class="time-area">
								<ul>
									<li class="off">디자이너 정기휴일</li>
								</ul>
							</div>
						</c:if>
						<c:if test="${offDay[0] ne dayOfWeek && offDay[1] ne dayOfWeek }">
							<div class="time-area">
								<c:set value=":00" var="minute"/>
								<ul>
									<c:forEach begin="10" end="17" var="hour">
										<li><label class="box-radio-input"> 
											<input type="radio" name="reservTime" value="${hour }${minute}"
											onclick="getId('${desn.desnId}', '${desn.desnName}', this);" /><span >${hour }${minute}</span> 
										</label></li>
									</c:forEach>
								</ul>
							</div>
						</c:if>
					</div>
				</c:forEach>
				</div>
			</div> <!-- 디자이너 끝 -->
			<!-- 요청사항 -->
			<div class="selectedServiceArea">
				<div class="select-title">요청사항</div>
				<!-- 예약 서비스 -->
				<div>
					<textarea name="reservDesc"></textarea>
				</div>
				<!-- 현재일로부터 14일간만 선택 가능 -->
			</div> <!-- 요청사항 끝 -->
			</div>
			<div class="btn-wrap">
				<!-- 예약하기 -->
				<div class="price-area">
					<span>결제 예정금액</span>
					<span class="price">
						<fmt:formatNumber value="${menu.serviceFee }" pattern="#,###" />원
						<input type="hidden" name="serviceFee" value="${menu.serviceFee }"/>
					</span>
				</div>
				<div class="btn-area">
					<input type="submit" value="예약하기" />
				</div>
			</div>
		</form>
		</div>
		<!-- Content 끝 -->

		<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
			Rights reserved. </footer>
		<script src="../../static/js/salonReserve.js"></script>
		<!-- foot 끝 -->
</body>
</html>