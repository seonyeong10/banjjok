<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 리스트</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/salonMenuList.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
<%@ include file="../../include/top.jsp"%>
    <div class="content">
      <!-- 카테고리 : 커트, 펌, 염색, 클리닉, 스타일링 -->
      <div class="categori-area">
        <ul class="categori">
          <li><a href="#bath" class="bath" >목욕</a></li>
          <li><a href="#partCut" class="partCut">부분미용</a></li>
          <li><a href="#allCut" class="allCut">전체미용</a></li>
          <li><a href="#sport" class="sport">스포팅</a></li>
          <li><a href="#styling" class="style">스타일컷</a></li>
        </ul>
      </div>
      <!-- 커트 메뉴 -->
      <div class="menu-area" id="bath">
        <ul>
          <li class="categori-name">목욕</li>
          <c:forEach items="${list }" var="list" varStatus="i">
          	<c:if test="${list.serviceCateg == 'ba' }">
          	<li>
	            <a href="<c:url value='/service/menuInfo?serviceCode=${list.serviceCode }'/>">${list.serviceName }</a>
	            <span>${list.serviceFee }</span>
          	</li> 
          	</c:if>         
          </c:forEach>
<!--           <li> -->
<!--             <a href="#">[컷기획전]남자컷by꾸밈</a> -->
<!--             <span>20,000</span> -->
<!--           </li> -->
        </ul>
      </div>
      <!-- 펌 메뉴 -->
      <div class="menu-area" id="partCut">
        <ul>
          <li class="categori-name">부분미용</li>
          <c:forEach items="${list }" var="list" varStatus="i">
          	<c:if test="${list.serviceCateg == 'pa' }">
          	<li>
	            <a href="<c:url value='/service/menuInfo?serviceCode=${list.serviceCode }'/>">${list.serviceName }</a>
	            <span>${list.serviceFee }</span>
          	</li> 
          	</c:if>         
          </c:forEach>
        </ul>
      </div>
      <!-- 염색 메뉴 -->
      <div class="menu-area" id="sport">
        <ul>
          <li class="categori-name">전체미용</li>
          <c:forEach items="${list }" var="list" varStatus="i">
          	<c:if test="${list.serviceCateg == 'al' }">
          	<li>
	            <a href="<c:url value='/service/menuInfo?serviceCode=${list.serviceCode }'/>">${list.serviceName }</a>
	            <span>${list.serviceFee }</span>
          	</li> 
          	</c:if>         
          </c:forEach>
        </ul>
      </div>
      <!-- 클리닉 메뉴 -->
      <div class="menu-area" id="clinic">
        <ul>
          <li class="categori-name">스포팅</li>
          <c:forEach items="${list }" var="list" varStatus="i">
          	<c:if test="${list.serviceCateg == 'sp' }">
          	<li>
	            <a href="<c:url value='/service/menuInfo?serviceCode=${list.serviceCode }'/>">${list.serviceName }</a>
	            <span>${list.serviceFee }</span>
          	</li> 
          	</c:if>         
          </c:forEach>
        </ul>
      </div>
      <!-- 스타일링 메뉴 -->
      <div class="menu-area" id="styling">
        <ul>
          <li class="categori-name">스타일컷</li>
          <c:forEach items="${list }" var="list" varStatus="i">
          	<c:if test="${list.serviceCateg == 'st' }">
          	<li>
	            <a href="<c:url value='/service/menuInfo?serviceCode=${list.serviceCode }'/>">${list.serviceName }</a>
	            <span>${list.serviceFee }</span>
          	</li> 
          	</c:if>         
          </c:forEach>
        </ul>
      </div>
    </div>
    <!-- foot -->
    <footer>
      SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved.
    </footer>
</body>
</html>