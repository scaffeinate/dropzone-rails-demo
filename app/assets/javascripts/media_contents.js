$(function() {
  var mediaDropzone;
  mediaDropzone = new Dropzone("#media-dropzone");
  return mediaDropzone.on("success", function(file, responseText) {
    var imageUrl;
    imageUrl = responseText.file_name.url;
    $("#media-contents").append('<div class="col-lg-4"><div class="thumbnail"><img src="' + imageUrl + '"/></div></div>');
    console.log(imageUrl);
  });
});