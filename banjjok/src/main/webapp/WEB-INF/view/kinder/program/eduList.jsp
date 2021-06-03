<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salonMain</title>
<link href="<c:url value="/static/css/baseCSS.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/css/footer.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/css/kinderProgramList.css"/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<%@ include file="../../include/kgTop.jsp"%>
	<!-- Content -->
	<div class="content">
		<!-- 제목 -->
		<div class="section-area">
			<ul>
				<li><a href="#">사회화 테스트</a></li>
				<li><a href="#">1일반</a></li>
				<li><a href="#">종일반</a></li>
			</ul>
		</div>
		<!-- 제목 끝 -->
		<!-- 사회화 테스트 -->
		<div class="program-area">
			<ul>
				<c:forEach items="${list }" var="list">
<%-- 					<li onclick="selectAddr('${authInfo.grade}','${list.pCode }');"> --%>
					<li>
						<div class="img-area">
							<a onclick="javascript:location.href='program/reserve/${list.pCode}'">
								<c:set value="${fn:split(list.pImg,'`') }" var="img" />
								<img src="/kinder/upload/${img[1] }" alt="program" />
							</a>
						</div>
						<div class="info-area">
							<span class="part">
								<span class="title">과목명</span>${list.pName }
							</span>
							<span class="part">
								<span class="title">대상</span>
								<c:if test="${list.pTarget eq 'small' }">소형견</c:if>
								<c:if test="${list.pTarget eq 'middium' }">중형견</c:if>
								<c:if test="${list.pTarget eq 'big' }">대형견</c:if>
							</span> 
							<span class="part">
								<span class="title">기간</span>
								${fn:substring(list.pStart,0,11) }~ ${fn:substring(list.pEnd,0,11) }
							</span> 
							<span class="part">
								<span class="title">담당자</span>
								<c:set value="${fn:split(list.tPhoto,'`') }" var="tPhoto"/>
								<img src="/kinder/upload/${tPhoto[1] }" alt="i" class="t-img" />${list.tName }
							</span> 
							<span class="part">
								<span class="title">금액</span>
								<fmt:formatNumber value="${list.pPrice }" pattern="#,###"/> 원
							</span> 
							<span class="part">
								<span class="title desc">설명</span>
								${list.pContent }
							</span>
						</div>
						<c:if test="${authInfo.grade eq 'teacher' && list.pTeacher eq authInfo.userId }">
							<div class="modify-area">
								<a href="/banjjok/kinder/program/modify/${list.pCode }">수정</a>
								<a onclick="delete('${list.pCode }', '${img[1] })">삭제</a>
							</div>
						</c:if>
					</li>
				</c:forEach>
<!-- 				<li> -->
<!-- 					<div class="img-area"> -->
<!-- 						<a href="#"> <img src="#" alt="program" /> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="info-area"> -->
<!-- 						<span class="part"><span class="title">과목명</span>사회화 테스트</span> <span -->
<!-- 							class="part"><span class="title">대상</span>소형견</span> <span -->
<!-- 							class="part"><span class="title">기간</span>1일</span> <span -->
<!-- 							class="part"><span class="title">담당자</span><img src="#" -->
<!-- 							alt="i" class="t-img" />권미나</span> <span class="part"><span -->
<!-- 							class="title">금액</span>50,000</span> <span class="part"><span -->
<!-- 							class="title desc">설명</span>교육목표가 설정되었다면 훈련사 선생님과 반려견의 교감의 시간을 -->
<!-- 							보내며, 보호자님들께 강아지 이론교육을 통하여 충분한 지식을 습들할 수 있도록 도와드립니다.</span> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<div class="img-area"> -->
<!-- 						<a href="#"> <img src="#" alt="program" /> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="info-area"> -->
<!-- 						<span class="part"><span class="title">과목명</span>사회화 테스트</span> <span -->
<!-- 							class="part"><span class="title">대상</span>중형견</span> <span -->
<!-- 							class="part"><span class="title">기간</span>1일</span> <span -->
<!-- 							class="part"><span class="title">담당자</span><img src="#" -->
<!-- 							alt="i" class="t-img" />권미나</span> <span class="part"><span -->
<!-- 							class="title">금액</span>50,000</span> <span class="part"><span -->
<!-- 							class="title desc">설명</span>반려견과 함께 학교에 방문하여 선생님과 깊은 상담을 통해 아이에게 -->
<!-- 							맞는 최적의 교육목표를 설정합니다.</span> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<div class="img-area"> -->
<!-- 						<a href="#"> <img src="#" alt="program" /> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="info-area"> -->
<!-- 						<span class="part"><span class="title">과목명</span>사회화 테스트</span> <span -->
<!-- 							class="part"><span class="title">대상</span>대형견</span> <span -->
<!-- 							class="part"><span class="title">기간</span>1일</span> <span -->
<!-- 							class="part"><span class="title">담당자</span><img src="#" -->
<!-- 							alt="i" class="t-img" />권미나</span> <span class="part"><span -->
<!-- 							class="title">금액</span>50,000</span> <span class="part"><span -->
<!-- 							class="title desc">설명</span>이론습득이 충분하게 되었다면 보호자님들께서 직접 아이들과 교육을 -->
<!-- 							진행하며 관계를 새롭게 만들어 나가도록 합니다.</span> -->
<!-- 					</div> -->
<!-- 				</li> -->
			</ul>
		</div>
		<c:if test="${authInfo.grade eq 'teacher' }">
			<div class="btn-area">
				<a href="/banjjok/kinder/program/regist">프로그램 등록</a>
			</div>
		</c:if>
		<!-- 프로그램 등록 버튼 끝 -->
	</div>
	<!-- Content 끝 -->

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- foot 끝 -->
	<script type="text/javascript">
		function selectAddr(grade, pCode) {
			if(grade == 'teacher') {
				location.href = '/banjjok/kinder/program/modify/' + pCode;
			} else {
				location.href = '/banjjok/kinder/program/reserve/' + pCode;
// 			}
		}
		
		function delete(pCode, file){
			location.href = '/banjjok/kinder/program/delete?pCode=' + pCode + '&file=' + file;
		}
	</script>
</body>
</html>