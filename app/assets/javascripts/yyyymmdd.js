$(document).on('turbolinks:load', function(){
  setDate(1950); // 関数の呼び出し
  function setDate(startyear, endyear){
      var date = new Date();
      var nowyear = date.getFullYear();
      var month = 1;
      var day = 1;
      const INITIALOPTIONS = '<option value="notSelect" selected="selected">' + '-' + '</option>';
      var yearOptions= INITIALOPTIONS;
      var yyYearOptions= INITIALOPTIONS;
      var monthOptions = INITIALOPTIONS;
      var dayOptions = INITIALOPTIONS;
      if(!startyear || startyear == ""){
          startyear = nowyear - 30;
      }
      if(!endyear || endyear == ""){
          endyear = nowyear;
      }
      if(startyear > endyear){
          return;
      }
      for (var i=startyear; i <= endyear; i++){
          if(i == nowyear){
              yearOptions += '<option value="' + i + '">' + i + '</option>';
          }else{
              yearOptions += '<option value="' + i +'">' + i + '</option>';
          }
      }
      for (i=1; i<=12; i++){
        monthOptions += '<option value="' + zeroPadding(i,2) +'">' + zeroPadding(i,2) + '</option>';
      }
      for (i=1; i<=99; i++){
        yyYearOptions += '<option value="' + zeroPadding(i,2) + '">' + zeroPadding(i,2) + '</option>';
      }
      for (i=1; i<=31; i++){
        dayOptions += '<option value="' + zeroPadding(i,2) + '">' + zeroPadding(i,2) + '</option>';
      }
      $('#expirationYear').html(yyYearOptions);
      $('#expirationMonth').html(monthOptions);
      $('#day').html(dayOptions);
      $('#birthYear').html(yearOptions);
      $('#birthMonth').html(monthOptions);
      $('#birthDay').html(dayOptions);
  }

  function zeroPadding(num,length){
    return ('0000000000' + num).slice(-length);
  }
});
