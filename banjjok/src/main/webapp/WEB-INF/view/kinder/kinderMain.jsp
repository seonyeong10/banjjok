<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kinderGartenMain</title>

<style>
.mainmenu {
	display : flex;
}
div.mm{
	flex : 1;
}
</style>

</head>
<body>
<div class="wrapper">

<!-- menu -->
<div class="mainmenu">
	<div class="mm">
		<a href="about">About Kindergarten</a>
	</div>
	<div class="mm">
		<a href="program">Our Program</a>
	</div>
	<div class="mm">
		<a href="teacher">Introduction Teacher</a>
	</div>
	<div class="mm">
		<a href="reservation">Reservation</a>
	</div>
</div>

<!-- content -->
<div class="content">
	<div class="ct" id="about">
		<div class="about title"><h6 class="about title">About Kindergarten</h6></div>
		<div class="about content">
			Our half forest kindergarten is the place where dogs live in groups for the first time away from their guardians. 
			Through this, your pet can see, touch, feel, and experience many things. 
			We are setting up a curriculum that takes into account the beneficial development and interest of dogs, 
			and the education teachers are with us to do this. 
			We will do our best for the kindergarten that the guardian can trust.
		</div>
	</div>
	<div class="ct" id="program">
		<div class="program title"><h6 class="program title">Our Program</h6></div>
		<div></div>
	</div>
	<div class="ct" id="teacher"></div>
	<div class="ct" id="reservation"></div>
</div>

<!-- footer -->
<div></div>

</div>
</body>
</html>