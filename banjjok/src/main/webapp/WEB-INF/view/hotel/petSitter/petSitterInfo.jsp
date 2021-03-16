<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌보미 상세정보(petSitterInfo.jsp)</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<!-- <link href="../static/css/memberForm.css" rel="stylesheet"	type="text/css" /> -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div id="header">
		<%@ include file="../../include/hotelTop.jsp" %>
	</div>
	<!-- content -->
		
<div class="w3-light-grey">
	<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
<!--   <div class="w3-row-padding"> -->
  
    <!-- Left Column -->
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

<!--           <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p> -->
<!--           <p>Adobe Photoshop</p> -->
<!--           <div class="w3-light-grey w3-round-xlarge w3-small"> -->
<!--             <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div> -->
<!--           </div> -->
<!--           <p>Photography</p> -->
<!--           <div class="w3-light-grey w3-round-xlarge w3-small"> -->
<!--             <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%"> -->
<!--               <div class="w3-center w3-text-white">80%</div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <p>Illustrator</p> -->
<!--           <div class="w3-light-grey w3-round-xlarge w3-small"> -->
<!--             <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div> -->
<!--           </div> -->
<!--           <p>Media</p> -->
<!--           <div class="w3-light-grey w3-round-xlarge w3-small"> -->
<!--             <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div> -->
<!--           </div> -->
<!--           <br> -->

<!--           <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p> -->
<!--           <p>English</p> -->
<!--           <div class="w3-light-grey w3-round-xlarge"> -->
<!--             <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div> -->
<!--           </div> -->
<!--           <p>Spanish</p> -->
<!--           <div class="w3-light-grey w3-round-xlarge"> -->
<!--             <div class="w3-round-xlarge w3-teal" style="height:24px;width:55%"></div> -->
<!--           </div> -->
<!--           <p>German</p> -->
<!--           <div class="w3-light-grey w3-round-xlarge"> -->
<!--             <div class="w3-round-xlarge w3-teal" style="height:24px;width:25%"></div> -->
<!--           </div> -->
<!--           <br> -->
<!--         </div> -->
<!--       </div><br> -->

    <!-- End Left Column -->
    </div>
    </div>
    
  <!-- End Grid -->
<!--   </div> -->
  
  <!-- End Page Container -->
</div>
</div>
	<!-- content 끝-->
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- foot 끝 -->
</body>
</html>
