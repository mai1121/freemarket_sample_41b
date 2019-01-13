$(document).on('turbolinks:load', function() {
   $(function(){
$('.slider').slick({
  infinite: true,
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  fade: true,
  asNavFor: '.slider-nav'
});
$('.slider-nav').slick({
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  asNavFor: '.slider',
  dots: false,
  centerMode: true,
  focusOnSelect: true
});
});
 });
