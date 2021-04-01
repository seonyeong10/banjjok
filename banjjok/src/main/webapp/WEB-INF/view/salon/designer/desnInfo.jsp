<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 상세정보</title>
<link href="<c:url value='/static/css/baseCSS.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/desnInfo.css' />" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
<%@ include file="../../include/top.jsp" %>
	<div class="contentWrap">
		<!-- Content -->
		<div class="content">
			<div class="titleWrap">
				<div class="title">
					<h2>Salon Designer</h2>
				</div>
				<div class="fieldDesc">
					<!-- <p>서비스 메뉴 등록</p> -->
				</div>
			</div>
			<div class="designerInfoWrap">
				<!--사진/닉네임/경력/지점명/정기휴무일/소개글-->
				<div class="desingerArea">
					<table>
						<tr>
							<td>
								<c:set value="${fn:split(list.desnImg,'`') }" var="i" />
								<img src="/salon/designer/upload/${i[1] }" alt="designer Face" />
							</td>
							<td>
								<span class="name">${list.desnName }</span><br />
								<br />
								<span>(주)반쪽의 숲 
									<c:choose>
										<c:when test="${list.desnUse eq '1' }">원장</c:when>
										<c:when test="${list.desnUse eq '2' }">수석디자이너</c:when>
										<c:when test="${list.desnUse eq '3' }">디자이너</c:when>
									</c:choose>
									<c:set var="today" value="<%=new java.util.Date()%>" />
									<c:set var="now"><fmt:formatDate value="${today }" pattern="yyyy"/></c:set>
									<c:set var="enter"><fmt:formatDate value="${list.desnEnter }" pattern="yyyy"/></c:set>
									<c:if test="${(now - enter) ne 0 }">
										(<c:out value="${now - enter }"></c:out>)
									</c:if>
								</span>
							</td>
						</tr>
					</table>
				</div>
				<div class="storeArea">
					<table>
						<tr>
							<td colspan="2">
								<span>살롱 본점</span>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td colspan="2">
								<span>매주
								<c:set value="${fn:split(list.desnOff,',') }" var="off" />
								<c:forEach items="${off }" var="when" varStatus="status">
									<c:if test="${when eq '1' }">일요일</c:if>
									<c:if test="${when eq '2' }">월요일</c:if>
									<c:if test="${when eq '3' }">화요일</c:if>
									<c:if test="${when eq '4' }">수요일</c:if>
									<c:if test="${when eq '5' }">목요일</c:if>
									<c:if test="${when eq '6' }">금요일</c:if>
									<c:if test="${when eq '7' }">토요일</c:if>
									<c:if test="${status.count lt '2' }">,</c:if>
								</c:forEach>
								휴무</span>
							</td>
						</tr>
					</table>
				</div>
				<div class="descArea">(소개글) 안녕하세요. 
					<c:choose>
						<c:when test="${list.desnUse eq '1' }">원장</c:when>
						<c:when test="${list.desnUse eq '2' }">수석디자이너</c:when>
						<c:when test="${list.desnUse eq '3' }">디자이너</c:when>
					</c:choose>
				${list.desnName }입니다.</div>
			</div>
			<div class="designerHeartArea">
<!-- 				하트/총하트 수 -->
				<a href="#">
<!--  					<img src="#" alt="heart" /> -->
					<i class="fas fa-heart" style="color: red;"></i>
<%-- 					<div class="heartCount">${htCount }</div> --%>
				</a>
			</div>
			<div class="styleBookArea">
				<h2>이 디자이너의 스타일 ${count }</h2>
				<br />
				<ul class="styleBook">
					<c:forEach items="${styleList }" var="style" varStatus="i">
						<c:if test="${style.styleUse eq '0' }">
							<li>
								<a href="<c:url value='/salon/style/desnStyle?styleCode=${style.styleCode }'/>"><img src="/salon/designer/styleBook/upload/${style.styleImg }" alt="styleImg" class="styleImg" /></a>
<%-- 									<c:if test="${authInfo.userId != null }"> --%>
<%-- 										<c:choose> --%>
<%-- 											<c:when test="${isHeart.get(i.index).styleCode == style.styleCode && isHeart.get(i.index).heart == 1 }"> --%>
<%-- 												<a class="heart" style="color:red;" onclick="unlock('${style.styleCode}','${list.desnId }','${authInfo.userId }','${isHeart.get(i.index).heart }');"> --%>
<!-- 												<i class="fas fa-heart fa-2x" ></i></a> -->
<%-- 											</c:when> --%>
<%-- 											<c:otherwise> --%>
<%-- 												<a class="heart" style="color:#fff;" onclick="unlock('${style.styleCode}','${list.desnId }','${authInfo.userId }','${isHeart.get(i.index).heart }');"> --%>
<!-- 												<i class="fas fa-heart fa-2x" ></i></a> -->
<%-- 											</c:otherwise> --%>
<%-- 										</c:choose> --%>
<%-- 									</c:if> --%>
<%-- 									<c:if test="${authInfo.userId == null }"> --%>
<!-- 										<a class="heart" style="color: #fff;" onclick="login();" ><i class="fas fa-heart fa-2x" ></i></a> -->
<%-- 									</c:if> --%>
<!-- 									<div id="reload-area"> -->
<!-- 									</div> -->
							</li>
						</c:if>
					</c:forEach>
<!-- 					<li><img src="#" alt="styleImg" class="styleImg" /> <img -->
<!-- 						src="#" alt="heart" class="heart" -->
<!-- 					/></li> -->
				</ul>
			</div>
		</div>
		<!-- Content 끝 -->

		<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
		<script type="text/javascript">
			function login(){
				alert('로그인 후 이용가능합니다.');
			}
			function unlock(styleCode, desnId, memId, heart, btn){
				var data = {
						"styleCode" : styleCode
						,"desnId" : desnId
						,"memId" : memId
						,"heart" : heart
				};
				console.log(data);
				unlock = {
					type : "post"
					,url : "unlock"
					,data : data
					,dataType : "text"
					,success : function(){
// 						location.href="/salon/desn/" + desnId;
					}
					,errors : function(){alert('에러');}
				};
				$.ajax(unlock);
// 				$('#reload-area').load('unlock', data);
			}
		</script>
</body>
</html>