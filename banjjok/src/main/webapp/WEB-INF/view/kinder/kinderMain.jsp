<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KinderGartenMain</title>

<style>
.mainmenu {
	display: flex;
}

div.mm {
	flex: 1;
}
</style>

</head>
<body>
	<div class="wrapper">
	
		<%@ include file="../include/kinder_topmenu.jsp" %>

		<!-- menu -->
		<div class="mainmenu">
			<div class="mm">
				<a href="#about">About Kindergarten</a>
			</div>
			<div class="mm">
				<a href="#program">Our Program</a>
			</div>
			<div class="mm">
				<a href="#teacher">Introduction Teacher</a>
			</div>
			<div class="mm">
				<a href="#reservation">Reservation</a>
			</div>
		</div>

		<!-- content -->
		<div class="content">
			<div class="ct" id="about">
				<div class="about title">
					<h2 class="about title">About Kindergarten</h2>
				</div>
				<div class="about content">Our half forest kindergarten is the
					place where dogs live in groups for the first time away from their
					guardians. Through this, your pet can see, touch, feel, and
					experience many things. We are setting up a curriculum that takes
					into account the beneficial development and interest of dogs, and
					the education teachers are with us to do this. We will do our best
					for the kindergarten that the guardian can trust.</div>
			</div>
			<div class="ct" id="program">
				<div class="program title">
					<h2 class="program title">Our Program</h2>
				</div>
				<div class="program content">
					<h3 class="table">PROGRAM</h3>
					<table>
						<tr class="program list top">
							<th colspan="3">CLASSIFY</th>
							<th>PRICE</th>
						</tr>
						<tr>
							<th rowspan="4" class="kin name">KINDERGARTEN</th>
							<th rowspan="2" class="classify">ONE DAY</th>
							<th>BASIC
								<div>(AM 09 - PM 18)</div>
							</th>
							<td>200,000 WON</td>
						</tr>
						<tr>
							<th>ALL DAY
								<div>(AM 07 - PM 20)</div>
							</th>
							<td>400,000 WON</td>
						</tr>
						<tr>
							<th rowspan="2" class="classify">ONE MONTH</th>
							<th>BASIC
								<div>(AM 09 - PM 18)</div>
							</th>
							<td>6,000,000 WON</td>
						</tr>
						<tr class="program list mid">
							<th>ALL DAY
								<div>(AM 07 - PM 20)</div>
							</th>
							<td>12,000,000 WON</td>
						</tr>
						<tr>
							<th rowspan="2" colspan="2" class="test name">SOCIALIZATION
								TESTING</th>
							<th>FIRST TIME</th>
							<td>500,000 WON</td>
						</tr>
						<tr class="program list bottom">
							<th>RETRY</th>
							<td>600,000 WON</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="ct" id="teacher">
				<div class="teacher title">
					<h2 class="program title">Introduction Teacher</h2>
				</div>
				<div class="teacher content">
					<ul>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
			<div class="ct" id="reservation">
				<div class="program title">
					<h2 class="program title">Our Program</h2>
				</div>
				<div class="program content"></div>
			</div>
		</div>

		<!-- footer -->
		
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
		
	</div>
</body>
</html>