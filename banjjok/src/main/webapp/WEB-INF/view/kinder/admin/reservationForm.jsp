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
</head>
<body>
<div class="wrapper">
	<%@ include file="../../include/kinder_topmenu.jsp"%>
<div class="content">
<form action="reservationOk" method="post" name="frm">
<input type="hidden" name="pCode" value="${program.pCode }"/>
	<table>
		<colgroup>
			<col width="30%" />
			<col width="70%" />
		</colgroup>
		<tr><th colspan="2"><h2>RESERVATION SERVICE</h2></th></tr>
		<tr>
			<th>SELECT PROGRAM</th>
			<td>
				<select class="select-program" name="pCode" onchange="getPrice(this.value)">
					<option value="0000-0001">KINDERGARTEN ONE DAY - BASIC</option>
					<option value="0000-0002">KINDERGARTEN ONE DAY - ALL DAY</option>
					<option value="0000-0003">KINDERGARTEN ONE MONTH - BASIC</option>
					<option value="0000-0004">KINDERGARTEN ONE MONTH - ALL DAY</option>
					<option value="0000-0005">SOCIALIZATION TESTING - FIRST TIME</option>
					<option value="0000-0006">SOCIALIZATION TESTING - RETRY</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>PROGRAM PRICE</th>
			<td>
				<input type="text" name="pPrice" readonly="readonly"/>
			</td>
		</tr>
		<tr>
			<th>CHOOSING PET</th>
			<td>
				<input type="hidden" name="petName" />
				<c:forEach items="${petList }" var="pet">
					<label class="box-radio-input">
						<input type="radio" name="petId" value="${pet.petId }" 
							onclick="getPetName('${pet.petName}');" />
						<span>${pet.petName }</span>
					</label>				
				</c:forEach>
			</td>
		</tr>
		<tr>
			<th>RESERVATION DATE</th>
			<td></td>
		</tr>
		<tr>
			<th>REQUEST</th>
			<td>
				<textarea rows="5" cols="40" name="bRequest"></textarea>
			</td>
		</tr>
		<tr></tr>
		<tr>
			<th>TOTAL PRICE</th>
			<td>
				<input type="text" name="payAmount" readonly="readonly" />
				\ <fmt:formatNumber value="${program.pPrice }" pattern="#,###"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="RESERVATION" />
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
	function getPrice(code){
		getFee = {
				type : "post"
				,url : "pPrice"
				,data : {"pCode" : code}
				,dataType : "text"
				,success : function(result){
					console.log(result);
					$('input[name="pPrice"]').val(result);
				}
				,errors : function(){
					alert('에러');
				}
		}
		$.ajax(getFee);
	}
</script>
</body>
</html>