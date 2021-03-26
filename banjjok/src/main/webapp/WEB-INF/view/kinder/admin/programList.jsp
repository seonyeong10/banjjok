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
				<table class="programList" style="width:800px;">
				<colgroup>
					<col width="20%"/>
					<col width="30%"/>
					<col width="50%"/>
				</colgroup>
					<tr>
						<th colspan="3"><h2>PROGRAM LIST</h2></th>
					</tr>
					<tr>
						<th>No.</th>
						<th>PROGRAM CODE</th>
						<th>PROGRAM NAME</th>
					</tr>
					
					<c:forEach items="${lists }" var="dto" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td><a href="programDetail?pCode=${dto.pCode }">${dto.pCode }</a></td>
							<td><a href="programDetail?pCode=${dto.pCode }">${dto.pName }</a></td>
						</tr>
					</c:forEach>
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