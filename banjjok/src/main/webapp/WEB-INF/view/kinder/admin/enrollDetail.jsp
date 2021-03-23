<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Enrollment Detail Info</title>
</head>
<body>
	<div class="wrapper">
		<div class="content">
			<table style="width: 500px;" class="table">
				<tr>
					<th colspan=""><h2>Employee Enrollment Detail Info</h2></th>
				</tr>
				<tr>
					<th>SHOP CODE</th>
					<td>${lists.shopCode }</td>
				</tr>
				<tr>
					<th>ID</th>
					<td>${lists.tId }</td>
				</tr>
				<tr>
					<th>NAME</th>
					<td>${lists.tName }</td>
				</tr>
				<tr>
					<th>PHONE NUMBER</th>
					<td>${lists.tPh }</td>
				</tr>
				<tr>
					<th>EMAIL ADDRESS</th>
					<td>${lists.tEmail }</td>
				</tr>
				<tr>
					<th>ENTRADA</th>
					<td>${lists.tJoin }</td>
				</tr>
				<tr>
					<th>DUTY DAY</th>
					<td>${lists.tDuty }</td>
				</tr>
				<tr>
					<th>REGISTATION DATE</th>
					<td>${lists.tRegist }</td>
				</tr>
				<tr>
					<th>TEACHER PHOTO</th>
					<td>
						<c:set value="${fn:split(lists.tPhoto,'`') }" var="i" />
						<img src="/kinder/upload/${i[1] }" alt="teacher photo" style="width:150px; height:200px" />
					</td>
				</tr>
				<tr>
					<th>RESPONSIBILITY CLASS</th>
					<td>
						<c:if test="${lists.cCode eq '0100-0001' }">SOCIALIZATION TESTING &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '0100-0002' }">SOCIALIZATION TESTING &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '0200-0001' }">SOCIALIZATION TESTING &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '0200-0002' }">SOCIALIZATION TESTING &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '0300-0001' }">SOCIALIZATION TESTING &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '0300-0002' }">SOCIALIZATION TESTING &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1100-1001' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1100-1002' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1100-1003' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1100-1004' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1200-1001' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1200-1002' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1200-1003' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1200-1004' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1300-1001' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1300-1002' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1300-1003' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '1300-1004' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2100-2001' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2100-2002' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2100-2003' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2100-2004' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2200-2001' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2200-2002' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2200-2003' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2200-2004' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2300-2001' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2300-2002' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2300-2003' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '2300-2004' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3100-3001' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3100-3002' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3100-3003' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3100-3004' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3200-3001' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3200-3002' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3200-3003' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3200-3004' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3300-3001' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3300-3002' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3300-3003' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.cCode eq '3300-3004' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>

					</td>
				</tr>
				<tr>
					<th>STATEMENT</th>
					<td>
						<c:if test="${lists.tState eq '0' }">RETIREE</c:if>
						<c:if test="${lists.tState eq '1' }">INCUMBENT</c:if>
						<!-- FOR FEMAIL -->
						<c:if test="${lists.tState eq '2' }">MATERNITY LEAVE</c:if> 
						<!-- FOR MAIL -->
						<c:if test="${lists.tState eq '3' }">PATERNITY LEAVE</c:if>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="MODIFY" onclick="javascript:location.href='enrollModify?tId=${lists.tId}'" />
						<input type="button" value="DELETE" onclick="return Del();" />
						<input type="button" value="BACK" onclick="javascript:location.href='enrollList'" />
					</td>
				</tr>
			</table>
		</div>
		<script type="text/javascript">
	function Del(){
		if(confirm('Are you sure remove this data of employee?')){
			location.href = '/enrollDel?tId=${lists.tId}';
		}
	}
		</script>
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	</div>
</body>
</html>