<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유치원 메인</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/kgMain.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<%@ include file="../include/kgTop.jsp" %>
	    <div class="contentWrap">
    <!-- Content -->
    <div class="content">
      <!-- 이미지 배너 -->
      <div class="banner-wrap">
        <ul class="img-area">
          <li>
            <a href="#" class="on">
              <img src="<c:url value="/static/images/훈련소2.png"/>" alt="훈련소img" class="picture"/>
            </a>
          </li>
        </ul>
      </div>
      <!-- 이미지 배너 끝 -->
      <!-- 프로그램  -->
      <div class="section-wrap">
        <div class="section-title">Our Programs</div>
        <ul class="program-area">
        	<c:forEach items="${programs }" var="pg">
	           <li>
	            <div class="img-area">
	              <a href="#">
	              	<c:set value="${fn:split(pg.pImg,'`') }" var="img"/>
	                <img src="/kinder/upload/${img[1] }" alt="program"/>
	              </a>
	            </div>
	            <div class="info-area">
	              <span>${pg.pName }</span>
	              <span>
					<c:if test="${pg.pTarget eq 'small' }">소형견</c:if>
					<c:if test="${pg.pTarget eq 'middle' }">중형견</c:if>
					<c:if test="${pg.pTarget eq 'big' }">대형견</c:if>
				  </span>
	              <span class="price"><fmt:formatNumber value="${pg.pPrice }" pattern="#,000"/></span>
	            </div>
	          </li>
        	</c:forEach>
<!--           <li> -->
<!--             <div class="img-area"> -->
<!--               <a href="#"> -->
<!--                 <img src="#" alt="program"/> -->
<!--               </a> -->
<!--             </div> -->
<!--             <div class="info-area"> -->
<!--               <span>1일 체험권</span> -->
<!--               <span>소형견</span> -->
<!--               <span class="price">50,000</span> -->
<!--             </div> -->
<!--           </li> -->
<!--           <li> -->
<!--             <div class="img-area"> -->
<!--               <a href="#"> -->
<!--                 <img src="#" alt="program"/> -->
<!--               </a> -->
<!--             </div> -->
<!--             <div class="info-area"> -->
<!--               <span>종일 체험권</span> -->
<!--               <span>소형견</span> -->
<!--               <span class="small sale"> -->
<!--                 <span class="title">반쪽 할인가</span> -->
<!--                 <del>50,000</del> -->
<!--               </span> -->
<!--               <span class="price sale"> -->
<!--                 <span class="title">10%</span> -->
<!--                 50,000 -->
<!--               </span> -->
<!--             </div> -->
<!--           </li> -->
        </ul>
        <div class="more">
          <a href="/banjjok/kinder/program">+더보기</a>
        </div>
      </div>
      <!-- 프로그램 끝 -->
      <!-- 선생님 -->
      <div class="section-wrap">
        <div class="section-title">Our Teachers</div>
        <ul class="program-area">
        	
       		<c:forEach items="${tchs }" var="tch" begin="0" end="6">
	       	  <li>
	            <div class="img-area">
	            <c:set value="${fn:split(tch.tPhoto,'`') }" var="img"/>
	              <a href="#">
	                <img src="/kinder/upload/${img[1] }" alt="program"/>
	              </a>
	            </div>
	            <div class="info-area">
	              <span>
	              	<c:if test="${tch.tState eq '01' }">사회화테스트</c:if>
	              	<c:if test="${tch.tState eq '02' }">단일반</c:if>
	              	<c:if test="${tch.tState eq '03' }">종일반</c:if>
				  </span>
	              <span>소형견</span>
	              <span class="price">${tch.tName }</span>
	            </div>
	          </li>
       		</c:forEach>
       		
<!--            <li> -->
<!--             <div class="img-area"> -->
<!--               <a href="#"> -->
<!--                 <img src="#" alt="program"/> -->
<!--               </a> -->
<!--             </div> -->
<!--             <div class="info-area"> -->
<!--               <span>사회화 테스트</span> -->
<!--               <span>소형견</span> -->
<!--               <span class="price">권미나</span> -->
<!--             </div> -->
<!--           </li> -->
          
<!--           <li> -->
<!--             <div class="img-area"> -->
<!--               <a href="#"> -->
<!--                 <img src="#" alt="program"/> -->
<!--               </a> -->
<!--             </div> -->
<!--             <div class="info-area"> -->
<!--               <span>1일반</span> -->
<!--               <span>소형견</span> -->
<!--               <span class="price">이나연</span> -->
<!--             </div> -->
<!--           </li> -->
<!--           <li> -->
<!--             <div class="img-area"> -->
<!--               <a href="#"> -->
<!--                 <img src="#" alt="program"/> -->
<!--               </a> -->
<!--             </div> -->
<!--             <div class="info-area"> -->
<!--               <span>종일반</span> -->
<!--               <span>소형견</span> -->
<!--               <span class="price">정승연</span> -->
<!--             </div> -->
<!--           </li> -->
        </ul>
        <div class="more">
          <a href="/kinder/teacher">+더보기</a>
        </div>
      </div>
      <!-- 선생님 끝 -->
    </div>
    <!-- Content 끝 -->
    </div>
    <!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- foot 끝 -->
</body>
</html>