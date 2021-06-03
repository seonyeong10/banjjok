<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Education Reservation</title>
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
			
			<form action="booking" method="post" name="frm" onsubmit="return send();">
			<div class="reserve-wrap">
			<div class="selectedServiceArea">
				<input type="hidden" name="bLTester" value="" />
				<input type="hidden" name="tName" value="" />
				<input type="hidden" name="pCode" value="${program.pCode }" />
				<input type="hidden" name="pName" value="${program.pName }" />
				<input type="hidden" name="pPrice" value="${program.pPrice }" />
				<ul>
					<li>
						<span class="select-menu-name">메뉴</span>${program.pName }
					</li>
					<li>
						<span class="select-menu-price">메뉴가격</span><fmt:formatNumber value="${program.pPrice }" pattern="#,###" />
					</li>
				</ul>
				<!-- 현재일로부터 14일간만 선택 가능 -->
			</div> <!-- 서비스 끝 -->
			<div class="selectedServiceArea">
				<!-- 펫 선택 -->
				<div class="select-title">펫 선택</div>
					<input type="hidden" name="petName" value=""/>
					<c:set var="isExist" value="false" />
					<c:forEach items="${petList }" var="pet">
						<c:if test="${pet.petSize eq program.pTarget }">
							<label class="box-radio-input">
<%-- 								<input type="radio" name="petId" value="${pet.petId }" onclick="getPetName('${pet.petName}', '${pet.weight }', ${menu.serviceOpt });"/> --%>
								<input type="radio" name="petId" value="${pet.petId }" onclick="getPetName('${pet.petName}');"/>
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
			</div> <!-- 펫 끝 -->
			
			<c:if test="${program.pCateg != '03' }">
			<div class="selectDateArea" id="select-date">
<!-- 				예약 서비스 -->
				<div class="select-title">날짜선택</div>
				<div class="calendar">
					<div class="month">
						<span onclick="preMonth('${year }','${currMonth - 1 }');"><i class="fas fa-angle-left fa-2x"></i> </span>
						${currMonth + 1 }월 ${year }
						<span onclick="preMonth('${year }','${currMonth + 1 }');"> <i class="fas fa-angle-right fa-2x"></i></span></div>
					<input type="hidden" name="year" value="${year }"/>
					<input type="hidden" name="month" value="${currMonth }"/>
					<ul class="calendar-month" style="background: #ede9e4;">
<!-- 						요일 -->
						<li >일</li>
						<li >월</li>
						<li >화</li>
						<li >수</li>
						<li >목</li>
						<li >금</li>
						<li >토</li>
					</ul>
					<ul class="calendar-month">
<!-- 						지난달 -->
						<c:forEach items="${pre }" var="pre">
							<li ><a class="date none-current">${pre }</a></li>
						</c:forEach>
<!-- 						이번달 -->
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
<%-- 										onclick="loadDesn('${year }', '${currMonth }', '${cur }');" --%>
									/>
									<span>${cur }</span>
									</label>
								</c:if>
							</li>
						</c:forEach>
<!-- 						다음달 -->
						<c:forEach items="${next }" var="next">
							<li><a class="date none-current" >${next }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
<!-- 			캘린더 끝 -->
			<div class="selectDesignerArea" id="reload-area">
				<!-- 예약 서비스 -->
				<div class="select-title">담당자 선택(사회화 테스트) </div>
				<div class="designer-list">
				<c:forEach items="${tchs }" var="tch">
					<div class="select-designer">
						<c:set value="${fn:split(tch.tPhoto,'`') }" var="img" />
						<img class="designer-img" src="/kinder/upload/${img[1] }"/>
						<div class="designer-Area">
							<span class="designer-name">
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${desn.desnUse eq '1' }">원장</c:when> --%>
<%-- 									<c:when test="${desn.desnUse eq '2' }">수석디자이너</c:when> --%>
<%-- 									<c:when test="${desn.desnUse eq '3' }">디자이너</c:when> --%>
<%-- 								</c:choose> --%>
								${tch.tName }
							</span>
							<span class="designer-desc">
								안녕하세요,
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${desn.desnUse eq '1' }">원장</c:when> --%>
<%-- 									<c:when test="${desn.desnUse eq '2' }">수석디자이너</c:when> --%>
<%-- 									<c:when test="${desn.desnUse eq '3' }">디자이너</c:when> --%>
<%-- 								</c:choose> --%>
								${tch.tName }입니다.
								<c:set var="regYear"><fmt:formatDate value="${tch.tJoin }" pattern="yyyy"/></c:set>
								<c:if test="${(year - regYear) > 0 }">( ${year - regYear}년 )</c:if>
							</span>
						</div>
						<c:set var="offDay" value="${fn:split(tch.tDuty,',') }"/>
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
									<c:forEach begin="10" end="17" var="hour" varStatus="idx">
									<c:set var="timeSet" value="${hour }${minute}" />
										<li>
											<c:if test="${rsMap.get(desn.desnId).get(idx.count-1).flag }"></c:if>
											<c:if test="${!rsMap.get(desn.desnId).get(idx.count-1).flag }">
												<label class="box-radio-input"> 
													<input type="radio" name="bLTime" value="${timeSet }"
													onclick="getId('${tch.tId}', '${tch.tName}', this);" /><span >${hour }${minute}</span> 
												</label>
											</c:if>
										</li>
									</c:forEach>
								</ul>
							</div>
						</c:if>
					</div>
				</c:forEach>
				</div>
			</div> <!-- 디자이너 끝 -->
			</c:if>
			</div>
			
			<div class="btn-wrap">
				<!-- 예약하기 -->
				<div class="price-area">
					<span>결제 예정금액</span>
					<span class="price">
						<fmt:formatNumber value="${program.pPrice }" pattern="#,###" />원
					</span>
				</div>
				<div class="btn-area">
					<input type="submit" value="결제하기" />
				</div>
			</div>
		</form>
		</div>
		<!-- Content 끝 -->

		<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
			Rights reserved. </footer>
<!-- 		<script src="../../static/js/kinderBook.js"></script> -->
		<script type="text/javascript">
		function getId(tId, tName, btn){
			$('input:hidden[name="bLTester"]').val(tId);
			$('input:hidden[name="tName"]').val(tName);
		}
		function getPetName(petName) {
			$('input:hidden[name="petName"]').val(petName);
		}
		function send(){
			var radio_len = document.getElementsByName('petId');
			var isChecked = false;
			for(var i=0; i < radio_len.length ; i++) {
				if(radio_len[i].checked == true) {
					isChecked = true;
					break;
				}
			}
			if(!isChecked) {
				alert('펫을 선택해주세요.');
				return false;
			} 
			if(document.getElementsByName('bLTester')[0].value.trim() == "") {
				alert('시간을 선택해주세요.');
				return false;
			}
		}
		</script>
		<!-- foot 끝 -->
</body>
</html>