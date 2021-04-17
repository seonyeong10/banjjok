<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:if test="${res.size() == 0 }">
		<table class="table" width="80%">
				<colgroup>
					<col width="5%" />
					<col width="5%" />
					<col width="10%" />
					<col width="10%" />
					<col width="5%" />
					<col width="10%" />
					<col width="15%" />
					<col width="10%" />
					<col width="20%" />
				</colgroup>
				<tr>
					<th>No.</th>
					<th>시간</th>
					<th>고객명</th>
					<th>펫 이름</th>
					<th>체급</th>
					<th>품종</th>
					<th>메뉴</th>
					<th>상태</th>
					<th>비고</th>
				</tr>
				<tr>
					<td colspan="9" style="color: red;">등록된 예약이 없습니다.</td>
				</tr>
			</table>
	</c:if>
	<c:if test="${res.size() != 0 }" >
	<table class="table" width="80%">
				<caption>
					<fmt:formatDate value="${res.get(0).reservDate }" pattern="M/dd(E)"/> 예약
				</caption>
				<colgroup>
					<col width="5%" />
					<col width="5%" />
					<col width="10%" />
					<col width="10%" />
					<col width="5%" />
					<col width="10%" />
					<col width="15%" />
					<col width="10%" />
					<col width="20%" />
				</colgroup>
				<tr>
					<th>No.</th>
					<th>시간</th>
					<th>고객명</th>
					<th>펫 이름</th>
					<th>체급</th>
					<th>품종</th>
					<th>메뉴</th>
					<th>상태</th>
					<th>비고</th>
				</tr>
				<c:forEach items="${res }" var="list" varStatus="status">
					<tr>
					<td>${status.count }</td>
					<td><fmt:formatDate value="${list.reservDate }" pattern="HH:mm"/> </td>
					<td>${list.memName }</td>
					<td>${list.petName }</td>
					<td>
					<c:if test="${list.petSize eq 'small'}">소형</c:if>
					<c:if test="${list.petSize eq 'middium'}">중형</c:if>
					<c:if test="${list.petSize eq 'big'}">대형</c:if>
					</td>
					<td>${list.breed }</td>
					<td><span onclick="getInfo(${list.reservCode});">${list.serviceName }</span></td>
					<td>
						<c:choose>
							<c:when test="${list.reservUse eq '0' }">결제완료</c:when>
							<c:when test="${list.reservUse eq '1' }">시술완료</c:when>
							<c:when test="${list.reservUse eq '2' }"><span style="color:red;">예약취소</span></c:when>
						</c:choose>
					</td>
					<td>
						<c:set var="year"><fmt:formatDate value="${list.reservDate }" pattern="yyyy"/></c:set>
						<c:set var="month"><fmt:formatDate value="${list.reservDate }" pattern="MM"/></c:set>
						<c:set var="date"><fmt:formatDate value="${list.reservDate }" pattern="dd"/></c:set>
						<c:choose>
						<c:when test="${list.reservUse eq '0' }">
							<a onclick="change('${list.reservCode}', '1', '${year }', '${month }', '${date }');">시술완료</a>
							<a onclick="change('${list.reservCode}', '2', '${year }', '${month }', '${date }');">예약취소</a>
						</c:when>
						<c:otherwise>변경불가</c:otherwise>
						</c:choose>
					</td>
				</tr>
				</c:forEach>
			</table>
			</c:if>
		<script src="<c:url value='/static/js/desnSchedule.js' />"></script>
		<script type="text/javascript">
			function getInfo(reservCode){
				location.href='/salon/desn/reserveInfo?reservCode=' + reservCode;
			}
		</script>
</body>
</html>
