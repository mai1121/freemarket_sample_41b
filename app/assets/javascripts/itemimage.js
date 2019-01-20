$(document).on('turbolinks:load', function() {

  var $dropZone = $('#drop_zone');
  //ドラッグ時のドロップフィールド見た目
  $dropZone.on('dragover',function(e){
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({'box-shadow':'0px 0px 10px',
     'border':'1px solid #000'});
  });

  $dropZone.on('dragleave',function(e){
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({'box-shadow':'none',
     'border': '1px dashed #ccc'})
  });


  $("input[type=file]").on('change',function(){
    var files = this.files;
    for (var i = 0; i < files.length; i++) {
      var fr = new FileReader();
        fr.onload = function(fr) {
            var ul = $('.sell-upload-items ul');
            ul.append(buildListItem(this.result));
            changeUploadImagesClass(ul)
        };
      fr.readAsDataURL(files[i]);
    }
  })

  $dropZone.on("click", function() {
    $("input[type=file]").click();
  });


  var dropZone = document.getElementById("drop_zone");
  if(dropZone){
    dropZone.addEventListener("drop", function(e) {
      e.stopPropagation();
      e.preventDefault();

      var files = e.dataTransfer.files;
      addUploadImages(files)
      var formData = document.querySelector('.sell-form')
      行けたらいいな
      image_container.appendChild(files)
    }, false);
  };
});

function deleteItemImage(i){
  $('li.sell-upload-item')[i].remove();
  changeUploadImagesClass($('.sell-upload-items ul'));
}


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
