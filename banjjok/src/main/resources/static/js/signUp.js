/**
 * 
 */
function chkMobile(){
	document.getElementsByClassName('certificate')[0].style.display = 'block';
}
function isDuplicate(){
		var id = {
				userId : $("input[name='memId']").val()	
		}
		if($("input[name='memId']").val() == "") {
			alert('아이디를 입력하세요.');
		} else {
		checkId = {
				type : "post"
				,url : "checkId"
				,dataType : "text"
				,data : id
				,success : function(isDuplicate) {
					if(isDuplicate == 0) {
						alert('사용가능한 아이디입니다.');
						$('input[name="idBtn"]').val('ok');
						$('input[name="duplicate"]').val('false');
					} else {
						alert('이미 사용중인 아이디입니다.');
						$('input[name="duplicate"]').val('true');
					}
				}
				,errors : function(){
					console.log("에러");
				}
		};
		$.ajax(checkId);
		}
	}

function block(){
	alert('중성화 하지 않은 반려동물은 등록할 수 없습니다.');
	document.getElementById('noNeutral').checked = false;
}

function prevPage(){
	 document.getElementById('member-info').style.display='block';
	 document.getElementById('pet-info').style.display='none';
	 document.getElementsByClassName('pennant-pet')[0].style.color='#333';
	 document.getElementsByClassName('pennant')[0].style.color='#e1e1e1';
}

function nextPage() {
//		frm.action="checkMem";
//		frm.submit();
//		  var memData = {
//				  "memId" : $("input[name='memId']").val()
//				  ,"memPwCon" : $("input[name='memPwCon']").val()
//				  ,"memMobile" : $("input[name='memMobile']").val()
//				  ,"memMobile" : $("input[name='memMobile']").val()
//				  ,"memEmail" : $("input[name='memEmail']").val()
//				  ,"nicName" : $("input[name='nicName']").val()
//		  }
//		  checkMem = {
//				  type : "post"
//				  ,url : "checkMem"
//				  ,dataType : "text"
//				  ,data : memData
//				  ,success : function(isErr){
//					  console.log(isErr);
//					  if(!isErr){
//						  $('#member-info').hide();
//						  $('#pet-info').show();
//						  $('.pennant-pet').css('color', '#333');
//						  $('.pennant').css('color','#e1e1e1');
//					  }
//				  }
//				  ,error : function(){
//					  alert('에러');
//					  return;
//				  }
			  
//		  };
//		  $.ajax(checkMem);
	  document.getElementById('member-info').style.display='none';
	  document.getElementById('pet-info').style.display='block';
	  document.getElementsByClassName('pennant-pet')[0].style.color='#e1e1e1';
	  document.getElementsByClassName('pennant')[0].style.color='#333';
	}

	function cancle() {
	  if(confirm('입력한 데이터는 저장되지 않습니다. \n 취소하시겠습니까?')) {
	    location.href='index.html';
	  }
	}

	function init() {
	  document.getElementById('pet-info').style.display='none';
	  document.getElementsByClassName('pennant-pet')[0].style.color='#e1e1e1';
	  document.getElementsByName('duplicate')[0].value='true';
	}

	init();