<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petSitterList</title>
<link href="/static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="/static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="/static/css/sitterInfo.css" rel="stylesheet" type="text/css" />
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->

</head>
<body>
	<div id="header">
		<%@ include file="../../include/hotelTop.jsp" %>
	</div>
	
    <c:forEach items="${lists }" var="list" varStatus="cnt">
  <!-- The Grid -->
  <div class="w3-row-padding">
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <c:set value="${fn:split(list.sitterImg,'`') }" var="img" />
		  <img src="/hotel/petSitter/upload/${img[1] }" style="width:100%" alt="돌보미이미지" />
<!--           <img src="/w3images/avatar_hat.jpg" style="width:100%" alt="Avatar"> -->
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>${list.sitterName } </h2>
          </div>
        </div>
        <div class="w3-container">
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i></p>
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i> PET SITTER </p>

          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${list.sitterId }@banjjok.com</p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${list.sitterPh }</p>
          <hr>	
        </div>
      </div>
     </div>
    </div>
	</c:forEach>
	
	
	
	
	
	
	<div class="sitterArea">
		<div class="sitterList">
			<ul>
				<c:forEach items="${lists }" var="list" varStatus="cnt">
					<li>
						<c:set value="${fn:split(list.sitterImg,'`') }" var="img" />
						<a href="sitterInfo/sitterId=${list.sitterId}"><img src="/hotel/petSitter/upload/${img[1] }" width="250" height="300" alt="돌보미이미지" />
							<p> ${cnt.index + 1}번 돌보미 [ ${list.sitterName }  ]</p><!-- 추후에 글씨 가운데 -->
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	
	<a href="/hotel/registSitter">돌보미 등록</a>
	<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
	<!-- foot 끝 -->
</body>
</html>