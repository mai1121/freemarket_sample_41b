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

$(document).on('turbolinks:load', function() {
  var $dropZone = $('#drop_zone');
  $dropZone.on('dragover',function(e){
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({'box-shadow':'0px 0px 10px',
     'border':'1px solid #000'})
  });
  $dropZone.on('dragleave',function(e){
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({'box-shadow':'none',
     'border': '1px dashed #ccc'})
  });
  $dropZone.on('drop',function(e){
    e.stopPropagation();
    e.preventDefault();
    var files = e.originalEvent.dataTransfer.files;
    for (var i = 0; i < files.length; i++) {
      (function() {
        var fr = new FileReader();
        fr.onload = function() {
          var template = $('#image-list-item');
          var img = $("<img>");
          img.setAttribute('src', fr.result);
          template.appendChild(img);

          var preview = document.getElementById("preview");
          preview.appendChild(div);
        };
        fr.readAsDataURL(files[i]);
      })();

      this.append("file", files[i]);
    }
  });
});

`<div class="sell-upload-items have-item-2">
  <ul>
    <li class="sell-upload-item">
      <figure class="sell-upload-figure landscape">
        <img src="" alt="" class="">
      </figure>
      <div class="sell-upload-button">
        <a href="" class="sell-upload-edit">編集</a>
        <a href="">削除</a>
      </div>
    </li>
    <li class="sell-upload-item">
      <figure class="sell-upload-figure landscape">
        <img src="" alt="" class="">
      </figure>
      <div class="sell-upload-button">
        <a href="" class="sell-upload-edit">編集</a>
        <a href="">削除</a>
      </div>
    </li>
  </ul>
</div>`

function buildImageContainerDivision(){
  var div =  $('<div>',{ class: "sell-upload-items have-item-2"});
  debugger;
}



































