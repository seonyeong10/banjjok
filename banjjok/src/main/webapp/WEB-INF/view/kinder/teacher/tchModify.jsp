<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>desnForm</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/memberForm.css'/>" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
	<%@ include file="../../include/kgTop.jsp" %>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>직원등록</h2>
		</div>
		<form action="/kinder/teacher/myPage/modifyAct" name="frm" id="frm" enctype="multipart/form-data"	method="post" onsubmit="">
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">구분</p>
					<span class="element-value">
						<c:if test="${lists.shopCode eq 'k' }">Kinder Garden</c:if>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">직원사진</p>
					<c:set value="${fn:split(lists.tPhoto, '`') }" var = "i" />
					<span class="image"><img src="/kinder/upload/${i[1] }" alt="emp face" id="emp-img"/></span>
					<span class="element-value">
					<button type="button" onclick="imgDelete('${i[1]}', this);" id="delBtn">삭제</button>
					<br />
					<input type="file" name="tPhoto" id="tPhoto" style="display: none;" />
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">직급/구분</p>
					<span class="element-value"> 
						<select name="tState">
							<option value="01" <c:if test="${lists.tState eq '01' }">selected</c:if>>Socialization</option>
							<option value="02" <c:if test="${lists.tState eq '02' }">selected</c:if>>One Day</option>
							<option value="03" <c:if test="${lists.tState eq '03' }">selected</c:if>>All Day</option>
							<option value="10" <c:if test="${lists.tState eq '10' }">selected</c:if>>Incumbent</option>
							<option value="20" <c:if test="${lists.tState eq '20' }">selected</c:if>>Maternity Leave</option>
							<option value="30" <c:if test="${lists.tState eq '30' }">selected</c:if>>Paternity Leave</option>
							<option value="40" <c:if test="${lists.tState eq '40' }">selected</c:if>>Retire</option>
						</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">영역</p>
					<span class="element-value">
							<c:if test="${lists.cCode eq '0100-0001' }">사회화테스트A(소형견)</c:if>
							<c:if test="${lists.cCode eq '0100-0002' }">사회화테스트B(소형견)</c:if>
							<c:if test="${lists.cCode eq '0200-0001' }">사회화테스트A(중형견)</c:if>
							<c:if test="${lists.cCode eq '0200-0002' }">사회화테스트B(중형견)</c:if>
							<c:if test="${lists.cCode eq '0300-0001' }">사회화테스트A(대형견)</c:if>
							<c:if test="${lists.cCode eq '0300-0002' }">사회화테스트B(대형견)</c:if>
							
							<c:if test="${lists.cCode eq '1100-1001' }">(소형견)단일A반</c:if>
							<c:if test="${lists.cCode eq '1100-1002' }">(소형견)단일B반</c:if>
							<c:if test="${lists.cCode eq '1100-1003' }">(소형견)종일A반</c:if>
							<c:if test="${lists.cCode eq '1100-1004' }">(소형견)종일B반</c:if>
							<c:if test="${lists.cCode eq '1200-1001' }">(소형견)단일C반</c:if>
							<c:if test="${lists.cCode eq '1200-1002' }">(소형견)단일D반</c:if>
							<c:if test="${lists.cCode eq '1200-1003' }">(소형견)종일C반</c:if>
							<c:if test="${lists.cCode eq '1200-1004' }">(소형견)종일D반</c:if>
							
							<c:if test="${lists.cCode eq '2100-2001' }">(중형견)단일A반</c:if>
							<c:if test="${lists.cCode eq '2100-2002' }">(중형견)단일B반</c:if>
							<c:if test="${lists.cCode eq '2100-2003' }">(중형견)종일A반</c:if>
							<c:if test="${lists.cCode eq '2100-2004' }">(중형견)종일B반</c:if>
							<c:if test="${lists.cCode eq '2200-2001' }">(중형견)단일C반</c:if>
							<c:if test="${lists.cCode eq '2200-2002' }">(중형견)단일D반</c:if>
							<c:if test="${lists.cCode eq '2200-2003' }">(중형견)종일C반</c:if>
							<c:if test="${lists.cCode eq '2200-2004' }">(중형견)종일D반</c:if>
							
							<c:if test="${lists.cCode eq '3100-3001' }">(대형견)단일A반</c:if>
							<c:if test="${lists.cCode eq '3100-3002' }">(대형견)단일B반</c:if>
							<c:if test="${lists.cCode eq '3100-3003' }">(대형견)종일A반</c:if>
							<c:if test="${lists.cCode eq '3100-3004' }">(대형견)종일B반</c:if>
							<c:if test="${lists.cCode eq '3200-3001' }">(대형견)단일C반</c:if>
							<c:if test="${lists.cCode eq '3200-3002' }">(대형견)단일D반</c:if>
							<c:if test="${lists.cCode eq '3200-3003' }">(대형견)종일C반</c:if>
							<c:if test="${lists.cCode eq '3200-3004' }">(대형견)종일D반</c:if>
						</span>
				</div>
				<div class="mem-element">
					<p class="element-name">아이디(사원번호)</p>
					<span class="element-value">
						<input type="text" name="tId" placeholder="사원번호 자동생성" value="${lists.tId }" readonly="readonly"/>
					</span> 
				</div>
				<div class="mem-element">
					<p class="element-name">비밀번호</p>
					<span class="element-value">
						<input type="password" name="tPw" placeholder="비밀번호" />
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">이름</p>
					<span class="element-value">${lists.tName }</span>
				</div>
