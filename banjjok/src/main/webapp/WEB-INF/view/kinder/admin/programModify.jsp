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
		<form action="programModifyOk" method="post" name="frm">
			<input type="hidden" name="pCode" value="${lists.pCode }"> 
			<table class="programModify">
					<tr>
						<th colspan="2"><h2>PROGRAM MODIFICATION</h2></th>
					</tr>
					<tr>
						<th>PROGRAM CODE</th>
						<td>${lists.pCode }</td>
					</tr>
					<tr>
						<th>PROGRAM NAME</th>
						<td>
							<select class="selection" name="pName">
								<option value="${lists.pName }">Existing Input Type : ${lists.pName }</option>
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
						<td>
						\ <c:set var="price"><fmt:formatNumber value="${lists.pPrice }" pattern="#,###" /></c:set>
						<input type="text" name="pPrice" value="${price }"/>
						</td>
					</tr>
					<tr>
						<th>PROGRAM TIME</th>
						<td>${lists.pTime }</td>
					</tr>
					<tr>
						<th>PROGRAM CONTENT</th>
						<td>
							<textarea rows="10" cols="30" name="pContent" value="${lists.pContent }">${lists.pContent }</textarea>
						
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="SUBMIT" onclick="javascript:location.href='programDetail?pCode=${lists.pCode}'"/>
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