$(document).on('turbolinks:load', function() {

  $(document).on('click', '.sell-upload-delete', function() {
    $(this).closest('li');
    var id = $(this).closest('li').attr('id');
    $('#destroyAttrOf' + id.substr(id.indexOf('_') + 1)).val(true);
    $(this).closest('li').remove();
    var ul = $('.sell-upload-items ul');
    changeUploadImagesClass(ul)
  })

  $(document).on('click', '.sell-upload-edit', function() {
    var listElement = $(this).closest('li');
    var id = listElement.attr('id');
    var fileElement = $('#imageAttrOf' + id.substr(id.indexOf('_') + 1));
    fileElement.click();
  })

  var $dropZone = $('#drop_zone');
  //ドラッグ時のドロップフィールド見た目
  $dropZone.on('dragover', function(e) {
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({
      'box-shadow': '0px 0px 10px',
      'border': '1px solid #000'
    });
  });

  $dropZone.on('dragleave', function(e) {
    e.stopPropagation();
    e.preventDefault();
    $dropZone.css({
      'box-shadow': 'none',
      'border': '1px dashed #ccc'
    })
  });


  var dropZone = document.getElementById("drop_zone");
  if (dropZone) {
    dropZone.addEventListener("drop", function(e) {
      e.stopPropagation();
      e.preventDefault();

      var files = e.dataTransfer.files;
      var formData = document.querySelector('.sell-form')
      image_container.appendChild(files)
    }, false);
  };


  $dropZone.on("click", function() {
    $("#item_image").click();
  });

  $("input[type=file]#item_image").on('change', function() {
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

  $(".sell-single-image-file").on('change', function() {
    var files = this.files;
    var id = $(this).attr('id').replace('imageAttrOf', '')
    for (var i = 0; i < files.length; i++) {
      var fr = new FileReader();
      fr.onload = function(fr) {
        var item_img = $('#image_' + id + " img");
        item_img.attr('src', this.result);
        $('#cacheAttrOf' + id).remove();
      };
      fr.readAsDataURL(files[i]);
    }
  })

});

function deleteItemImage(i) {
  $('li.sell-upload-item')[i].remove();
  changeUploadImagesClass($('.sell-upload-items ul'));
}


function buildListItem(src) {
  var image = `<img src="${src}" alt="" class="">`;
  var html =
    `<li class="sell-upload-item">
            <figure class="sell-upload-figure landscape">
              ${image}
            </figure>
            <div class="sell-upload-button">
              <a href="" class="sell-upload-edit">編集</a>
              <a href="" class="sell-upload-delete">削除</a>
            </div>
          </li>`;
  return html;
}


function changeUploadImagesClass(ul) {
  $imagesBox = $('.sell-upload-items');
  boxclass = `sell-upload-items have-item${ul.children('li').length}`;
  $imagesBox.removeAttr().attr({
    'class': boxclass
  });
}
