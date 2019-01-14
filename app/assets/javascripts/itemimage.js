$(function(){
  var $f = $("#fileinput");
  var $d = $("#dragarea");
  var $c = $("#clickarea");

  $f.on("change", function(){
      handleFiles(this.files);
  });

  $c.on("click", function(e){
      if( $f.length > 0 ){
          $f.click();
      }
      e.preventDefault();
  });

  $d.on("dragenter", function(e){
      e.stopPropagation();
      e.preventDefault();
  });
  $d.on("dragover", function(e){
      e.stopPropagation();
      e.preventDefault();
  });

  $d.on("drop", function(e){
      e.stopPropagation();
      e.preventDefault();

      var dt = e.dataTransfer; // dt is undefined
      var files = dt.files; // ここでエラー出る
      handleFiles(files);
  });
});

function handleFiles(files){
  console.log("files", files);
}
