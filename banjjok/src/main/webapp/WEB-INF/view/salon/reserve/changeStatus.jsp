<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
		<!-- 예약 서비스 -->
		<div class="select-title">디자이너/시간 선택</div>
		<div class="designer-list">
			<c:forEach items="${desn }" var="desn">
				<div class="select-designer">
					<c:set value="${fn:split(desn.desnImg,'`') }" var="img" />
					<img class="designer-img" src="/salon/designer/upload/${img[1] }" />
					<div class="designer-Area">
						<span class="designer-name"> <c:choose>
								<c:when test="${desn.desnUse eq '1' }">원장</c:when>
								<c:when test="${desn.desnUse eq '2' }">수석디자이너</c:when>
								<c:when test="${desn.desnUse eq '3' }">디자이너</c:when>
							</c:choose> ${desn.desnName }
						</span> <span class="designer-desc"> 안녕하세요, <c:choose>
								<c:when test="${desn.desnUse eq '1' }">원장</c:when>
								<c:when test="${desn.desnUse eq '2' }">수석디자이너</c:when>
								<c:when test="${desn.desnUse eq '3' }">디자이너</c:when>
							</c:choose> ${desn.desnName }입니다. ( <c:set var="regYear">
								<fmt:formatDate value="${desn.desnEnter }" pattern="yyyy" />
							</c:set> <c:out value="${year - regYear }" />년 )
						</span>
					</div>
					<c:set var="offDay" value="${fn:split(desn.desnOff,',') }" />
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
<%-- 									<c:forEach begin="10" end="17" var="hour"> --%>
<!-- 										<li><label class="box-radio-input">  -->
<%-- 											<input type="radio" name="reservTime" value="${hour }${minute}" --%>
<%-- 											onclick="getId('${desn.desnId}', '${desn.desnName}', this);" /><span>${hour }${minute}</span> --%>
<!-- 										</label></li> -->
<%-- 									</c:forEach> --%>
									<c:forEach begin="10" end="17" var="hour" varStatus="idx">
									<c:set var="timeSet" value="${hour }${minute}" />
										<li>
											<c:if test="${rsMap.get(desn.desnId).get(idx.count-1).flag }"></c:if>
											<c:if test="${!rsMap.get(desn.desnId).get(idx.count-1).flag }">
												<label class="box-radio-input"> 
													<input type="radio" name="reservTime" value="${timeSet }"
													onclick="getId('${desn.desnId}', '${desn.desnName}', this);" /><span >${hour }${minute}</span> 
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
</body>
</html>
