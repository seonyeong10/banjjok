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
			<table class="programList">
					<tr>
						<th colspan="2"><h2>PROGRAM DETAIL</h2></th>
					</tr>
					<tr>
						<th>PROGRAM CODE</th>
						<td>${lists.pCode }</td>
					</tr>
					<tr>
						<th>PROGRAM NAME</th>
						<td>
							${lists.pName }
						</td>
					</tr>
					<tr>
						<th>PROGRAM PRICE</th>
						<td>\ <fmt:formatNumber value="${lists.pPrice }" pattern="#,###" /></td>
					</tr>
					<tr>
						<th>PROGRAM TIME</th>
						<td>${lists.pTime }</td>
					</tr>
					<tr>
						<th>PROGRAM CONTENT</th>
						<td>${lists.pContent }</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="button" value="MODIFY" onclick="javascript:location.href='programModify?pCode=${lists.pCode }'"/>
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