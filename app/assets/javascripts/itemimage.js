$(document).on('turbolinks:load', function() {

  var $dropZone = $('#drop_zone');
  $dropZone.on('dragover',function(e){
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({'box-shadow':'0px 0px 10px',
     'border':'1px solid #000'});
  });
  $dropZone.on("click", function() {
    $("input[type=file]").click();
  });

  $("input[type=file]").on('change',function(){
    var fr = new FileReader();
    fr.onload = function(fr) {
        var ul = $('.sell-upload-items ul');
        ul.append(buildListItem(this.result));
        changeUploadImagesClass(ul)
    };
    fr.readAsDataURL(this.files[0]);
  })

  $dropZone.on('dragleave',function(e){
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({'box-shadow':'none',
     'border': '1px dashed #ccc'})
  });

  var dropZone = document.getElementById("drop_zone");
  dropZone.addEventListener("drop", function(e) {
    e.stopPropagation();
    e.preventDefault();

    var files = e.dataTransfer.files;
    addUploadImages(files)
  }, false);
});


function buildListItem(src){
  var image = `<img src="${src}" alt="" class="">`;
  var html =
          `<li class="sell-upload-item">
            <figure class="sell-upload-figure landscape">
              ${image}
            </figure>
            <div class="sell-upload-button">
              <a href="" class="sell-upload-edit">編集</a>
              <a href="">削除</a>
            </div>
          </li>`;
  return html;
}

function changeUploadImagesClass(ul){
  $imagesBox = $('.sell-upload-items');
  boxclass = `sell-upload-items have-item${ul.children('li').length}`;
  $imagesBox.removeAttr().attr({'class': boxclass});
}

function addUploadImages(files){

  var formData = new FormData()
  for (var i = 0; i < files.length; i++) {
    (function() {
      var fr = new FileReader();
      fr.onload = function() {
        var ul = $('.sell-upload-items ul');
        ul.append(buildListItem(fr.result));
        changeUploadImagesClass(ul)
      };
      fr.readAsDataURL(files[i]);
    })();
  formData.append("item[item_images][image][]", files[i]);
  }
  $('#drop_zone').css({'box-shadow':'none','border': '1px dashed #ccc'});
}





















