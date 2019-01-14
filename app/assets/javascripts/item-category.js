$(document).on('turbolinks:load', function() {
  $(document).on('change', '.select-category', function() {
      var template = $(`#child0fCategory${$(this).val()}`);
      $(this).nextAll().remove();
      $(this.parentElement).append(template.html());
  });
});
