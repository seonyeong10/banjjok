<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>serviceInfo</title>
<link href="../../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../../static/css/menuDetail.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
<%@ include file="../../include/top.jsp"%>
    <div class="content">
      <div class="menu-title-area">
      <!-- 상품명 -->
        <div class="menu-title">
          <span>${dto.serviceName }</span>
<!--           <span>시세이도클리닉by꾸밈</span> -->
        </div>
      <!-- 가격 -->
        <div class="menu-price">
          <span><fmt:formatNumber value="${dto.serviceFee }" pattern="#,###"/>원</span>
        </div>
        <div class="store-name-area">
          <span>(주)반쪽의 숲 살롱</span>
        </div>
      </div>
      <div class="select-area">
        <ul>
          <li>정보</li>
          <li>리뷰 6</li>
        </ul>
      </div>
      <!-- 정보 -->
      <div class="information-area">
        <ul>
          <li class="menu-time"><i class="far fa-clock"></i>&nbsp;&nbsp;${dto.serviceTime }분 소요</li>
          <li class="menu-info">
            <ul>
              <li><i class="far fa-exclamation-circle"></i>&nbsp;&nbsp;부가정보</li>
              <li class="option-area"><span>시술대상</span>
              	<c:choose>
              		<c:when test="${dto.serviceTarget == 'small' }">소형견</c:when>
              		<c:when test="${dto.serviceTarget == 'middium' }">중형견</c:when>
              		<c:when test="${dto.serviceTarget == 'big' }">대형견</c:when>
              	</c:choose>
              </li>
              <li class="option-area"><span>기준무게</span>4kg</li>
              <li class="option-area"><span>추가금액</span><fmt:formatNumber value="${dto.serviceOpt }" pattern="#,###"/></li>
            </ul>
          </li>
          <li class="menu-detail">
            ${dto.serviceDesc }
          </li>
        </ul>
      </div>
      <!-- 리뷰 -->
      <div class="review-area">
<!--         <div class="photo-review-area"> -->
<!--           <h2 class="section">포토리뷰</h2> -->
<!--           <ul class="photo-area"> -->
<!--             <li> -->
<!--               <a class="photo"> -->
<!--                 <img src="#" alt="pic" /> -->
<!--               </a> -->
<!--             </li> -->
<!--           </ul> -->
<!--         </div> -->
        <div class="member-review-area">
          <h2 class="section">예약고객 리뷰 ${count }</h2>
          <ul class="member-review">
          	<c:forEach items="${list }" var="list">
          		<li>
	              <div class="title-area">
	                <span class="title">[소형견] ${list.serviceName }</span>
	                <span class="designer">
	                	 ${list.desnName }
	                	 <c:if test="${list.desnUse eq '1' }">원장</c:if>
	                	 <c:if test="${list.desnUse eq '2' }">수석디자이너</c:if>
	                	 <c:if test="${list.desnUse eq '3' }">디자이너</c:if>
	                </span>
	              </div>
	              <div class="star">
	              	<c:forEach begin="1" end="${list.star }">
	              		<i class="fas fa-star" style="color:#3c405b;"></i>
	              	</c:forEach>
	              	<c:forEach begin="1" end="${5-list.star }">
	              		<i class="far fa-star" style="color:#3c405b;"></i>
	              	</c:forEach>
	              </div>
	              <div class="review-content">
	              	<c:set var="cn" value="\n" />
	              	<c:set var="br" value="<br/>" />
	              	${fn:replace(list.review, cn, br) }
	              </div>
	              <div class="writer">
	                <span>${list.memName }</span>
	                <span><fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd"/></span>
<!-- 	                <span>재예약</span> -->
	              </div>
	            </li>
          	</c:forEach>
<!--             <li> -->
<!--               <div class="title-area"> -->
<!--                 <span class="title">[컬러패키지] 디자인탈색1회</span> -->
<!--                 <span class="designer">수아 디자이너</span> -->
<!--               </div> -->
<!--               <div class="star">별점</div> -->
<!--               <div class="review-content"> -->
<!--                 처음으로 탈색한 후에 염색을 했는데 제가 원하는 자연스러운 색이 나왔어요. 상한 머리카락은 티가 잘 안나는데 뿌리쪽으로 가까울 수록 예쁘게 색이 나오더라구요. -->
<!--               </div> -->
<!--               <div class="writer"> -->
<!--                 <span>고*명</span><span>1달 전</span><span>재예약</span> -->
<!--               </div> -->
<!--               디자이너 리댓 -->
<!--               <div class="designer-review-area"> -->
<!--                 <div class="title-area"> -->
<!--                   <span class="designer-img"><img src="#" alt="#" /></span> -->
<!--                   <span>Stylist 수아</span> -->
<!--                 </div> -->
<!--                 <div class="review-content"> -->
<!--                   고객님 소중한 리뷰 감사합니다! -->
<!--                 </div> -->
<!--                 <div class="writer"> -->
<!--                   <span>1달 전</span> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </li> -->
          </ul>
        </div>
      </div>
      <div>
      </div>
      <!-- 예약 -->
      <div class="reserve-button-area">
      	<c:if test="${authInfo.userId != null }">
        	<a href="<c:url value='/salon/menu/reserve?serviceCode=${dto.serviceCode }'/>" class="reserve-button">예약하기</a>
        </c:if>
        <c:if test="${authInfo.grade eq '1' }">
	        <a href="<c:url value='/salon/menu/menuModify?serviceCode=${dto.serviceCode }'/>" class="modify-button">수정하기</a>
	        <a href="" class="modify-button" onclick="menuDel();">삭제하기</a>
        </c:if>
      </div>
    </div>
    <!-- foot -->
    <footer>
      SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved.
    </footer>
    <script type="text/javascript">
    	function menuDel(){
    		if(confirm('서비스를 삭제하시겠습니까?')) {
    			location.href = "<c:url value='/salon/menu/menuDelete?serviceCode=${dto.serviceCode }'/>";
    		}
    	}
    </script>
</body>
</html>