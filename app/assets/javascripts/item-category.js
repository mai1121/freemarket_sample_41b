
$(document).on('turbolinks:load', function() {
  //カテゴリーのセレクトボックス
  $(document).on('change', '.select-category', function() {
      var template = $(`#child0fCategory${$(this).val()}`);
      $(this).nextAll().remove();
      $(this.parentElement).append(template.html());
  });

  $('#item_price').on('keyup',function(){
    var price = ($(this).val());
    if (price >= 300){
      $('#salesCommission').html( '¥' + price / 10);
      $('#saleProfit').html( '¥' + price * 0.9);
    }else{
      $('#salesCommission').html('-');
      $('#saleProfit').html('-');
    }
  })
});
