$(window).on('load', function() {
    $('#slider').nivoSlider();
});

$(function() {
    $('.gallery a').lightBox();
});
	$("#slideshow > div:gt(0)").hide();
				setInterval(function() { 
				  $('#slideshow > div:first')
					.fadeOut(00)
					.next()
					.fadeIn(500)
					.end()
					.appendTo('#slideshow');
				},  2000);

				

$('.toTop ').click(function(){
					$("html, body").animate({ scrollTop: 0 }, 600);
					return false;
				});
				$('.toBottom').click(function(){
					$('html,body').animate({scrollTop: $(document).height()}, 600);
					return false;
				});