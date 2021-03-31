<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation Form</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../../include/kinder_topmenu.jsp"%>
		<div class="content">
			<form action="reservationOk" method="post" name="frm">
				<input type="hidden" name="pCode" value="${program.pCode }" />
				<table>
					<colgroup>
						<col width="30%" />
						<col width="70%" />
					</colgroup>
					<tr>
						<th colspan="2"><h2>RESERVATION SERVICE</h2></th>
					</tr>
					<tr>
						<th>SELECT PROGRAM</th>
						<td><select class="select-program" name="pCode"
							onchange="getPrice(this.value)">
								<option value="0000-0001">KINDERGARTEN ONE DAY - BASIC</option>
								<option value="0000-0002">KINDERGARTEN ONE DAY - ALL DAY</option>
								<option value="0000-0003">KINDERGARTEN ONE MONTH - BASIC</option>
								<option value="0000-0004">KINDERGARTEN ONE MONTH - ALL DAY</option>
								<option value="0000-0005">SOCIALIZATION TESTING - FIRST TIME</option>
								<option value="0000-0006">SOCIALIZATION TESTING - RETRY</option>
						</select></td>
					</tr>
					<tr>
						<th>PROGRAM PRICE</th>
						<td>
							<input type="text" name="pPrice" readonly="readonly" id="selPrice" />
						</td>
					</tr>
					<tr>
						<th>CHOOSING PET</th>
						<td>
							<c:forEach items="${petList }" var="pet">
								<label class="box-radio-input"> 
									<input type="radio"	name="petId" value="${pet.petId }"
									onclick="getPetName('${pet.petName}');" /> 
									<span>${pet.petName }</span>
								</label>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<th>RESERVATION DATE</th>
						<td>
							<input type="date" name="blDate" id="currentDate" />
						</td>
					</tr>
					<tr>
						<th>RESERVATION TIME</th>
						<td>
							<select class="select-time" name="blTime">
								<option value="09:00">09:00</option>
								<option value="10:00">10:00</option>
								<option value="11:00">11:00</option>
								<option value="12:00">12:00</option>
								<option value="13:00">13:00</option>
								<option value="14:00">14:00</option>
								<option value="15:00">15:00</option>
								<option value="16:00">16:00</option>
								<option value="17:00">17:00</option>
								<option value="18:00">18:00</option>
								<option value="19:00">19:00</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>REQUEST</th>
						<td>
							<textarea rows="5" cols="40" name="bRequest"></textarea>
						</td>
					</tr>
					<tr>
						<th>TOTAL PRICE</th>
						<td><input type="text" name="payAmount" readonly="readonly" id="totalPrice"/>
							 
<%-- 							<fmt:formatNumber value="" pattern="#,###" /> --%>
						</td>
					</tr>
					<tr>
						<th>CREDIT CARD NUMDER</th>
						<td>
							<input type="text" name="payWay" placeholder="ex) 0000-0000-0000">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="RESERVATION" />
							<input type="button" value="BACK" onclick="javascript:location.href='../kinderMain/home'" />
						</td>
					</tr>
				</table>
			</form>
		</div>
		<!-- footer -->

		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All
			Rights reserved. </footer>
	</div>
	<script type="text/javascript">
		function getPrice(code) {
			getFee = {
				type : "post",
				url : "pPrice",
				data : {
					"pCode" : code
				},
				dataType : "text",
				success : function(result) {
					console.log(result);
					$('input[name="pPrice"]').val(result);
					$('input[name="payAmount"]').val(result);
					
				},
				errors : function() {
					alert('에러');
				}
			}
			$.ajax(getFee);
		}
	</script>
	<script>
		function selTime(){
			$("#time").timepicker({
				timeFormat : 'h:mm p',
				interval : 60,
				minTime : '09',
				maxTime : '19:00 pm',
				defaultTime : '09',
				startTime : '09:00',
				dynamic : false,
				dropdown : true,
				scrollbar : true
			});
		};
	</script>
	<script type="text/javascript">
				function cal() {
					document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);
					$("#currentDate").datepicker({
								changeMonth : true,
								changeYear : true,
								nextText : 'NEXT MONTH',
								prevText : 'LAST MONTH',
								showAnim : 'slide',
								yearRange : '2021:2021',
								dayNames : [ 'SUN', 'MON', 'TUE', 'WED', 'THU',
										'FRI', 'SAT' ],
								dayNamesMin : [ 'SUN', 'MON', 'TUE', 'WED',
										'THU', 'FRI', 'SAT' ],
								monthNamesShort : [ 'JAN', 'FEB', 'MAR', 'APR',
										'MAY', 'JUN', 'JUL', 'AUG', 'SEP',
										'OCT', 'NOV', 'DEC' ],
								monthNames : [ 'JAN', 'FEB', 'MAR', 'APR',
										'MAY', 'JUN', 'JUL', 'AUG', 'SEP',
										'OCT', 'NOV', 'DEC' ],
								dateFormat : "yyyy-mm-dd",
								maxDate : 0, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
								onClose : function(selectedDate) {
									//시작일(startDate) datepicker가 닫힐때
									//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
									$("#endDate").datepicker("option",
											"minDate", selectedDate);
								}

							});
				}
	</script>

</body>
</html>