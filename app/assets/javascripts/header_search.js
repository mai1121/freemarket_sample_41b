$(document).on('turbolinks:load', function() {
  $(function(){

    $('.header-innner__nav-root').hover(function(){
      $(this).css('color','#0099e8');
      },function(){
      $(this).css('color','');
    });
    $('.header-innner__nav-category').hover(function(){
      $(this).children('ul').toggle();
    });
    $('.header-innner__category-nav--parent').hover(function(){
      $(this).css('background','red');
      $(this).find('a.header-innner__category-nav--parent-name').css('color','#fff');
      $(this).children('ul').toggle(true);
    }, function(){
      $(this).css('background','');
      $(this).find('a.header-innner__category-nav--parent-name').css('color','');
      $(this).children('ul').toggle(false);
    });
    $('.header-innner__category-nav--child').hover(function(){
      $(this).css('background','#EEEEEE');
      $(this).children('ul').toggle(true);
    },function(){
      $(this).css('background','');
      $(this).children('ul').toggle(false);
    });
    $('.header-innner__category-nav--grand-child').hover(function(){
      $(this).css('background','#EEEEEE');
    },function(){
      $(this).css('background','');
    });

    $('.header-innner__nav-bland').hover(function(){
      $(this).children('ul').toggle();
    });
    $('.header-innner__bland-nav-list').hover(function(){
      $(this).css('background','red');
      $(this).find('a').css('color','#fff');
    },function(){
      $(this).css('background','');
      $(this).find('a').css('color','');
    });
  });
  // $(document).off();
});
