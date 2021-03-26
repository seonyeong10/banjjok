<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KinderGartenMain</title>
<link href="../static/css/kinderMaintop.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="wrapper">

		<%@ include file="../include/kinder_topmenu.jsp"%>

		<!-- menu -->
		<div class="mainmenu">
			<div class="mm">
				<a href="#about">ABOUT KINDERGARDEN</a>
			</div>
			<div class="mm">
				<a href="#program">OUR PROGRAM</a>
			</div>
			<div class="mm">
				<a href="#teacher">INTRODUCTION TEACHER</a>
			</div>
			<div class="mm">
				<a href="#reservation">RESERVATION</a>
			</div>
		</div>

		<!-- content -->
		<div class="content">
			<div class="ct" id="about">
				<div class="title">
					<h2 class="title">About Kindergarten</h2>
				</div>
				<hr>
				<div class="aboutphoto1">
					<img alt="mainphoto" src="../static/images/train.png"
						style="width: 1000px; height: 600px" class="back">
				</div>
				<div class="aboutphoto2">
					<img alt="paw" src="../static/images/paw.png"
						style="width: 200px; height: 200px;" class="front" />
				</div>

				<div class="about content">
					<span class="about">Our half forest kindergarten is the
						place where dogs live in groups for the first time away from their
						guardians. Through this, your pet can see, touch, feel, and
						experience many things. We are setting up a curriculum that takes
						into account the beneficial development and interest of dogs, and
						the education teachers are with us to do this. We will do our best
						for the kindergarten that the guardian can trust.</span>
				</div>
			</div>
			<div class="ct" id="program">
				<div class="program title">
					<h2 class="title">Our Program</h2>
				</div>
				<hr class="programline">
				<div class="program">
<!-- 					<div class="division"> -->
<!-- 						<div class="classify">CLASSIFY</div> -->
<!-- 						<div class="price">PRICE</div> -->
<!-- 					</div> -->
<!-- 					<div class="div"> -->
<!-- 						<div class="kin1"></div> -->
<!-- 						<div class="socialization">SOCIALIZATION TESTING</div> -->
<!-- 					</div> -->

										<table class="mainProgram">
											<tr class="program list top">
												<th colspan="3" style="width:80%;">CLASSIFY</th>
												<th style="width:20%;">PRICE</th>
											</tr>
											<tr>
												<th rowspan="4" class="kinder name">KINDERGARTEN</th>
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
												<th rowspan="2" colspan="2" class="test name">
												SOCIALIZATIONTESTING</th>
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

				</div>
			</div>
			<div class="ct" id="teacher">
				<div class="teacher title">
					<h2 class="title">Introduction Teacher</h2>
				</div>
				<hr>
				<div class="teacher content">
					<ul>
						<li class="t1"></li>
						<li class="t2"></li>
						<li class="t3"></li>
					</ul>
				</div>
			</div>
			<!-- footer -->

			<footer> SoulMate's Forest 02.125.7979 Copyright & copy All
				Rights reserved. </footer>

		</div>
	</div>
</body>
</html>