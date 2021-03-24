<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 리스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="/static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="/static/css/memberForm.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	img{ width:200px; height:200px; }
</style>

</head>
<body>
	
<!-- Navigation Bar -->
	
	<%@include file="../../include/hotelTop.jsp" %>


<!-- Page content -->
<div class="w3-content" style="max-width:100%;">

  <div class="w3-container w3-margin-top" id="rooms">
    <h3>Rooms</h3>
    <p>Make yourself at home is our slogan. We offer the best beds in the industry. Sleep well and rest well.</p>
  </div>
  
  <div class="w3-row-padding">
    <div class="w3-col m3">
      <label><i class="fa fa-calendar-o"></i> Check In</label>
      <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY">
    </div>
    <div class="w3-col m3">
      <label><i class="fa fa-calendar-o"></i> Check Out</label>
      <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-male"></i> Guardian/Companion</label>
      <input class="w3-input w3-border" type="number" placeholder="0">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-child"></i> pet</label>
      <input class="w3-input w3-border" type="number" placeholder="1">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-search"></i> Search</label>
      <button class="w3-button w3-block w3-black">Search</button>
    </div>
  </div>

  <div class="w3-row-padding w3-padding-16">
   		<div class="w3-third w3-margin-bottom">
    		<c:forEach items="${lists }" var="room" >
				<c:forTokens items="${room.roomImg }" delims="`" var="img" varStatus="status" end="0">
			<a href="roomDetail/${room.roomName }">	
					<img src="/hotel/room/upload/${img }"/>
				</c:forTokens>
			
		      <div class="w3-container w3-white">
		        <h3>${room.roomName	 }
		        	<c:if test="${room.roomName == 'D'}"> DELUXE ROOM </c:if>
					<c:if test="${room.roomName == 'DP'}"> DELUXE PREMIUM ROOM </c:if>
					<c:if test="${room.roomName == 'V'}"> VIP ROOM </c:if>
					<c:if test="${room.roomName == 'VV'}"> VVIP ROOM </c:if>
					<input type="hidden" name="roomName" value="${room.roomName }" />
		        </h3>
		   </a>
		        <h6 class="w3-opacity"><fmt:formatNumber value="${room.roomPrice }" pattern="#,###" />원</h6>
<!-- 		        <p>Single bed</p> -->
<!-- 		        <p>15m<sup>2</sup></p> -->
		        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i></p>
		        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
       		</c:forEach>
      </div>
    </div>
   
<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <img src="/w3images/room_double.jpg" alt="Norway" style="width:100%"> -->
<!--       <div class="w3-container w3-white"> -->
<!--         <h3>Double Room</h3> -->
<!--         <h6 class="w3-opacity">From $149</h6> -->
<!--         <p>Queen-size bed</p> -->
<!--         <p>25m<sup>2</sup></p> -->
<!--         <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i></p> -->
<!--         <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="w3-third w3-margin-bottom"> -->
<!--       <img src="/w3images/room_deluxe.jpg" alt="Norway" style="width:100%"> -->
<!--       <div class="w3-container w3-white"> -->
<!--         <h3>Deluxe Room</h3> -->
<!--         <h6 class="w3-opacity">From $199</h6> -->
<!--         <p>King-size bed</p> -->
<!--         <p>40m<sup>2</sup></p> -->
<!--         <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p> -->
<!--         <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button> -->
<!--       </div> -->
<!--     </div> -->
  
  </div>

  <div class="w3-row-padding" id="about">
    <div class="w3-col l4 12">
      <h3>About</h3>
      <h6>Our hotel is one of a kind. It is truely amazing. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</h6>
    <p>We accept: <i class="fa fa-credit-card w3-large"></i> <i class="fa fa-cc-mastercard w3-large"></i> <i class="fa fa-cc-amex w3-large"></i> <i class="fa fa-cc-cc-visa w3-large"></i><i class="fa fa-cc-paypal w3-large"></i></p>
    </div>
     
<!-- End page content -->
</div>


<hr />
	  <!-- 관리자 모드 -->
	  	<div class="button-wrap">
<!-- 			<input type="button" value="취소" onclick="cancle();" /> -->
			<input type="button" value="객실 등록" onclick="javascript:location.href='./roomRegist'";/>
		</div>
	  <hr /><br />
	 <!-- 관리자 모드 끝 -->
	 
	<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
	<!-- foot 끝 -->
</body>
</html>






<!-- Add Google Maps -->
<script>
function myMap() {
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->