/**
 * 별점
 * 선택했을 때 : fas fa-star
 * 미선택 : far fa-star
 */

$(function(){
	$('.star span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	});
	
	$('.eval').click(function(){
		var eval = $('.on').length;
		$('input[name=star]').attr('value', eval);
	});
});

