<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Enrollment</title>
</head>
<body>
	<div class="wrapper">
		<div class="content">
			<form:form action="enrollmentOk" method="post" name="frm" 
						modelAttribute="teacherCommand" enctype="multipart/form-data">
			<table style="width:100px;" class="table">
				<caption>ENROLLMENT</caption>
				<tr>
					<th style="width:30%;">SHOP CODE</th>
					<td style="width:70%;">
						<form:input path="shopCode" autofocus="autofocus" id="shopCode"/>
						<form:errors path="shopCode" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">ID</th>
					<td style="width:70%;">
						<form:input path="tId" id="tId" />
						<form:errors path="tId" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">PASSWORD</th>
					<td style="width:70%;">
						<form:password path="tPw" id="tPw" />
						<form:errors path="tPw" /> 
					</td>
				</tr>
				<tr>
					<th style="width:30%;">PASSWORD CONFIRM</th>
					<td style="width:70%;">
						<form:password path="tPwCon" id="tPwCon" />
						<form:errors path="tPwCon"/>
					</td>
				</tr>
				<tr>
					<th style="width:30%;">NAME</th>
					<td style="width:70%;">
						<form:input path="tName" id="tName" />
						<form:errors path="tName" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">PHONE NUMBER</th>
					<td style="width:70%;">
						<form:input path="tPh" id="tPh" />
						<form:errors path="tPh" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">EMAIL ADDRESS</th>
					<td style="width:70%;">
						<form:input path="tEmail" id="tEmail" />
						<form:errors path="tEmail" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">ENTRADA</th>
					<td style="width:70%;">
						<form:input path="tJoin" id="tJoin" />
						<form:errors path="tJoin" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">PHOTO</th>
					<td style="width:70%;">
						<input type="file" name="tPhoto" multiple="multiple" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">RESPONSIBILITY CLASS</th>
					<td style="width:70%;">
						<form:input path="cCode" id="cCode" />
						<form:errors path="cCode" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">STATEMENT</th>
					<td style="width:70%;">
						<form:input path="tState" id="tState" />
						<form:errors path="tState" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="SUBMIT" />
						<input type="reset" value="RESET" />
						<input type="button" value="BACK" onclick="javascript:location.href='../enrollList'" />
					</td>
				</tr>
			</table>
			</form:form>
		</div>
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	</div>
</body>
</html>