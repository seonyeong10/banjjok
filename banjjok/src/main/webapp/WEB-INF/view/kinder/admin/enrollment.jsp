<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
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
						<select class="selection" name="shopCode">
							<option value="1592-0001">Seoul</option>
							<option value="1592-0002">Deagu</option>
							<option value="1592-0003">Deajeon</option>
							<option value="1592-0004">Busan</option>
							<option value="1592-0005">Gwangju</option>
						</select>
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
						<div>
							${valid_tPwCon }
						</div>
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
						<input type="date" name="tJoin" />
						<form:errors path="tJoin" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">DUTY DAY</th>
					<td style="width:70%;">
						<select class="selection" name="tDuty">
							<option value="Monday">Every Monday</option>
							<option value="Tuesday">Every Tuesday</option>
							<option value="Wednesday">Every Wednesday</option>
							<option value="Thursday">Every Thursday</option>
							<option value="Friday">Every Friday</option>
							<option value="Saturday">Every Saturday</option>
							<option value="Sunday">Every Sunday</option>
						</select>
						<form:errors path="tDuty" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">TEACHER PHOTO</th>
					<td style="width:70%;">
						<input type="file" name="tPhoto" multiple="multiple" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">RESPONSIBILITY CLASS</th>
					<td style="width:70%;">
						<select class="selection" name="cCode">
							<optgroup label="SOCIALIZATION TESTING">
							<option value="0100-0001">0100-0001</option>
							<option value="0100-0002">0100-0002</option>
							<option value="0200-0001">0200-0001</option>
							<option value="0200-0002">0200-0002</option>
							<option value="0300-0001">0300-0001</option>
							<option value="0300-0002">0300-0002</option>
							</optgroup>
							<optgroup label="KINDERGARTEN SMALL-SIZED DOGS">
							<option value="1100-1001">1100-1001</option>
							<option value="1100-1002">1100-1002</option>
							<option value="1100-1003">1100-1003</option>
							<option value="1100-1004">1100-1004</option>
							<option value="1200-1001">1200-1001</option>
							<option value="1200-1002">1200-1002</option>
							<option value="1200-1003">1200-1003</option>
							<option value="1200-1004">1200-1004</option>
							<option value="1300-1001">1300-1001</option>
							<option value="1300-1002">1300-1002</option>
							<option value="1300-1003">1300-1003</option>
							<option value="1300-1004">1300-1004</option>
							</optgroup>
							<optgroup label="KINDERGARTEN MEDIUM-SIZED DOGS">
							<option value="2100-2001">2100-2001</option>
							<option value="2100-2002">2100-2002</option>
							<option value="2100-2003">2100-2003</option>
							<option value="2100-2004">2100-2004</option>
							<option value="2200-2001">2200-2001</option>
							<option value="2200-2002">2200-2002</option>
							<option value="2200-2003">2200-2003</option>
							<option value="2200-2004">2200-2004</option>
							<option value="2300-2001">2300-2001</option>
							<option value="2300-2002">2300-2002</option>
							<option value="2300-2003">2300-2003</option>
							<option value="2300-2004">2300-2004</option>
							</optgroup>
							<optgroup label="KINDERGARTEN LARGE-SIZED DOGS">
							<option value="3100-3001">3100-3001</option>
							<option value="3100-3002">3100-3002</option>
							<option value="3100-3003">3100-3003</option>
							<option value="3100-3004">3100-3004</option>
							<option value="3200-3001">3200-3001</option>
							<option value="3200-3002">3200-3002</option>
							<option value="3200-3003">3200-3003</option>
							<option value="3200-3004">3200-3004</option>
							<option value="3300-3001">3300-3001</option>
							<option value="3300-3002">3300-3002</option>
							<option value="3300-3003">3300-3003</option>
							<option value="3300-3004">3300-3004</option>
							</optgroup>
						</select>
						<form:errors path="cCode" />
					</td>
				</tr>
				<tr>
					<th style="width:30%;">STATEMENT</th>
					<td style="width:70%;">
						<select class="selection" name="tState">
							<option value="0">RETIREE</option>
							<option value="1">INCUMBENT</option>
							<option value="2">MATERNITY LEAVE</option>
							<option value="3">PATERNITY LEAVE</option>
						</select>
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