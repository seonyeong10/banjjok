<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타일 상세</title>
<link href="<c:url value='/static/css/baseCSS.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/styleInfo.css' />" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
	<%@ include file="../../../include/top.jsp"%>
	<div class="contentWrap">
		<!-- Content -->
		<div class="content">
			<div class="titleWrap">
				<div class="title">
					<h2>Style Book</h2>
				</div>
				<div class="fieldDesc">
<!-- 					<p>서비스 메뉴 등록</p> -->
				</div>
			</div>
			<div class="styleInfoWrap">
				<div class="imgArea">
					<img src="<c:url value='/salon/designer/styleBook/upload/${style.styleImg }' />" alt="styleImg" />
				</div>
				<div class="heartArea">
<!-- 					<img src="#" alt="heart" /> -->
					<span><i class="fas fa-heart" style="color: red;"></i></span><span>1</span>
				</div>
				<div class="descArea">
					<span class="name">${style.styleName }</span><br /> <br /> <span>${style.styleDesc }</span>
				</div>
				<div class="recommandArea">
					<span>
						<c:if test="${style.styleLength eq 'short' }">단모종 추천</c:if>
						<c:if test="${style.styleLength eq 'long' }">장모종 추천</c:if>
						<c:if test="${style.styleLength eq 'none' }">모발 무관</c:if>
					</span>, 
					<span>
						<c:if test="${style.styleCurly eq 'curly' }">곱슬 추천</c:if>
						<c:if test="${style.styleCurly eq 'halfCurly' }">반곱슬 추천</c:if>
						<c:if test="${style.styleCurly eq 'straight' }">직모 추천</c:if>
						<c:if test="${style.styleCurly eq 'none' }">모질 무관</c:if>
					</span>
				</div>
			</div>
			<div class="designerWrap">
				<table>
					<tr>
						<td class="imgArea">
							<c:set value="${fn:split(style.desnImg,'`') }" var="i" />
							<img src="<c:url value='/salon/designer/upload/${i[1] }'/>" alt="designer" />
						</td>
						<td class="descArea">
							<span class="name">
								<c:if test="${style.desnUse eq '1' }">원장</c:if>
								<c:if test="${style.desnUse eq '2' }">수석 디자이너</c:if>
								<c:if test="${style.desnUse eq '3' }">디자이너</c:if>
								${style.desnName }
							</span><br /> 
							<span>salon 본점</span>
						</td>
					</tr>
				</table>
			</div>
			<div class="styleListWrap">
				<h2><c:if test="${style.desnUse eq '1' }">원장</c:if>
								<c:if test="${style.desnUse eq '2' }">수석 디자이너</c:if>
								<c:if test="${style.desnUse eq '3' }">디자이너</c:if>
								${style.desnName }의 다른 스타일</h2>
				<br />
				<ul class="styleListArea">
					<c:forEach items="${list }" var="list">
					<li><a href="<c:url value='/salon/style/desnStyle?styleCode=${list.styleCode }'/>">
							<img src="<c:url value='/salon/designer/styleBook/upload/${list.styleImg }' />" alt="styleImg" class="styleImg" />
						</a></li>
					</c:forEach>
<!-- 					<li><img src="#" alt="styleImg" class="styleImg" /></li> -->
<!-- 					<li><img src="#" alt="styleImg" class="styleImg" /></li> -->
				</ul>
			</div>
			<div class="btn-area">
				<a href="<c:url value='/salon/style/modifyStyle/${style.styleCode }'/>">수정하기</a>
				<a href="#">삭제하기</a>
			</div>
		</div>
		<!-- Content 끝 -->
	</div>
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script src="js/script.js"></script>
	<!-- foot 끝 -->
</body>
</html>