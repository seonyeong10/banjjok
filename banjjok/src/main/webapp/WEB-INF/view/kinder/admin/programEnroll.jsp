<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../static/css/kinderMaintop.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="wrapper">
		<%@ include file="../../include/kinder_topmenu.jsp"%>
		<div class="content">
			<div>
			<form action="programEnrollOk" method="post" name="frm">
				<table class="programList">
					<tr>
						<th colspan="2"><h2>PROGRAM EROLLMENT</h2></th>
					</tr>
					<tr>
						<th>PROGRAM CODE</th>
						<td>
							<select class="selection" name="pCode">
								<option value="none">This Program Code cannot be duplicated.</option>
								<option value="0000-0001">0000-0001</option>
								<option value="0000-0002">0000-0002</option>
								<option value="0000-0003">0000-0003</option>
								<option value="0000-0004">0000-0004</option>
								<option value="0000-0005">0000-0005</option>
								<option value="0000-0006">0000-0006</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>PROGRAM NAME</th>
						<td>
							<select class="selection" name="pName">
								<option value="KINDERGARTEN ONE DAY - BASIC">KINDERGARTEN ONE DAY - BASIC</option>
								<option value="KINDERGARTEN ONE DAY - ALL DAY">KINDERGARTEN ONE DAY - ALL DAY</option>
								<option value="KINDERGARTEN ONE MONTH - BASIC">KINDERGARTEN ONE MONTH - BASIC</option>
								<option value="KINDERGARTEN ONE MONTH - ALL DAY">KINDERGARTEN ONE MONTH - ALL DAY</option>
								<option value="SOCIALIZATION TESTING - FIRST TIME">SOCIALIZATION TESTING - FIRST TIME</option>
								<option value="SOCIALIZATION TESTING - RETRY">SOCIALIZATION TESTING - RETRY</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>PROGRAM PRICE</th>
						<td><input type="text" name="pPrice" /></td>
					</tr>
					<tr>
						<th>PROGRAM TIME</th>
						<td><input type="text" name="pTime" placeholder="AM 00:00 - PM 00:00"/></td>
					</tr>
					<tr>
						<th>PROGRAM CONTENT</th>
						<td><textarea rows="10" cols="30" name="pContent"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="CONFIRM" />
							<input type="button" value="BACK" onclick="javascript:location.href='programList'" />
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
		<!-- footer -->

		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All
			Rights reserved. </footer>
	</div>
</body>
</html>