<!-- 				<div class="mem-element"> -->
<!-- 					<p class="element-name">닉네임</p> -->
<!-- 					<span class="element-value"><input type="text" -->
<!-- 							name="t_nic" placeholder="닉네임" -->
<!-- 						/></span> -->
<!-- 				</div> -->
				<div class="mem-element">
					<p class="element-name">휴대폰 번호</p>
					<span class="element-value"><input type="text" name="tPh" placeholder="휴대폰 번호" value="${lists.tPh }"/></span>
				</div>
				<div class="mem-element">
					<p class="element-name">이메일</p>
					<span class="element-value"><input type="text" name="tEmail" placeholder="이메일" value="${lists.tEmail }" /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">정기 휴무일</p>
					<span class="element-value">
						<select name="tDuty">
							<option value="1" <c:if test="${lists.tDuty eq '1' }">selected</c:if> >매주 일요일</option>
							<option value="2" <c:if test="${lists.tDuty eq '2' }">selected</c:if> >매주 월요일</option>
							<option value="3" <c:if test="${lists.tDuty eq '3' }">selected</c:if> >매주 화요일</option>
							<option value="4" <c:if test="${lists.tDuty eq '4' }">selected</c:if> >매주 수요일</option>
							<option value="5" <c:if test="${lists.tDuty eq '5' }">selected</c:if> >매주 목요일</option>
							<option value="6" <c:if test="${lists.tDuty eq '6' }">selected</c:if> >매주 금요일</option>
							<option value="7" <c:if test="${lists.tDuty eq '7' }">selected</c:if> >매주 토요일</option>
						</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">입사일</p>
					<span class="element-value">
						<fmt:formatDate value="${lists.tJoin }" pattern="yyyy년 MM월 dd일"/>
					</span>
				</div>
				<div class="button-wrap">
					<input type="button" value="취소" onclick="cancle();" />
					<input type="submit" value="등록" />
				</div>
			</div>
		</form >
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
	<script type="text/javascript">
		function cancle(){
			if(confirm('입력한 내용은 저장되지 않습니다.')){
				location.href('/kinder/main');
			}
		}
		function readImage(input) {
		    // 인풋 태그에 파일이 있는 경우
		    if(input.files && input.files[0]) {
		        // 이미지 파일인지 검사 (생략)
		        // FileReader 인스턴스 생성
		        const reader = new FileReader();
		        // 이미지가 로드가 된 경우
		        reader.onload = e => {
		            const previewImage = document.getElementById("emp-img");
		            previewImage.src = e.target.result;
		        }
		        // reader가 이미지 읽도록 하기
		        reader.readAsDataURL(input.files[0]);
		    }
		}
		
		// input file에 change 이벤트 부여
		const inputImage = document.getElementById("emp-img");
		inputImage.addEventListener("change", e => {
		    readImage(e.target)
		});
		
		// 이미지 삭제
		function imgDelete(imgFile, btn) {
			// 			location.href = "imgDel?imgFile=" + imgFile;
			del = {
				type : "post",
				url : "imgDel",
				dataType : "text",
				data : {
					"imgFile" : imgFile
				},
				success : function(result) {
					if (result.trim() == "1") {
						$(btn).text('삭제취소');
						$('#tPhoto').show();
					} else {
						$(btn).text('삭제');
						$('#tPhoto').hide();
					}
				},
				error : function() {
					alert('에러');
					return;
				}
			};
			$.ajax(del);
		}
	</script>
</body>
</html>