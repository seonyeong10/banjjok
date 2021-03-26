<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Program List</title>
<link href="../static/css/kinderMaintop.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="wrapper">
		<%@ include file="../../include/kinder_topmenu.jsp"%>
		<div class="content">
			<div>
				<table class="programList">
					<tr>
						<th colspan="3"><h2>PROGRAM LIST</h2></th>
					</tr>
					<tr>
						<th>No.</th>
						<th>PROGRAM CODE</th>
						<th>PROGRAM NAME</th>
					</tr>
					
<%-- 					<c:forEach items="" var=""> --%>
<!-- 						<tr> -->
<!-- 							<td></td> -->
<!-- 							<td></td> -->
<!-- 							<td></td> -->
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
					<tr>
						<td colspan="3">
							<input type="button" value="ENROLL" onclick="javascript:location.href='programEnroll'" />
							<input type="button" value="BACK" onclick="javascript:location.href='programList'" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- footer -->

		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All
			Rights reserved. </footer>
	</div>


</body>
</html>