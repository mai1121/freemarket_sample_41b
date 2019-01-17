
$(document).on('turbolinks:load', function() {
   $(function(){
    var form = $("#charge-form");
    form.submit(function(e) {
    e.preventDefault();
    Payjp.setPublicKey('pk_test_22c2a57433e9edff6552f953'); 

    var num = $("#num").val(); 
    var cvc = $("#cvc").val();
    var exp_month = $("#exp_month").val();
    var exp_year = $("#exp_year").val();

    var card = {
        number: num,
        cvc: cvc,
        exp_month: exp_month,
        exp_year: exp_year
    };

    Payjp.createToken(card, function(s, response) {
      if (response.error) {
        form.find('.payment-errors').text(response.error.message);
        form.find('button').prop('disabled', false);
      }
      else {
        $(".number").removeAttr("name");
        $(".cvc").removeAttr("name");
        $(".exp_month").removeAttr("name");
        $(".exp_year").removeAttr("name");
        var token = response.id;
        $("#token").val(token);
        form.get(0).submit();
      }
    });
  });
  });
});
