$(document).on('turbolinks:load', function() {
  $('#item_delivery_fee_method').on('load change', function(){
    var deliMethod = $('#delivery_method');
    var feeMethod = $('#item_delivery_fee_method');
    if(feeMethod.val() === '---'){
      deliMethod.css('display', 'none');
    }else{
      deliMethod.css('display', '');
    }
  });
});
