/**
 * 
 */
function sendSMS(btn) {
		var ph = document.getElementById('userPh').value.trim();
		if(ph == "") {
			alert('연락처를 입력해주세요.');
			return false;
		}
		
		send = {
				type : "post"
				,url : "/banjjok/chkSMS"
				,dataType : "text"
				,data : {
					"mobile" : ph
				}
				,success : function(result) {
					alert('인증번호를 전송했습니다. \n 전송된 인증번호를 입력해주세요.');
					document.getElementsByClassName('loginButton')[0].style.display = 'none';
					document.getElementsByClassName('loginButton')[1].style.display = 'block';
				}
				,error : function() {
					alert('ERROR : 다시 시도해주세요.');
				}
		};
		$.ajax(send);
		
	}

function isCorrect(){
	var num = document.getElementById('checkNum').value.trim();
	
	check = {
			type : "post"
			, url : "/banjjok/checkNum"
			, dataType : "text"
			, data : {
				"number" : num
			}
			, success : function(result) {
				if(result == 1) {
					document.getElementById('error').innerText = '인증번호가 일치하지 않습니다.';
				} else {
					document.getElementById('error').innerText = '';
					document.getElementsByClassName('loginButton')[1].style.display = 'none';
					document.getElementsByClassName('loginButton')[2].style.display = 'block';
				}
			}
			, error : function() {
				alert('error');
			}
	};
	$.ajax(check);
}