/**
 * 
 */
function nextPage() {
			document.getElementById('member-info').style.display = 'none';
			document.getElementById('pet-info').style.display = 'block';
			document.getElementsByClassName('pennant-pet')[0].style.color = '#333';
			document.getElementsByClassName('pennant')[0].style.color = '#e1e1e1';
		}

		function cancle() {
			if (confirm('입력한 데이터는 저장되지 않습니다. \n 취소하시겠습니까?')) {
				location.href = '/banjjok/kinder/program';
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
		const inputImage = document.getElementById("desn-img");
		inputImage.addEventListener("change", e => {
		    readImage(e.target)
		});
		
		function getTeacher() {
			var select = document.getElementById('categori');
			var option = select.options[select.selectedIndex].value;
			
//			teachers = {
//					type : "post"
//					, url : "/banjjok/kinder/program/tState"
//					, dataType : 
//			};
//			$.ajax(teachers);
		}