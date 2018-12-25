$(document).on('turbolinks:load', function() {
	$(function(){
		// ドットにカーソル当てた時の処理と外した時の処置
		$('.top-images__dot').hover(
			function(){
			$(this).addClass('dot-active');
		},
			function(){
			$(this).removeClass('dot-active');
		}
		);
		});
 });

