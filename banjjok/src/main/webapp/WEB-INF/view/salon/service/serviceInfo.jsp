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
          <span><fmt:formatNumber value="${dto.serviceFee }" pattern="#,###"/> </span>
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
              		<c:when test="${dto.serviceTarget == 'middle' }">중형견</c:when>
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
      <!-- 예약 -->
      <div class="reserve-button-area">
        <a href="#" class="reserve-button">예약하기</a>
        <a href="<c:url value='/salon/menu/menuModify?serviceCode=${dto.serviceCode }'/>" class="modify-button">수정하기</a>
        <a href="" class="modify-button" onclick="menuDel();">삭제하기</a>
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