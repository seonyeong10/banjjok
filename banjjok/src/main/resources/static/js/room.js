/**
 * 
 */
function frmSend(){
	if(document.getElementById('roomPw').value.trim() =="" ){
		alert('비밀번호를 입력하세요');
		document.getElementById('roomPw').focus();
		return false;
		
	}
	
}

function roomDelete(){
	if(confirm('객실을 삭제하시겠습니까?')){
		//비밀번호
		if (document.getElementById('roomPw').value.trim() == "") {
			alert('비밀번호를 입력하세요.');
			document.getElementById('roomPw').focus();
			return false;
		}
		document.frm.action = "/hotel/roomDel";
		frm.submit();
	}
}

// Script to open and close sidebar when on tablets and phones
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Slideshow Apartment Images
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}