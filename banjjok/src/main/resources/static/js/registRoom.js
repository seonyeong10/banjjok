/**
 * 
 */
function isDuplicate(){
		var room = {
				userId : $("input[name='roomCode']").val()	
		}
		if($("input[name='roomCode']").val() == "") {
			alert('객실 코드를 입력하세요.');
		} else {
		checkId = {
				type : "post"
				,url : "checkId"
				,dataType : "text"
				,data : room
				,success : function(isDuplicate) {
					if(isDuplicate == 0) {
						alert('사용가능한 객실코드 입니다.');
						$('input[name="idBtn"]').val('ok');
						$('input[name="duplicate"]').val('false');
					} else {
						alert('이미 사용중인 객실코드 입니다..');
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