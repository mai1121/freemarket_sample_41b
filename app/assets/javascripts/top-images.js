  $(document).on('turbolinks:load', function() {
   $(function(){
    $('.top-images__area').not('.slick-initialized').slick({
      autoplay: true,
      autoplaySpeed: 1000,
      dots: true,
    });
  });
 });

